"use client";

import { Fragment, useRef, useEffect, useState, SyntheticEvent } from "react";
import { Image, Badge } from "@heroui/react";
import Moveable from "react-moveable";
import clsx from "clsx";

import {
  getCardImgPath,
  parseTranslateValue,
  extractRotateValue,
} from "@/utils";
import { LocalStorageKeys } from "@/enums/storage.enums";
import { type SpreadEditorPlacementCard } from "@/types/spread-editor.types";

import "@/styles/moveable-override.css";

enum Keys {
  ArrowUp = "ArrowUp",
  ArrowRight = "ArrowRight",
  ArrowDown = "ArrowDown",
  ArrowLeft = "ArrowLeft",
}

interface Props {
  cards: SpreadEditorPlacementCard[];
  handlePositionChange: (obj: {
    target: HTMLElement | SVGElement;
    transform: string;
  }) => void;
  handleSelection: (id: string | null, elem: HTMLElement) => void;
  selectedCard: string | null;
  uiVisibility: {
    rotation: boolean;
    guidelines: boolean;
    sequence: boolean;
    labels: boolean;
  };
}

export default function PlacementAreaV2({
  cards,
  handlePositionChange,
  uiVisibility,
  selectedCard,
  handleSelection,
}: Props) {
  const boundRef = useRef<HTMLDivElement>(null);
  const [targetList, setTargetList] = useState<string[]>([]);

  useEffect(() => {
    if (cards.length > 0) {
      const list = cards.map((card) => `.${card.id}`);

      setTargetList(list);
    }
  }, [cards]);

  const positionTransformTranslate = ({
    position,
    x = 0,
    y = 0,
  }: {
    position: string;
    x?: number;
    y?: number;
  }) => {
    const { x: currentX, y: currentY } = parseTranslateValue(position);
    const rotation = extractRotateValue(position);

    return `translate(${currentX + x}px, ${currentY + y}px) ${rotation ? `rotate(${rotation}deg)` : ""}`;
  };

  const keyEventHandler = (event: SyntheticEvent<HTMLElement>) => {
    const target = event.target as HTMLElement;
    const keyEvent = event.nativeEvent as KeyboardEvent;
    const position = target.style.transform;
    let transform: string;

    switch (keyEvent.key) {
      case Keys.ArrowUp:
        transform = positionTransformTranslate({ position, y: -1 });
        handlePositionChange({ target, transform });
        break;
      case Keys.ArrowRight:
        transform = positionTransformTranslate({ position, x: 1 });
        handlePositionChange({ target, transform });
        break;
      case Keys.ArrowDown:
        transform = positionTransformTranslate({ position, y: 1 });
        handlePositionChange({ target, transform });
        break;
      case Keys.ArrowLeft:
        transform = positionTransformTranslate({ position, x: -1 });
        handlePositionChange({ target, transform });
        break;
      default:
        break;
    }
  };
  const clickAwayCardSelector = (event: SyntheticEvent<HTMLElement>) => {
    const target = event.target as HTMLElement;
    const targetInfo = target.dataset.info;

    if (targetInfo?.search("placement-area") !== -1) {
      handleSelection(null, target);
    }
  };

  const snapGuidelines = {
    top: true,
    right: true,
    bottom: true,
    left: true,
    center: true,
    middle: true,
  };

  return (
    <div>
      <div
        ref={boundRef}
        aria-checked={!!selectedCard}
        aria-label="Placement Area"
        className={clsx(
          "relative",
          "w-[400px] h-[400px] mx-auto",
          "border-2 border-primary bg-neutral-700"
        )}
        data-info="placement-area"
        role="switch"
        tabIndex={0}
        onClick={clickAwayCardSelector}
        onKeyUp={clickAwayCardSelector}
      >
        {cards.length > 0 &&
          cards.map((card) => (
            <Fragment key={card.id}>
              <div
                aria-checked={selectedCard === card.id}
                className={clsx(
                  "override",
                  // selectedCard === card.id ? "border-2 border-secondary" : "",
                  "focus:outline-secondary",
                  `card ${card.id} absolute`,
                  "w-[40px] bg-primary",
                  "cursor-move"
                )}
                data-info="placement-card"
                data-target={card.id}
                id={card.id}
                role="switch"
                style={{
                  transform: `translate(${card.position}) rotate(${card.rotate})`,
                }}
                tabIndex={0}
                onBlur={(e) => handleSelection(null, e.target as HTMLElement)}
                onDoubleClick={(e) => {
                  e.stopPropagation();
                  const target = e.target as HTMLElement;
                  const parent = target.parentElement as HTMLElement;
                  const grandParent = parent?.parentElement as HTMLElement;
                  const greatGrandParent = grandParent?.parentElement as HTMLElement;

                  if (greatGrandParent.id === document.activeElement?.id) {
                    const transform = greatGrandParent.style.transform;
                    const { x, y } = parseTranslateValue(transform);
                    const rotation = extractRotateValue(transform);
                    const newRotation = rotation < 90 ? 90 : 0;

                    greatGrandParent.style.transform = `translate(${x}px, ${y}px) rotate(${newRotation}deg)`;
                  } else {
                    greatGrandParent.focus();
                  }
                }}
                onClick={(e) =>
                  handleSelection(card.id, e.target as HTMLElement)
                }
                onFocus={(e) => {
                  console.log("focus", e.target, e.currentTarget)
                  handleSelection(card.id, e.target as HTMLElement)
                }}
                onKeyDown={keyEventHandler}
              >
                <Badge content={card.seq} isInvisible={!uiVisibility.sequence}>
                  <Image
                    alt="Card Back"
                    className={clsx("w-full h-full")}
                    data-info="placement-card-img"
                    data-target={card.id}
                    id={card.id}
                    radius="none"
                    src={getCardImgPath("card_back")}
                  />
                </Badge>
              </div>
              <Moveable
                bounds={{
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  position: "css",
                }}
                draggable={true}
                elementGuidelines={[...targetList]}
                hideDefaultLines={true}
                individualGroupable={true}
                isDisplayGridGuidelines={uiVisibility.guidelines}
                isDisplayInnerSnapDigit={true}
                rotatable={false}
                snapDirections={snapGuidelines}
                snapGridHeight={10}
                snapGridWidth={10}
                // snapRotataionThreshold={30}
                // snapRotationDegrees={[0, 90, 180, 270]}
                snappable={true}
                target={`.${card.id}`}
                throttleDrag={1}
                onDrag={handlePositionChange}
                onRender={(e) => {
                  if (e.cssText !== "") {
                    const positionData = e.cssText;
                    const { x, y } = parseTranslateValue(positionData);
                    const rotation = extractRotateValue(positionData);
                    const update = cards.map((c) =>
                      c.id === card.id
                        ? {
                            ...c,
                            position: `${x}px, ${y}px`,
                            rotate: `${rotation}deg`,
                          }
                        : c
                    );

                    localStorage.setItem(
                      LocalStorageKeys.spreadPositionsAutoSave,
                      JSON.stringify(update)
                    );
                  }
                }}
                onRotate={handlePositionChange}
              />
            </Fragment>
          ))}
      </div>
    </div>
  );
}
