import { NextRequest, NextResponse } from "next/server";

import { createClient } from "@/utils/supabase/server";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = req.nextUrl;
    const supabase = await createClient();
    const { data, error } = await supabase.from("cards").select("*");
    const suitQuery = searchParams.get("suit");

    if (error) {
      return NextResponse.json({
        message: "An error occurred while fetching cards",
      });
    }
    if (data) {
      if (suitQuery) {
        switch (suitQuery) {
          case "cups":
          case "pentacles":
          case "swords":
          case "wands":
            return NextResponse.json(
              data
                .filter((card) => card.suit === suitQuery)
                .sort((a, b) => a.rank_int! - b.rank_int!),
            );
          case "major":
          case "minor":
            return NextResponse.json(
              data
                .filter((card) => card.arcana_type === suitQuery)
                .sort((a, b) => a.rank_int! - b.rank_int!),
            );
          default:
            return NextResponse.json({ message: "Invalid suit query" });
        }
      }

      return NextResponse.json(data.sort((a, b) => a.rank_int! - b.rank_int!));
    }

    return NextResponse.json({ message: "Hello" });
  } catch (error) {
    console.error(error);

    return NextResponse.error();
  }
}
