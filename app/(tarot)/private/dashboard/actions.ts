"use server";
import { revalidatePath } from "next/cache";

import { createClient } from "@/utils/supabase/server";

export async function getProfile(userId: string) {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("profiles")
    .select("*")
    .eq("user_id", userId);

  if (error) {
    return { error, message: "An error occurred while fetching the profile" };
  }
  const profile = data[0];

  if (!profile) {
    return { error: true, message: "Profile not found" };
  } else {
    revalidatePath("/private/dashboard");

    return { data: profile };
  }
}

// export async function createProfile(userId, profile) {

// }