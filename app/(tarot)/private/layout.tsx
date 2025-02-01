"use client";

import React from 'react'; // Ensure React is imported
import { Button } from "@nextui-org/react";

type Props = {
  children: React.ReactNode;
};

const dashboardLinks = [
  {
    name: "profile",
    path: "/private/profile",
    slug: "profile",
    disabled: false,
  },
  {
    name: "settings",
    path: "/private/settings",
    slug: "settings",
    disabled: false,
  },
  {
    name: "readings",
    path: "/private/readings",
    slug: "readings",
    disabled: false,
  },
  {
    name: "spreads",
    path: "/private/spreads",
    slug: "spreads",
    disabled: false,
  },
  {
    name: "journal",
    path: "/private/journal",
    slug: "journal",
    disabled: false,
  },
  { name: "forums", path: "/private/forums", slug: "forums", disabled: false },
];

export default function Layout({ children }: Props) {
  return (
    <div className="flex flex-col pt-14"> {/* Changed to flex-col for vertical layout */}
      <aside className="basis-1/4 shrink">
        <ul className="flex space-x-4">
          {dashboardLinks.map((link) => (
            <li key={link.slug}>
              <Button
                className="w-full text-center p-2 hover:bg-primary text-xl"
                href={link.path}
                variant="bordered"
                disabled={link.disabled}
              >
                {link.name}
              </Button>
            </li>
          ))}
        </ul>
      </aside>
      <div className="flex-grow"> {/* Added wrapper for children */}
        {children}
      </div>
    </div>
  );
}
