import "@/styles/globals.css";
import { Metadata, Viewport } from "next";
import clsx from "clsx";
import { Link } from "@nextui-org/link";

import { Providers } from "./providers";

import NavigationBar from "@/components/navigationbar";
import { siteConfig } from "@/config/site";
import { fontGothic, fontWhisper } from "@/config/fonts";

export const metadata: Metadata = {
  title: {
    default: siteConfig.name,
    template: `%s - ${siteConfig.name}`,
  },
  description: siteConfig.description,
  icons: {
    icon: "/favicon.ico",
  },
};

export const viewport: Viewport = {
  themeColor: [
    { media: "(prefers-color-scheme: light)", color: "white" },
    { media: "(prefers-color-scheme: dark)", color: "black" },
  ],
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html suppressHydrationWarning lang="en">
      <head />
      <body className={clsx("bg-background antialiased", fontGothic.className)}>
        <Providers themeProps={{ attribute: "class", defaultTheme: "dark" }}>
          <NavigationBar />
          <main className="container mx-auto max-w-7xl px-2 md:px-6 flex-grow">
            {children}
          </main>
          <footer className="bg-neutral-800 border-t border-neutral-700">
            <p className="text-center py-4">
              <span className={clsx(fontWhisper.className, "text-2xl")}>Mystical Realms</span> &copy; {new Date().getFullYear()}
            </p>
            <div className="text-center pb-4 space-x-4">
              <Link href="#">Privacy Policy</Link>
              <Link href="#">Terms of Service</Link>
            </div>
          </footer>
        </Providers>
      </body>
    </html>
  );
}
