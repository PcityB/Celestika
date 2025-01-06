import { useRef } from "react";
import Moveable from "react-moveable";

type CardProps = {
  label: string;
  labelList: string[];
};

const PlacementCard = ({ label, labelList }: CardProps) => {
  const moveableRef = useRef<Moveable>(null);
  const cardRef = useRef<HTMLDivElement>(null);
  const snapGuidelines = { top: true, right: true, bottom: true, left: true, center: true, middle: true };
  return (
    <>
      <Moveable
        ref={moveableRef}
        target={`.${label}`}
        bounds={{ top: 0, left: 0, right: 0, bottom: 0, position: 'css' }}
        onBound={(e) => console.log(e)}
        draggable={true}
        throttleDrag={1}
        onDrag={({ target, transform }) => {
          target.style.transform = transform;
        }}
        snappable={true}
        snapGridHeight={25}
        snapGridWidth={25}
        snapDirections={snapGuidelines}
        isDisplayGridGuidelines={true}
        isDisplayInnerSnapDigit={true}
        elementGuidelines={labelList.map((label) => `.${label}`)}
      />
      <div
        ref={cardRef}
        className={`${label} w-[60px] h-[112px] bg-indigo-400`}
      >
        {label}
      </div>
    </>
  );
};

export default PlacementCard;