import {
  SkullCardsIcon,
  CardSpreadIcon,
  DrawCardIcon,
  ClosedBookIcon,
  ZodiacStarIcon,
  TreeIcon,
} from "@/components/icons";
export type SiteConfig = typeof siteConfig;

export const siteConfig = {
  name: "Mystical Realms",
  description: "Explore the mystical realms with in you.",
  navItems: [],
  navMenuItems: [],
  links: {},
  services: [
    {
      title: "Tarot Reading",
      description:
        "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      icon: DrawCardIcon,
      disabled: false,
    },
    {
      title: "Tarot Spreads",
      description:
        "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      icon: CardSpreadIcon,
      disabled: false,
    },
    {
      title: "Tarot Explorer",
      description:
        "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      icon: SkullCardsIcon,
      disabled: false,
    },
    {
      title: "Tarot Journal",
      description:
        "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      icon: ClosedBookIcon,
      disabled: false,
    },
    {
      title: "Horoscopes",
      description:
        "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      icon: ZodiacStarIcon,
      disabled: true,
    },
    {
      title: "Natal Charts",
      description:
        "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
      icon: TreeIcon,
      disabled: true,
    },
  ],
};
