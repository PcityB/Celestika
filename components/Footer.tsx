"use client";

import clsx from "clsx";
import { Link } from "@nextui-org/link";
import { usePathname } from "next/navigation";

import { fontWhisper } from "@/config/fonts";

export default function Footer() {
  const pathname = usePathname();

  const hideFooter = (path: string) => {
    const regex = /^(\/|\/login|\/login\/signup)$/;

    return regex.test(path);
  };

  return (
    <footer
      className={clsx(
        "bg-neutral-800 border-t border-neutral-500",
        hideFooter(pathname) ? "hidden" : "",
      )}
    >
      <p className="text-center py-4">
        <span className={clsx(fontWhisper.className, "text-2xl")}>
          Mystical Realms
        </span>{" "}
        &copy; {new Date().getFullYear()}
      </p>
      <div className="text-center pb-8 space-x-6">
        <Link href="/privacy">Privacy Policy</Link>
        <Link href="/terms">Terms of Service</Link>
      </div>
    </footer>
  );
}
