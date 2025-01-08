"use client";

import { User } from "@nextui-org/user";
import useEmblaCarousel from "embla-carousel-react";
import Autoplay from "embla-carousel-autoplay";
import ReactStars from "react-stars";

const testimonialsItems = [
  {
    name: "John Doe",
    username: "@username1",
    public_profile: "https://www.google.com",
    avatar_url: "https://randomuser.me/api/port",
    comment:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    rating: 5,
  },
  {
    name: "Jane Doe",
    username: "@username2",
    public_profile: "https://www.google.com",
    avatar_url: "https://randomuser.me/api/port",
    comment:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    rating: 5,
  },
  {
    name: "Jack Doe",
    username: "@username3",
    public_profile: "https://www.google.com",
    avatar_url: "https://randomuser.me/api/port",
    comment:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    rating: 5,
  },
  {
    name: "Janet Doe",
    username: "@username4",
    public_profile: "https://www.google.com",
    avatar_url: "https://randomuser.me/api/port",
    comment:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    rating: 5,
  },
];

export default function TestimonialsCarousel() {
  const [emblaRef] = useEmblaCarousel(
    {
      loop: true,
    },
    [Autoplay({ delay: 5000 })],
  );

  return (
    <div ref={emblaRef} className="embla overflow-hidden">
      <div className="embla__container flex">
        {testimonialsItems.map((testimonial, index) => (
          <div
            key={index}
            className="embla__slide flex-[0_0_100%] lg:flex-[0_0_25%]"
          >
            <div className="bg-neutral-800 p-4 md:p-6 lg:mx-4 rounded-lg">
              <User
                avatarProps={{ src: testimonial.avatar_url }}
                description={testimonial.username}
                name={testimonial.name}
              />
              <ReactStars
                color2={"#ffd700"}
                count={5}
                edit={false}
                size={24}
                value={testimonial.rating}
              />
              <p>{testimonial.comment}</p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
