"use client";

import React, { Fragment } from "react";
import {
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  NavbarMenuToggle,
  NavbarMenu,
  NavbarMenuItem,
} from "@nextui-org/navbar";
import { Link } from "@nextui-org/link";
import { Button } from "@nextui-org/button";
import clsx from "clsx";

import { siteConfig } from "@/config/site";
import { fontWhisper } from "@/config/fonts";
import { createClient } from "@/utils/supabase/client";

export const Logo = () => {
  return (
    <svg
      height="28"
      version="1.1"
      viewBox="0 0 60 60"
      width="28"
      x="0"
      xmlns="http://www.w3.org/2000/svg"
      y="0"
    >
      <g>
        <path
          d="M40.754 28.921a5.877 5.877 0 0 0 .97.08 6.066 6.066 0 0 0 3.576-1.185 6.214 6.214 0 0 0 2.487-4.067 6.2 6.2 0 0 0-3.414-6.477 1.625 1.625 0 0 0-1.833.291 1.643 1.643 0 0 0-.384 1.837 2.882 2.882 0 0 1-2.591 3.994h-.01a2.86 2.86 0 0 1-1.225-.275 1.608 1.608 0 0 0-1.816.289 1.651 1.651 0 0 0-.385 1.85 6.063 6.063 0 0 0 4.625 3.663Zm-1.2-3.528h.019a4.848 4.848 0 0 0 4.594-3.435 4.956 4.956 0 0 0 .124-2.4 4.16 4.16 0 0 1-.162 6.639 4.025 4.025 0 0 1-5.726-.946 4.935 4.935 0 0 0 1.147.142Z"
          data-original="#000"
          fill="#fff"
          opacity="1"
        />
        <path
          d="M31.967 33.668A3.883 3.883 0 0 1 33.41 35.7a2.41 2.41 0 0 0 1.915 1.66l9.425 1.6a2.447 2.447 0 0 0 .417.036 2.389 2.389 0 0 0 1.939-.967 3.888 3.888 0 0 1 2.035-1.443 2.411 2.411 0 0 0 1.659-1.911L54.266 14.3a2.412 2.412 0 0 0-.932-2.357 3.88 3.88 0 0 1-1.442-2.034 2.411 2.411 0 0 0-1.915-1.659l-9.425-1.6a2.419 2.419 0 0 0-2.352.93 3.869 3.869 0 0 1-2.034 1.442 2.417 2.417 0 0 0-1.666 1.916l-3.464 20.374a2.409 2.409 0 0 0 .931 2.356Zm4.507-22.394a.41.41 0 0 1 .255-.334 5.886 5.886 0 0 0 3.088-2.19.386.386 0 0 1 .313-.137.507.507 0 0 1 .086.007l9.425 1.6a.407.407 0 0 1 .333.255 5.884 5.884 0 0 0 2.191 3.088.409.409 0 0 1 .129.4L48.827 34.34a.406.406 0 0 1-.254.332 5.892 5.892 0 0 0-3.089 2.191.413.413 0 0 1-.4.13l-9.424-1.6a.409.409 0 0 1-.333-.255 5.893 5.893 0 0 0-2.191-3.088.41.41 0 0 1-.13-.4Z"
          data-original="#000"
          fill="#fff"
          opacity="1"
        />
        <path
          d="M3 60h36a3 3 0 0 0 3-3v-1a3 3 0 0 0-3-3h-1v-3a3 3 0 0 0-3-3h-.413a21.158 21.158 0 0 0 3.686-4.069L50.7 44.979a3.058 3.058 0 0 0 .494.041 3 3 0 0 0 2.954-2.513L59.96 7.233a3 3 0 0 0-2.473-3.448L34.765.04a3 3 0 0 0-3.449 2.473l-1.55 9.409A20.994 20.994 0 0 0 7.408 47H7a3 3 0 0 0-3 3v3H3a3 3 0 0 0-3 3v1a3 3 0 0 0 3 3ZM33.29 2.838A1 1 0 0 1 34.274 2a.919.919 0 0 1 .165.014l22.723 3.745a1 1 0 0 1 .824 1.149l-5.813 35.274a1 1 0 0 1-1.15.823L28.3 39.26a1 1 0 0 1-.824-1.149ZM2 31a18.98 18.98 0 0 1 27.426-17.017L25.5 37.786a3 3 0 0 0 2.473 3.448l8.071 1.33A19.029 19.029 0 0 1 31.218 47H10.771A18.86 18.86 0 0 1 2 31Zm4 19a1 1 0 0 1 1-1h28a1 1 0 0 1 1 1v3H6Zm-4 6a1 1 0 0 1 1-1h36a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1Z"
          data-original="#000"
          fill="#fff"
          opacity="1"
        />
        <path
          d="M21 14A17.019 17.019 0 0 0 4 31a1 1 0 0 0 2 0 15.017 15.017 0 0 1 15-15 1 1 0 0 0 0-2Z"
          data-original="#000"
          fill="#fff"
          opacity="1"
        />
      </g>
    </svg>
  );
};

