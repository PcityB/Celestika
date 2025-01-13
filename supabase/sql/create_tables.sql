BEGIN;

CREATE TABLE User_Profiles (
    profile_id SERIAL PRIMARY KEY,        -- Unique identifier for the profile
    user_id UUID NOT NULL,                -- Foreign key to auth.users (UUID)
    profile_picture VARCHAR(255),        -- URL of the profile picture
    bio TEXT,                             -- User bio or description
    website_url VARCHAR(255),            -- Optional personal website or social link
    location VARCHAR(255),               -- User's location (optional)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Profile creation timestamp
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Last updated timestamp
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE,
    UNIQUE (user_id)                     -- Ensures each user can only have one profile
);


COMMIT;

BEGIN;

CREATE TYPE card_arcana AS ENUM ('major', 'minor');

CREATE TABLE Cards (
  card_id SERIAL PRIMARY KEY,          -- Unique identifier for the card
  slug_id VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,     -- Name of the card (e.g., "The Fool")
  arcana card_arcana NOT NULL,    -- Major or Minor arcana
  upright_description TEXT,       -- Description of the card in the upright position
  reversed_description TEXT,      -- Description of the card in the reversed position
  upright_keywords TEXT
  reversed_keywords TEXT
  fools_journey TEXT
)

COMMIT;

BEGIN;

CREATE TABLE Readings (
    reading_id SERIAL PRIMARY KEY,  -- Unique identifier for each reading
    user_id INT NOT NULL,          -- Foreign key to Users table
    spread_id INT,                 -- Foreign key to Spreads table (optional)
    reading_date TIMESTAMP NOT NULL, -- Date and time of the reading
    notes TEXT,                    -- Additional notes for the reading
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_spread FOREIGN KEY (spread_id) REFERENCES Spreads(spread_id) ON DELETE SET NULL
);

CREATE TABLE Reading_Cards (
    reading_card_id SERIAL PRIMARY KEY, -- Unique identifier for each drawn card
    reading_id INT NOT NULL,           -- Foreign key to Readings table
    card_id INT NOT NULL,              -- Foreign key to Cards table
    position VARCHAR(255) NOT NULL,    -- Position of the card (e.g., "Past", "Present", "Future")
    CONSTRAINT fk_reading FOREIGN KEY (reading_id) REFERENCES Readings(reading_id) ON DELETE CASCADE,
    CONSTRAINT fk_card FOREIGN KEY (card_id) REFERENCES Cards(card_id) ON DELETE CASCADE
);

