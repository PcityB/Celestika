"use client";
import { Button } from "@heroui/react";

import { dashboardLinks } from "@/config/site";

export default function DashboardSideNav() {
  return (
    <aside className="basis-1/4 shrink">
      <ul className="space-y-4">
        {dashboardLinks.map((link) => (
          <li key={link.slug}>
            <Button
              className="w-full text-center p-2 hover:bg-primary text-xl"
              disabled={link.disabled}
              href={link.path}
              variant="bordered"
            >
              {link.name}
            </Button>
          </li>
        ))}
      </ul>
    </aside>
  );
}
