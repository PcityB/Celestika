"use client";
import React, { type RefObject } from "react";
import { useInView } from "framer-motion";

import ServiceCards from "./service-cards";

export default function ServicesSections({
  serviceRef,
}: {
  serviceRef: RefObject<HTMLElement>;
}) {
  const isInServiceView = useInView(serviceRef);

  return (
    <section
      ref={serviceRef}
      className="flex flex-col items-center min-h-[60dvh] pt-16"
      id="services"
    >
      <h3 className="text-3xl md:text-5xl font-bold">Our Services</h3>
      <ServiceCards inView={isInServiceView} />
    </section>
  );
}
