import { ActionKey } from "@/enums/editor.enums";

export type SpreadEditorPlacementCard = {
  id: string;
  position: string;
  label: string;
  rotate: string;
  seq: number;
};

export type EditorMenuItem = {
  itemLabel: string;
  actionKey: ActionKey;
  className?: string;
  color?: "primary" | "secondary" | "success" | "warning" | "danger";
  startIcon?: React.ReactNode;
  endIcon?: React.ReactNode;
};

export type UiVisibility = {
  guidelines: boolean;
  labels: boolean;
  rotation: boolean;
  sequence: boolean;
};
