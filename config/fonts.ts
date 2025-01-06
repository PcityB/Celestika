import { Whisper, Didact_Gothic } from "next/font/google";

export const fontWhisper = Whisper({
  weight: ["400"],
  subsets: ["latin"],
  variable: "--font-whisper",
});

export const fontGothic = Didact_Gothic({
  weight: ["400"],
  subsets: ["latin"],
  variable: "--font-didact-gothic",
});
