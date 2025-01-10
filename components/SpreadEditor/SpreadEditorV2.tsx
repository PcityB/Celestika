"use client";

import { useEffect, useState, useRef, Fragment } from "react";
import { Button } from "@nextui-org/button";
import Moveable from "react-moveable";
import clsx from "clsx";

import { parseTranslateValue, extractRotateValue } from "@/utils";

import "@/styles/moveable-override.css";

export default function SpreadEditorV2() {
  const boundRef = useRef<HTMLDivElement>(null);
  const [cards, setCards] = useState<
    {
      id: string;
      position: string;
      label: string;
      rotate: string;
      seq: number;
    }[]
  >([]);
  const [_targetList, setTargetList] = useState<string[]>([]);

  //On Mount
  useEffect(() => {
    const savedData = localStorage.getItem("spread_auto_save");

    if (savedData) {
      setCards(JSON.parse(savedData));
    }
  }, []);

  // On Update
  useEffect(() => {
    const list = cards.map((card) => card.id);

    setTargetList(list);
  }, [cards]);

  const snapGuidelines = {
    top: true,
    right: true,
    bottom: true,
    left: true,
    center: true,
    middle: true,
  };

  const addCard = () => {
    const id = cards.length + 1;

    setCards((prev) => [
      ...prev,
      {
        id: `card-${id}`,
        position: "50%, 50%",
        rotate: "0deg",
        label: `#${id}`,
        seq: id,
      },
    ]);
  };

  const handlePositionChange = ({
    target,
    transform,
  }: {
    target: HTMLElement | SVGElement;
    transform: string;
  }) => {
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

  return (
    <div>
      <div>
        <div>
          <div className="container">
            <div
              ref={boundRef}
              className={clsx(
                "relative",
                "w-[400px] h-[400px] mx-auto mt-4",
                "border-2 border-primary bg-neutral-900"
              )}
            >
              {cards.length > 0 &&
                cards.map((card) => (
                  <Fragment key={card.id}>
                    <div
                      className={clsx(
                        `card ${card.id} override`,
                        "w-[40px] h-[70px]",
                        "bg-primary absolute cursor-move",
                      )}
                      id={card.id}
                      style={{
                        transform: `translate(${card.position}) rotate(${card.rotate})`,
                      }}
                    >
                      {card.label}
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
                      elementGuidelines={[".card"]}
                      hideDefaultLines={true}
                      individualGroupable={true}
                      isDisplayGridGuidelines={true}
                      isDisplayInnerSnapDigit={true}
                      rotatable={true}
                      snapDirections={snapGuidelines}
                      snapGridHeight={10}
                      snapGridWidth={10}
                      snapRotataionThreshold={30}
                      snapRotationDegrees={[0, 90, 180, 270]}
                      snappable={true}
                      target={`.${card.id}`}
                      throttleDrag={1}
                      onDrag={handlePositionChange}
                      onRender={(e) => {
                        if (e.cssText !== "") {
                          const positionData = e.cssText;
                          const { x, y } = parseTranslateValue(positionData); // localStorage.setItem("spread_auto_save", )
                          const rotation = extractRotateValue(positionData);
                          const update = cards.map((c) =>
                            c.id === card.id
                              ? {
                                  ...c,
                                  position: `${x}px, ${y}px`,
                                  rotate: `${rotation}deg`,
                                }
                              : c,
                          );

                          localStorage.setItem(
                            "spread_auto_save",
                            JSON.stringify(update),
                          );
                        }
                      }}
                      onRotate={handlePositionChange}
                    />
                  </Fragment>
                ))}
            </div>
          </div>
        </div>
        <Button onPress={addCard}>Add</Button>
        <Button>Save</Button>
        <Button>Load</Button>
        <Button>Reset</Button>
      </div>
    </div>
  );
}
