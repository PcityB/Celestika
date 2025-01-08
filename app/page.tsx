"use client";

import React, { useRef } from "react";
import clsx from "clsx";
import { Button } from "@nextui-org/button";
import { useInView } from "framer-motion";

import ServiceCards from "@/components/service-cards";
import TestimonialsCarousel from "@/components/testimonials";
import { fontWhisper } from "@/config/fonts";

export default function Home() {

  const serviceRef = useRef(null);
  const isInServiceView = useInView(serviceRef);

  const handleGetStarted = () => {
    const services = document.getElementById("services");

    if (services) {
      services.scrollIntoView({ behavior: "smooth" });
    }
  };

  return (
    <React.Fragment>
      <section className="flex flex-col h-dvh items-center justify-center">
        <div className="text-center mb-6">
          <h1 className={clsx("font-bold text-3xl md:text-5xl")}>
            Explore Your Destiny
          </h1>
          <h2 className="font-bold md:text-2xl">
            Discover the mystical realm in you.
          </h2>
        </div>
        <Button
          className="bg-gradient-to-br from-purple-500 to-blue-500"
          radius="full"
          size="md"
          onPress={handleGetStarted}
        >
          Get Started
        </Button>
      </section>
      <section
        className="flex flex-col items-center min-h-[60dvh] pt-16"
        id="services"
      >
        <h3 ref={serviceRef} className="text-3xl md:text-5xl font-bold">Our Services</h3>
        <ServiceCards inView={isInServiceView} />
      </section>
      <section className="flex flex-col items-center py-16 min-h-[60dvh]" id="testimonials">
        <h3 className="text-2xl mt-4 mb-14">What our users are saying...</h3>
        <TestimonialsCarousel />
        <div className="mt-24 text-center">
          <h3 className="text-3xl mb-10">Ready to explore the Mystical Realms?</h3>
          <Button radius="full" size="lg" className="bg-gradient-to-br from-purple-500 to-blue-500">
            Start your journey
          </Button>
        </div>
      </section>
      
    </React.Fragment>
  );
}