const AuthLinks = ({ isAuthenticated }: { isAuthenticated: boolean }) => {
  return (
    <Fragment>
      {isAuthenticated ? (
        <Fragment>
          <NavbarItem>
            <Button
              as={Link}
              color="primary"
              href="/auth/logout"
              variant="solid"
            >
              Logout
            </Button>
          </NavbarItem>
        </Fragment>
      ) : (
        <Fragment>
          <NavbarItem className="hidden md:flex">
            <Link
              // className={clsx(pathname === "/login" ? "hidden" : "")}
              href="/login"
            >
              Login
            </Link>
          </NavbarItem>
          <NavbarItem>
            <Button
              as={Link}
              // className={clsx(pathname === "/login/signup" ? "hidden" : "")}
              color="primary"
              href="/login/signup"
              variant="flat"
            >
              Sign Up
            </Button>
          </NavbarItem>
        </Fragment>
      )}
    </Fragment>
  );
};

export default function NavigationBar() {
  const [isMenuOpen, setIsMenuOpen] = React.useState(false);
  const supabase = createClient();
  const [currentUser, setCurrentUser] = React.useState<null | Record<
    string,
    any
  >>();

  React.useEffect(() => {
    (async () => {
      const { data: user, error } = await supabase.auth.getUser();

      if (error) {
        // throw new Error(`error: ${error}`);
      }
      if (user) {
        setCurrentUser(user);
      }
      if (!user) {
        setCurrentUser(null);
      }
    })();
  }, [document.location.pathname]);

  return (
    <Navbar onMenuOpenChange={setIsMenuOpen}>
      <NavbarContent>
        <NavbarMenuToggle
          aria-label={isMenuOpen ? "Close menu" : "Open menu"}
          className="sm:hidden"
        />
        <NavbarBrand>
          <Logo />
          <p className={clsx(fontWhisper.className, "text-3xl pl-2")}>
            Mystical Realms
          </p>
        </NavbarBrand>
      </NavbarContent>

      <NavbarContent className="hidden sm:flex gap-4" justify="center">
        {siteConfig.navItems.map(
          (item: { label: string; href: string }, index) => {
            return (
              <NavbarItem key={index}>
                <Link color="foreground" href={item.href}>
                  {item.label}
                </Link>
              </NavbarItem>
            );
          }
        )}
      </NavbarContent>
      <NavbarContent justify="end">
        <AuthLinks
          isAuthenticated={
            currentUser?.user !== null && currentUser?.user !== undefined
          }
        />
      </NavbarContent>
      <NavbarMenu>
        {siteConfig.navMenuItems.map((item, index) => (
          <NavbarMenuItem key={`${item}-${index}`}>
            <Link className="w-full" href="#" size="lg">
              {item}
            </Link>
          </NavbarMenuItem>
        ))}
      </NavbarMenu>
    </Navbar>
  );
}
