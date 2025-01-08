import { useState, useEffect, RefObject } from "react";

export function useInViewport(
  ref: RefObject<HTMLElement>,
  options?: IntersectionObserverInit,
) {
  const [isInViewport, setIsInViewport] = useState(false);

  useEffect(() => {
    if (!ref.current) return;
    const observer = new IntersectionObserver(([entry]) => {
      setIsInViewport(entry.isIntersecting);
    }, options);

    observer.observe(ref.current);

    return () => observer.disconnect();
  }, [ref, options]);

  return isInViewport;
}
