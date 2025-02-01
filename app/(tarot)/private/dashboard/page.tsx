import { getCardImgPath, shuffleCards, getTarotDeck } from "@/utils";
import { type TarotCardId } from "@/types/tarot.types";
import CardOfTheDay from "@/components/card-of-the-day";

export default async function Page() {
  const { data, error } = await getTarotDeck();

  if (error) {
    return <div>An error occurred while fetching the tarot deck</div>;
  }
  const dailyCard = await shuffleCards(Promise.resolve(data), 1);

  const { slug_id, title } = dailyCard[0];

  const cardImg = getCardImgPath(slug_id as TarotCardId);

  return (
    <div className="flex justify-center"> {/* Centering the content */}
      <CardOfTheDay cardImg={cardImg} title={title} />
    </div>
  );
}
