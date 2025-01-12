import { Divider } from "@nextui-org/divider";

import MenuElement from "./MenuElement";

import { editorConfig } from "@/config/site";
import { ActionKey } from "@/enums/editor.enums";
import { getToggleTarget } from "@/utils";
import { UiVisibility } from "@/types/spread-editor.types";

interface Props {
  addCard: () => void;
  editLabels: () => void;
  resetSpread: () => void;
  toggleUi: (key: string) => void;
  uiVisibility: UiVisibility;
}

export default function EditorMenu({
  addCard,
  editLabels,
  resetSpread,
  toggleUi,
  uiVisibility
}: Props) {
  const { file, edit, view } = editorConfig.controls.menu;

  const actionTrigger = (actionKey: ActionKey) => {
    const uiTarget = getToggleTarget(actionKey);

    switch (actionKey) {
      case ActionKey.ADD_CARD:
        addCard();
        break;
      case ActionKey.EDIT_LABELS:
        editLabels();
        break;
      case ActionKey.RESET_SPREAD:
        resetSpread();
        break;
      case ActionKey.TOGGLE_GUIDELINES:
      case ActionKey.TOGGLE_LABELS:
      case ActionKey.TOGGLE_ROTATION:
      case ActionKey.TOGGLE_SEQUENCE:

        toggleUi(uiTarget);
        break;
      default:
        break;
    }
  }

  return (
    <div>
      <p>title</p>
      <div className="theme-gradient">
        <Divider className="my-2" />
        <div className="flex items-center space-x-2 bg-neutral-500 py-2">
          <MenuElement {...file} actionTrigger={actionTrigger} />
          <Divider orientation="vertical" />
          <MenuElement {...edit} actionTrigger={actionTrigger} />
          <Divider orientation="vertical" />
          <MenuElement
            {...view}
            actionTrigger={actionTrigger}
            selectionMode="multiple"
            uiVisibility={uiVisibility}
          />
          <Divider orientation="vertical" />
        </div>
      </div>
    </div>
  );
}
