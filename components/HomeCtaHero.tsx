import { type RefObject } from "react";
import { Button } from "@nextui-org/react";

export default function HomeCtaHero({
  serviceRef,
}: {
  serviceRef: RefObject<HTMLElement>;
}) {
  const handleGetStarted = () => {
    serviceRef.current?.scrollIntoView({ behavior: "smooth" });
  };

  return (
    <section className="flex flex-col h-dvh items-center justify-center">
      <div className="text-center mb-6">
        <h1 className="font-bold text-3xl md:text-5xl">Explore Your Destiny</h1>
        <h2 className="font-bold md:text-2xl">
          Discover the mystical realm in you.
        </h2>
      </div>
      <Button
        className="theme-gradient"
        radius="full"
        size="md"
        onPress={handleGetStarted}
      >
        Get Started
      </Button>
    </section>
  );
}
