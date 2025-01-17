import type { NextRequest } from "next/server";

import { redirect } from "next/navigation";

import { createClient } from "@/utils/supabase/server";

export async function GET(_request: NextRequest) {
  const supabase = await createClient();
  const { error } = await supabase.auth.signOut();

  if (error) {
    return { message: "An error occurred while logging out" };
  }

  redirect("/login");
}
