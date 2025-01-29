"use server";

import { createClient } from "./supabase/server";

/**
 * Fetches the tarot deck from the Supabase database.
 *
 * @returns {Promise<any>} A promise that resolves to the tarot deck data or an error.
 *
 * @throws {Error} If there is an error fetching the tarot deck data.
 */
export async function getTarotDeck() {
  const supabase = await createClient();

  const { data, error } = await supabase.from("cards").select("*");

  if (error) {
    return { error };
  }

  return { data };
}
