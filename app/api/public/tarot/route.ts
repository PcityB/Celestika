import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/utils/supabase/server";

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = req.nextUrl;
    const supabase = await createClient();

    const { data, error } = await supabase.from("cards").select("*");

    if (error) {
      return NextResponse.json({
        message: "An error occurred while fetching cards",
      });
    }
    const numberOfCard = searchParams.get("n");
    const shuffle = [];

    if (numberOfCard) {
      const num = parseInt(numberOfCard);

      for (let i = 0; i < num; i++) {
        const random = data.splice(Math.floor(Math.random() * data.length), 1);

        shuffle.push(random[0]);
      }
    } else {
      for (let i = 0; i < data.length; i++) {
        const random = data.splice(Math.floor(Math.random() * data.length), 1);

        shuffle.push(random[0]);
      }
    }

    return NextResponse.json({ data: shuffle });
  } catch (error) {
    console.error(error);

    return NextResponse.error();
  }

}