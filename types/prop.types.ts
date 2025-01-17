import type { EditorMenuItem, UiVisibility } from "./spread-editor.types";

import { ActionKey } from "@/enums/editor.enums";

export interface MenuElementProps {
  triggerLabel: string;
  menuItems: EditorMenuItem[];
  actionTrigger?: (key: ActionKey) => void | ActionKey;
  ariaLabel: string;
  size?: "sm" | "md" | "lg";
  variant?: "solid" | "bordered" | "flat" | "light" | "faded" | "shadow";
  color?: "primary" | "secondary" | "success" | "warning" | "danger";
  className?: string;
  selectionMode?: "single" | "multiple";
  selectedKeys?: string[];
  uiVisibility?: UiVisibility;
}
