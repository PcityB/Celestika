BEGIN;

CREATE INDEX idx_readings_user_id ON Readings(user_id);
CREATE INDEX idx_readings_spread_id ON Readings(spread_id);

CREATE INDEX idx_reading_cards_reading_id ON Reading_Cards(reading_id);
CREATE INDEX idx_reading_cards_card_id ON Reading_Cards(card_id);

CREATE INDEX idx_spreads_user_id ON Spreads(user_id);

CREATE INDEX idx_spread_positions_spread_id ON Spread_Positions(spread_id);

COMMIT;

BEGIN;

CREATE INDEX idx_threads_forum_id ON Threads(forum_id);
CREATE INDEX idx_posts_thread_id ON Posts(thread_id);
CREATE INDEX idx_comments_post_id ON Comments(post_id);
CREATE INDEX idx_likes_post_id ON Likes(post_id);
CREATE INDEX idx_likes_user_id ON Likes(user_id);

COMMIT;