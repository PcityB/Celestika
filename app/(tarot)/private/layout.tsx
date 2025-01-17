"use client";

import { Button } from "@nextui-org/react";

type Props = {
  children: React.ReactNode;
};

const dashboardLinks = [
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

export default function Layout({ children }: Props) {
  return (
    <div className="flex pt-14">
      <aside className="basis-1/4 shrink">
        <ul className="space-y-4">
          {dashboardLinks.map((link) => (
            <li key={link.slug}>
              <Button
                className="w-full text-center p-2 hover:bg-primary text-xl"
                href={link.path}
                variant="bordered"

              >
                {link.name}
              </Button>
            </li>
          ))}
        </ul>
      </aside>
      {children}
    </div>
  );
}
