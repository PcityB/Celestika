"use server";
import { createClient } from "@/utils/supabase/server";

export async function saveSpreadToDB(spread: any) {
  const supabase = await createClient();
  const { data, error } = await supabase.from("spreads").insert([spread]);

  if (error) {
    return { error };
  }

  return { data };
}