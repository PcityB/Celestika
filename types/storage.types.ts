import { LocalStorageKeys } from "@/enums/storage.enums";

export type DeckKeyType = "inspired" | "rws" | "glass" | "neon";

export type LocalStorageType = {
  [LocalStorageKeys.selectedDeck]: DeckKeyType;
  [LocalStorageKeys.spreadDataAutoSave]: string;
  [LocalStorageKeys.spreadPositionsAutoSave]: string;
};

export type CardPositionSaveData = {
  id: string;
  position: string;
  rotate: string;
  label: string;
  seq: number;
};