CREATE TABLE Spreads (
    spread_id SERIAL PRIMARY KEY,     -- Unique identifier for each spread
    user_id INT NOT NULL,             -- Foreign key to Users table (creator of the spread)
    name VARCHAR(255) NOT NULL,
    private BOOLEAN NOT NULL       -- Name of the spread
    description TEXT,                 -- Description of the spread
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Creation timestamp
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Spread_Positions (
    spread_position_id SERIAL PRIMARY KEY, -- Unique identifier for each spread position
    spread_id INT NOT NULL,                -- Foreign key to Spreads table
    position INT NOT NULL,                 -- Position index in the spread
    meaning TEXT NOT NULL,                 -- Meaning of the position (e.g., "Past", "Present", "Future")
    CONSTRAINT fk_spread FOREIGN KEY (spread_id) REFERENCES Spreads(spread_id) ON DELETE CASCADE
);


COMMIT;
BEGIN;

CREATE TABLE Forums (
    forum_id SERIAL PRIMARY KEY,         -- Unique identifier for the forum
    name VARCHAR(255) NOT NULL UNIQUE,  -- Name of the forum (e.g., "Tarot Discussion")
    description TEXT,                    -- Forum description
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for forum creation
);

CREATE TABLE Threads (
    thread_id SERIAL PRIMARY KEY,        -- Unique identifier for the thread
    forum_id INT NOT NULL,               -- Foreign key to Forums table
    user_id INT NOT NULL,                -- Foreign key to Users table
    title VARCHAR(255) NOT NULL,         -- Title of the thread
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for thread creation
    CONSTRAINT fk_forum FOREIGN KEY (forum_id) REFERENCES Forums(forum_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Posts (
    post_id SERIAL PRIMARY KEY,          -- Unique identifier for the post
    thread_id INT NOT NULL,              -- Foreign key to Threads table
    user_id INT NOT NULL,                -- Foreign key to Users table
    content TEXT NOT NULL,               -- Content of the post
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for post creation
    CONSTRAINT fk_thread FOREIGN KEY (thread_id) REFERENCES Threads(thread_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Comments (
    comment_id SERIAL PRIMARY KEY,       -- Unique identifier for the comment
    post_id INT NOT NULL,                -- Foreign key to Posts table
    user_id INT NOT NULL,                -- Foreign key to Users table
    content TEXT NOT NULL,               -- Content of the comment
    parent_comment_id INT NULL,          -- Allows nested comments
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for comment creation
    CONSTRAINT fk_post FOREIGN KEY (post_id) REFERENCES Posts(post_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_parent_comment FOREIGN KEY (parent_comment_id) REFERENCES Comments(comment_id) ON DELETE CASCADE
);

CREATE TABLE Likes (
    like_id SERIAL PRIMARY KEY,          -- Unique identifier for the like
    post_id INT NOT NULL,                -- Foreign key to Posts table
    user_id INT NOT NULL,                -- Foreign key to Users table
    CONSTRAINT fk_post FOREIGN KEY (post_id) REFERENCES Posts(post_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    UNIQUE (post_id, user_id)            -- Ensures a user can only like a post once
);

COMMIT;

BEGIN;

CREATE TABLE Forums (
    forum_id SERIAL PRIMARY KEY,         -- Unique identifier for the forum
    name VARCHAR(255) NOT NULL UNIQUE,  -- Name of the forum (e.g., "Tarot Discussion")
    description TEXT,                    -- Forum description
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Timestamp for forum creation
);

CREATE TABLE Threads (
    thread_id SERIAL PRIMARY KEY,        -- Unique identifier for the thread
    forum_id INT NOT NULL,               -- Foreign key to Forums table
    user_id INT NOT NULL,                -- Foreign key to Users table
    title VARCHAR(255) NOT NULL,         -- Title of the thread
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for thread creation
    CONSTRAINT fk_forum FOREIGN KEY (forum_id) REFERENCES Forums(forum_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Posts (
    post_id SERIAL PRIMARY KEY,          -- Unique identifier for the post
    thread_id INT NOT NULL,              -- Foreign key to Threads table
    user_id INT NOT NULL,                -- Foreign key to Users table
    content TEXT NOT NULL,               -- Content of the post
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for post creation
    CONSTRAINT fk_thread FOREIGN KEY (thread_id) REFERENCES Threads(thread_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

CREATE TABLE Comments (
    comment_id SERIAL PRIMARY KEY,       -- Unique identifier for the comment
    post_id INT NOT NULL,                -- Foreign key to Posts table
    user_id INT NOT NULL,                -- Foreign key to Users table
    content TEXT NOT NULL,               -- Content of the comment
    parent_comment_id INT NULL,          -- Allows nested comments
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp for comment creation
    CONSTRAINT fk_post FOREIGN KEY (post_id) REFERENCES Posts(post_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_parent_comment FOREIGN KEY (parent_comment_id) REFERENCES Comments(comment_id) ON DELETE CASCADE
);

CREATE TABLE Likes (
    like_id SERIAL PRIMARY KEY,          -- Unique identifier for the like
    post_id INT NOT NULL,                -- Foreign key to Posts table
    user_id INT NOT NULL,                -- Foreign key to Users table
    CONSTRAINT fk_post FOREIGN KEY (post_id) REFERENCES Posts(post_id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    UNIQUE (post_id, user_id)            -- Ensures a user can only like a post once
);


COMMIT;