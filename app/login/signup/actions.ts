"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";

import { createClient } from "@/utils/supabase/server";

export async function signup(formValues: Record<string, string>) {
  const supabase = await createClient();

  // type-casting here for convenience
  // in practice, you should validate your inputs
  const body = {
    email: formValues.email,
    password: formValues.password,
  };

  const { data, error } = await supabase.auth.signUp(body);

  if (error) {
    return { error: `sign up error: ${error.message}` };
  }

  const { error: profileError } = await supabase
    .from("profiles")
    .insert([{ user_id: data.user?.id, screen_name: formValues.screen_name }]);

  if (profileError) {
    return { error: `profile error: ${profileError.message}` };
  }

  revalidatePath("/", "layout");
  redirect("/");
}

export async function checkScreenName(screenName: string): Promise<boolean | { error: string }> {
  const supabase = await createClient();

  const { data, error } = await supabase
    .from("profiles")
    .select("*")
    .eq("screen_name", screenName);

  if (error) {
    return { error: `check screen name error: ${error.message}` };
  }

  return Promise.resolve(data.length === 0);
}
