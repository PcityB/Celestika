import "@testing-library/jest-dom";
import { render, screen, fireEvent } from "@testing-library/react";

import Home from "@/app/page";

jest.mock("@/components/testimonials", () => () => {
  <div>Testimonials</div>;
});

describe("Page", () => {
  it("renders the main heading", () => {
    render(<Home />);

    const mainHeading = screen.getByText("Explore Your Destiny");

    expect(mainHeading).toBeInTheDocument();
  });

  it("renders the subheading", () => {
    render(<Home />);
    const subHeading = screen.getByText("Discover the mystical realm in you.");

    expect(subHeading).toBeInTheDocument();
  });

  it("renders the Get Started button", () => {
    render(<Home />);
    const getStartedButton = screen.getByText("Get Started");

    expect(getStartedButton).toBeInTheDocument();
  });
  it("scrolls to services section when Get Started button is clicked", () => {
    render(<Home />);
    const getStartedButton = screen.getByText("Get Started");

    fireEvent.keyPress(getStartedButton, {
      key: "Enter",
      code: 13,
      charCode: 13,
    });
    const servicesSection = screen.getByText("Our Services");

    expect(servicesSection).toBeInTheDocument();
  });

  it("renders the testimonials section", () => {
    render(<Home />);
    const testimonialsHeading = screen.getByText(
      "What our users are saying..."
    );

    expect(testimonialsHeading).toBeInTheDocument();
  });

  it("renders the footer", () => {
    render(<Home />);

    const footerTexts = screen.getAllByText(/Mystical Realms/i);

    expect(footerTexts.length).toBeGreaterThan(0);
  });
});
