import { render } from "@testing-library/react";

import {
  DrawCardIcon,
  RowDrawCardIcon,
  ClosedBookIcon,
  SkullCardsIcon,
  ZodiacStarIcon,
  CardSpreadIcon,
  TreeIcon,
} from "../tarot.icons";

describe("Tarot Icons", () => {
  it("renders DrawCardIcon correctly", () => {
    const { container } = render(<DrawCardIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();

    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("fill", "#000");
  });

  it("renders RowDrawCardIcon correctly", () => {
    const { container } = render(<RowDrawCardIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();

    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("fill", "#000");
  });

  it("renders ClosedBookIcon correctly", () => {
    const { container } = render(<ClosedBookIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();
    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("stroke", "#000");
  });

  it("renders SkullCardsIcon correctly", () => {
    const { container } = render(<SkullCardsIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();
    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("fill", "#000");
  });

  it("renders ZodiacStarIcon correctly", () => {
    const { container } = render(<ZodiacStarIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();
    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("fill", "#000");
  });

  it("renders CardSpreadIcon correctly", () => {
    const { container } = render(<CardSpreadIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();
    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("fill", "#000");
  });

  it("renders TreeIcon correctly", () => {
    const { container } = render(<TreeIcon color="#000" size={48} />);

    expect(container.querySelector("svg")).toBeInTheDocument();
    expect(container.querySelector("svg")).toHaveAttribute("height", "48");
    expect(container.querySelector("svg")).toHaveAttribute("width", "48");
    expect(container.querySelector("path")).toHaveAttribute("fill", "#000");
  });
});
