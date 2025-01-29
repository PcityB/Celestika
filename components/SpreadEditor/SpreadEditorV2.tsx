"use client";

import type {
  SpreadEditorPlacementCard,
  UiVisibility,
} from "@/types/spread-editor.types";

import { useEffect, useState, useRef, SyntheticEvent, RefObject } from "react";

import PlacementAreaV2 from "./PlacementAreaV2";
import EditorMenu from "./EditorMenu";

import { parseTranslateValue, extractRotateValue } from "@/utils";
import { LocalStorageKeys } from "@/enums/storage.enums";
import ModalComponent from "../modal";

type Cards = SpreadEditorPlacementCard[];

export default function SpreadEditorV2() {
  const [spreadTitle, setSpreadTitle] = useState<string>("");
  const [cards, setCards] = useState<Cards>([]);
  const [uiVisibility, setUiVisibility] = useState<UiVisibility>({
    guidelines: false,
    labels: false,
    rotation: false,
    sequence: false,
  });
  const [selectedCard, setSelectedCard] = useState<string | null>(null);
  const resetRef = useRef<HTMLButtonElement>(null);

  //On Mount
  useEffect(() => {
    const savedData = localStorage.getItem(
      LocalStorageKeys.spreadPositionsAutoSave,
    );

    if (savedData) {
      setCards(JSON.parse(savedData));
    }
  }, [spreadTitle]);

  useEffect(() => {
    const savedTitle = localStorage.getItem(
      LocalStorageKeys.spreadDataAutoSave,
    );

    if (savedTitle) {
      setSpreadTitle(savedTitle);
    }
  }, []);

  const handleCardSelection = (id: string | null, target: HTMLElement) => {
    setSelectedCard(id);
    if (target instanceof HTMLElement) {
      target.focus();
    }
  };
  const addCard = () => {
    const id = cards.length + 1;
    const offset = 5 * cards.length;

    setSelectedCard(`card-${id}`);
    setCards((prev) => [
      ...prev,
      {
        id: `card-${id}`,
        position: `${offset}px, ${offset}px`,
        rotate: "0deg",
        label: `#${id}`,
        seq: id,
      },
    ]);
  };

  const toggleUi = (key: string) => {
    setUiVisibility((prev) => ({
      ...prev,
      [key]: !prev[key as keyof UiVisibility],
    }));
  };

  const handlePositionChange = ({
    target,
    transform,
  }: {
    target: HTMLElement | SVGElement;
    transform: string;
  }) => {
    console.log('handlePositionChage', target, transform)
    target.style.transform = transform;
    setCards((prev) => {
      if (prev.filter((card) => card.id === target.id).length > 0) {
        return prev.map((c) => {
          if (c.id === target.id) {
            const { x, y } = parseTranslateValue(transform);
            const rotate = extractRotateValue(transform);

            return {
              ...c,
              position: `${x}px, ${y}px`,
              rotate: `${rotate}deg`,
            };
          } else {
            return c;
          }
        });
      } else {
        return prev;
      }
    });
  };

  const editLabels = (
    e: SyntheticEvent<HTMLButtonElement>,
    ref: RefObject<HTMLFormElement>,
  ) => {
    if (ref.current) {
      const formElems = ref.current.elements;
      const update: { id: string; label: string }[] = [];
      let title: string | undefined = undefined;

      for (let i = 0; i < formElems.length; i++) {
        const input = formElems[i] as HTMLInputElement;

        if (input.name === "title") {
          title = input.value;
        } else {
          update.push({ id: input.name, label: input.value });
        }
      }
      if (title) {
        setSpreadTitle(title);
        localStorage.setItem(LocalStorageKeys.spreadDataAutoSave, title);
      }
      const updatedCopy = [...cards].map((c) => {
        const match = update.find((u) => u.id === c.id);

        if (match) {
          return { ...c, label: match.label };
        } else {
          return c;
        }
      });

      localStorage.setItem(
        LocalStorageKeys.spreadPositionsAutoSave,
        JSON.stringify(updatedCopy),
      );
      setCards(updatedCopy);
    }
  };

  const resetCards = async () => {
    const userConfirm = await new Promise<boolean>((resolve) => {
      if (resetRef.current) {
        resetRef.current.onclick = () => {
          resolve(true);
        };
        resetRef.current.click();
      }
    });

    // await user input from #file ModalComponent
    localStorage.removeItem(LocalStorageKeys.spreadPositionsAutoSave);
    setCards([]);
  };

  return (
    <div id="spread-editor-root">
      <div>
        <ModalComponent
          headerText="Confirmation"
          hidden={true}
          refObj={resetRef}
          triggerBtnText="reset"
        >
          <p>Are you sure you want to reset?</p>
        </ModalComponent>
        <div className="w-[400px] mx-auto">
          <div className="container border my-2">
            <EditorMenu
              addCard={addCard}
              cardsLength={cards.length}
              editLabels={editLabels}
              resetSpread={resetCards}
              toggleUi={toggleUi}
              uiVisibility={uiVisibility}
            />
            <PlacementAreaV2
              cards={cards}
              handlePositionChange={handlePositionChange}
              handleSelection={handleCardSelection}
              selectedCard={selectedCard}
              uiVisibility={uiVisibility}
            />
          </div>
        </div>
      </div>
    </div>
  );
}
