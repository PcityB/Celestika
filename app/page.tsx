"use client";

import React, { useRef } from "react";

import HomeCtaHero from "@/components/HomeCtaHero";
import ServicesSections from "@/components/ServicesSections";
import TestimonialsSection from "@/components/TestimonialsSection";

export default function Home() {
  const serviceRef = useRef<HTMLElement>(null);

  return (
    <React.Fragment>
      <HomeCtaHero serviceRef={serviceRef} />
      <ServicesSections serviceRef={serviceRef} />
      <TestimonialsSection />
    </React.Fragment>
  );
}
