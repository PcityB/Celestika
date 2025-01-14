import { viewport } from "../layout";

describe("RootLayout viewport", () => {
  it("should have the correct theme colors", () => {
    expect(viewport.themeColor).toEqual([
      { media: "(prefers-color-scheme: light)", color: "white" },
      { media: "(prefers-color-scheme: dark)", color: "black" },
    ]);
  });
});
