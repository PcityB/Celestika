import {
  SkullCardsIcon,
  CardSpreadIcon,
  DrawCardIcon,
  ClosedBookIcon,
  ZodiacStarIcon,
  TreeIcon,
} from "@/components/icons";
import { MenuElementProps } from "@/types/prop.types";
import { ActionKey } from "@/enums/editor.enums";

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
        "On Demand Tarot Readings. Get insights into your past, present, and future.",
      icon: DrawCardIcon,
      disabled: false,
      slug: "/reading",
    },
    {
      title: "Tarot Spreads",
      description:
        "Discover and create custom tarot spreads for any situation or question.",
      icon: CardSpreadIcon,
      disabled: false,
      slug: "/spreads",
    },
    {
      title: "Tarot Explorer",
      description:
        "Explore the mystical world of tarot cards. Learn about the cards and their meanings.",
      icon: SkullCardsIcon,
      disabled: false,
      slug: "/explorer",
    },
    {
      title: "Tarot Journal",
      description:
        "Keep track of your readings and insights. Reflect on your journey.",
      icon: ClosedBookIcon,
      disabled: false,
      slug: "/journal",
    },
    {
      title: "Horoscopes",
      description:
        "Get daily, weekly, and monthly horoscopes. Discover what the stars have in store for you.",
      icon: ZodiacStarIcon,
      disabled: true,
      slug: "/horoscopes",
    },
    {
      title: "Natal Charts",
      description: "Get your birth chart and learn about your astrological",
      icon: TreeIcon,
      disabled: true,
      slug: "/charts",
    },
  ],
};

export const testimonials = [
  {
    name: "John Doe",
    username: "johnnyTarot",
    comment:
      "The tarot reading was surprisingly accurate! Really helped me gain clarity.",
    dateOfComment: "2025-01-01",
    rating: 5,
    avatar_url: "https://i.pravatar.cc/150",
  },
  {
    name: "Michael Chen",
    username: "astroMike",
    comment:
      "Easy to use website with loads of useful astrology info. Learned a lot!",
    dateOfComment: "2025-01-04",
    rating: 5,
    avatar_url: "https://i.pravatar.cc/150",
  },
  {
    name: "Carlos Mendoza",
    username: "c_mendoza",
    comment:
      "Loved the weekly horoscopes and the live tarot sessions. Totally worth it!",
    dateOfComment: "2025-01-06",
    rating: 5,
    avatar_url: "https://i.pravatar.cc/150",
  },
  {
    name: "Samantha Lee",
    username: "samLee88",
    comment:
      "Accurate cosmic insights, but the site layout could be more user-friendly.",
    dateOfComment: "2025-01-07",
    rating: 5,
    avatar_url: "https://i.pravatar.cc/150",
  },
  {
    name: "Olivia Park",
    username: "astrolivi",
    comment: "Totally spot-on reading. Will be back for more guidance!",
    dateOfComment: "2024-12-09",
    rating: 5,
    avatar_url: "https://i.pravatar.cc/150",
  },
  {
    name: "Melanie Brooks",
    username: "tarot_mel",
    comment:
      "Incredibly insightful astrologer. The daily readings have become my ritual!",
    dateOfComment: "2024-12-11",
    rating: 5,
    avatar_url: "https://i.pravatar.cc/150",
  },
];

const sharedSettings: Partial<MenuElementProps> = {
  size: "md",
  variant: "light",
  className: "hover:theme-gradient",
};

export type EditorControlsConfig = {
  controls: {
    menu: {
      file: MenuElementProps;
      edit: MenuElementProps;
      view: MenuElementProps;
    };
  };
};

export const editorConfig: EditorControlsConfig = {
  controls: {
    menu: {
      file: {
        triggerLabel: "Spread",
        ariaLabel: "spread menu items",
        ...sharedSettings,
        menuItems: [
          {
            itemLabel: "Reset",
            actionKey: ActionKey.RESET_SPREAD,
          },
          {
            itemLabel: "Load",
            actionKey: ActionKey.LOAD_SPREAD,
          },
          {
            itemLabel: "Save",
            actionKey: ActionKey.SAVE_SPREAD,
          },
          {
            itemLabel: "Exit",
            actionKey: ActionKey.EXIT,
          },
        ],
      },
      edit: {
        triggerLabel: "Cards",
        ariaLabel: "cards menu items",
        ...sharedSettings,
        menuItems: [
          {
            itemLabel: "Add",
            actionKey: ActionKey.ADD_CARD,
          },
          {
            itemLabel: "Edit",
            actionKey: ActionKey.EDIT_LABELS,
          },
        ],
      },
      view: {
        triggerLabel: "View",
        ariaLabel: "editor view menu",
        ...sharedSettings,
        menuItems: [
          {
            itemLabel: "show guidelines",
            actionKey: ActionKey.TOGGLE_GUIDELINES,
          },
          // {
          //   itemLabel: "show rotation controls",
          //   actionKey: ActionKey.TOGGLE_ROTATION,
          // },
          {
            itemLabel: "show card labels",
            actionKey: ActionKey.TOGGLE_LABELS,
          },
          {
            itemLabel: "show card sequence",
            actionKey: ActionKey.TOGGLE_SEQUENCE,
          },
        ],
      },
    },
  },
};

export const dashboardLinks = [
  {
    name: "profile",
    path: "/private/profile",
    slug: "profile",
    disabled: true,
  },
  {
    name: "settings",
    path: "/private/settings",
    slug: "settings",
    disabled: true,
  },
  {
    name: "readings",
    path: "/private/readings",
    slug: "readings",
    disabled: true,
  },
  {
    name: "spreads",
    path: "/private/spreads",
    slug: "spreads",
    disabled: true,
  },
  {
    name: "journal",
    path: "/private/journal",
    slug: "journal",
    disabled: true,
  },
  { name: "forums", path: "/private/forums", slug: "forums", disabled: true },
];