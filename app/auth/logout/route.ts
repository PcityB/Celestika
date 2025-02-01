import type { NextRequest } from "next/server";

import { redirect } from "next/navigation";

import { createClient } from "@/utils/supabase/server";

export async function GET(_request: NextRequest) {
  const supabase = await createClient();
  const { error } = await supabase.auth.signOut();

  if (error) {
    return new Response(JSON.stringify({ message: "An error occurred while logging out" }), {
      status: 500,
      headers: { "Content-Type": "application/json" },
    });
  }

  return redirect("/login");
}
