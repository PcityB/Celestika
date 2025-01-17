import { Database } from "@/types/database.types";

type T = Database["public"]["Tables"]["cards"]["Row"];

export async function shuffleCards(
  dataPromise: Promise<T[]>,
  numberOfCard?: number
) {
  const shuffle = [];
  const data = await dataPromise;

  if (numberOfCard) {
    for (let i = 0; i < numberOfCard; i++) {
      const random = data.splice(Math.floor(Math.random() * data.length), 1);

      shuffle.push(random[0]);
    }
  } else {
    for (let i = 0; i < data.length; i++) {
      const random = data.splice(Math.floor(Math.random() * data.length), 1);

      shuffle.push(random[0]);
    }
  }

  return shuffle;
}
