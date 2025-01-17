import { Button } from "@nextui-org/react";

import TestimonialsCarousel from "./testimonials";

export default function TestimonialsSection() {
  return (
    <section className="py-16 min-h-[60dvh] max-w-dvh" id="testimonials">
      <h3 className="text-2xl text-center mt-4 mb-14">
        What our users are saying...
      </h3>
      <TestimonialsCarousel />
      <div className="mt-24 text-center">
        <h3 className="text-3xl mb-10">
          Ready to explore the Mystical Realms?
        </h3>
        <Button className="theme-gradient" radius="full" size="lg">
          Start your journey
        </Button>
      </div>
    </section>
  );
}
