import type { NumRange } from "./utility.types";

import { Arcana, Suits, DecksEnum } from "@/enums/tarot.enums";

export type CardImgData = typeof import("@/constants/tarot").tarotCardImgs;

type MajorRank = NumRange<0, 21>;
type MinorRank = NumRange<1, 14>;

export type TarotCardId =
  | `${Arcana.major}${MajorRank}`
  | `${Suits}${MinorRank}`;

export type CardImgFileName = `${TarotCardId}.webp`;

export type CardImgPath =
  `${typeof import("@/constants/tarot").tarotCardImgs.ROOT_PATH}/${DecksEnum}/
  ${CardImgFileName | typeof import("@/constants/tarot").tarotCardImgs.CARD_BACK}`;
