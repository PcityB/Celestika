import { render } from "@testing-library/react";

import {
  Logo,
  DiscordIcon,
  TwitterIcon,
  GithubIcon,
  MoonFilledIcon,
  SunFilledIcon,
  HeartFilledIcon,
  SearchIcon,
} from "../icons";

describe("Logo Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<Logo />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "36");
    expect(svg).toHaveAttribute("width", "36");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<Logo size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<Logo width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(<Logo data-testid="logo-icon" />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "logo-icon");
  });
});

describe("Discord Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<DiscordIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<DiscordIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<DiscordIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(<DiscordIcon data-testid="discord-icon" />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "discord-icon");
  });
});

describe("Twitter Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<TwitterIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<TwitterIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<TwitterIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(<TwitterIcon data-testid="twitter-icon" />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "twitter-icon");
  });
});

describe("Github Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<GithubIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<GithubIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<GithubIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(<GithubIcon data-testid="github-icon" />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "github-icon");
  });
});

describe("MoonFilled Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<MoonFilledIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<MoonFilledIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<MoonFilledIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(
      <MoonFilledIcon data-testid="moon-filled-icon" />
    );
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "moon-filled-icon");
  });
});

describe("SunFilled Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<SunFilledIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<SunFilledIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<SunFilledIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(
      <SunFilledIcon data-testid="sun-filled-icon" />
    );
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "sun-filled-icon");
  });
});

describe("HeartFilled Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<HeartFilledIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<HeartFilledIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<HeartFilledIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(
      <HeartFilledIcon data-testid="heart-filled-icon" />
    );
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "heart-filled-icon");
  });
});

describe("Search Icon", () => {
  it("renders correctly with default size", () => {
    const { container } = render(<SearchIcon />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "24");
    expect(svg).toHaveAttribute("width", "24");
  });

  it("renders correctly with custom size", () => {
    const { container } = render(<SearchIcon size={48} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "48");
    expect(svg).toHaveAttribute("width", "48");
  });

  it("renders correctly with custom width and height", () => {
    const { container } = render(<SearchIcon width={50} height={50} />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("height", "50");
    expect(svg).toHaveAttribute("width", "50");
  });

  it("passes additional props to the svg element", () => {
    const { container } = render(<SearchIcon data-testid="search-icon" />);
    const svg = container.querySelector("svg");

    expect(svg).toBeInTheDocument();
    expect(svg).toHaveAttribute("data-testid", "search-icon");
  });
});
