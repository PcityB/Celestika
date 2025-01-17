"use client";
import { Suspense } from "react";
import clsx from "clsx";
import { fontWhisper } from "@/config/fonts"
import { Image } from "@nextui-org/react";

// type Card = Database["public"]["Tables"]["cards"]["Row"];

type Props = { cardImg: string; title: string };

export default function CardOfTheDay({ cardImg, title }: Props) {
  return (
    <div className="w-[175px] lg:w-[300px] text-center">
        <h3 className={clsx(fontWhisper.className, "text-2xl lg:text-5xl pb-2")}>Card of the Day</h3>
        <Image alt={title} className="border p-2 m-2" src={cardImg} />

    </div>
  );
}
