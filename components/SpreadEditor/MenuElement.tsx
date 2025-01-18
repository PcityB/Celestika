import React, { Key, useEffect } from "react";
import {
  Dropdown,
  DropdownTrigger,
  DropdownMenu,
  DropdownItem,
  Button,
} from "@heroui/react";
import { SharedSelection } from "@heroui/system";
import { Icon } from "@iconify/react";
import clsx from "clsx";

import { MenuElementProps } from "@/types/prop.types";
import { ActionKey } from "@/enums/editor.enums";

export default function MenuElement({
  triggerLabel,
  ariaLabel,
  menuItems,
  actionTrigger,
  variant,
  size,
  color,
  className,
  selectionMode,
  uiVisibility,
}: MenuElementProps) {
  const [selectedKeys, setSelectedKeys] = React.useState(new Set([""]));

  useEffect(() => {
    if (uiVisibility) {
      const { guidelines, labels, rotation, sequence } = uiVisibility;

      setSelectedKeys(
        new Set([
          guidelines ? ActionKey.TOGGLE_GUIDELINES : "",
          labels ? ActionKey.TOGGLE_LABELS : "",
          rotation ? ActionKey.TOGGLE_ROTATION : "",
          sequence ? ActionKey.TOGGLE_SEQUENCE : "",
        ]),
      );
    }
  }, [uiVisibility]);

  const handleSelectionChange = (newSelection: SharedSelection) => {
    if (typeof newSelection === "object") {
      const stringKeys = Array.from(newSelection).map(String);

      setSelectedKeys(new Set<string>(stringKeys));
    }
    // handle other cases like "all"
  };
  // const selectedValue = React.useMemo(
  //   () => Array.from(selectedKeys).join(", ").replace(/_/g, ""),
  //   [selectedKeys],
  // );
  const selectedValueArray = React.useMemo(
    () => Array.from(selectedKeys),
    [selectedKeys],
  );

  return (
    <Dropdown>
      <DropdownTrigger>
        <Button
          className={clsx("blur:border-primary", className)}
          color={color}
          size={size}
          tabIndex={0}
          variant={variant}
        >
          {triggerLabel}
        </Button>
      </DropdownTrigger>
      <DropdownMenu
        aria-label={ariaLabel}
        selectedKeys={selectedKeys}
        selectionMode={selectionMode}
        variant={variant}
        onAction={(key: Key) => {
          if (actionTrigger) {
            actionTrigger(key as ActionKey);
          }
        }}
        onSelectionChange={handleSelectionChange}
      >
        {menuItems.map((item, index) => (
          <DropdownItem
            key={item.actionKey}
            className={item.className}
            color={item.color}
            endContent={
              item.endIcon ? (
                item.endIcon
              ) : selectedValueArray.includes(
                  item.actionKey as unknown as string,
                ) ? (
                <Icon icon="mdi:check-bold" />
              ) : (
                item.endIcon
              )
            }
            startContent={item.startIcon}
            tabIndex={index + 1}
          >
            {item.itemLabel}
          </DropdownItem>
        ))}
      </DropdownMenu>
    </Dropdown>
  );
}
