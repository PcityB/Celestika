import { useState, useRef } from "react";
import PlacementCard from "./PlacementCard";

export default function PlacementArea() {
  const [cards] = useState<string[]>(["card1", "card2", "card3"]);
  const boundsRef = useRef<HTMLDivElement>(null);
  return (
    <div
    ref={boundsRef}
    className="bounds relative w-[1000px] h-[700px] border mx-auto mt-10">
      {cards.map((card, index) => (
      <PlacementCard key={index} label={card} labelList={cards} />
    ))}
  </div>
  )
}