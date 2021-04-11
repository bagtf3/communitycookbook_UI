-- DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    username TEXT NOT NULL,
    passcode TEXT NOT NULL
    
);

-- DROP TABLE IF EXISTS recipes;

CREATE TABLE IF NOT EXISTS recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    recipe_name TEXT NOT NULL,
    instructions TEXT NOT NULL
);

-- DROP TABLE IF EXISTS ingredients;

CREATE TABLE IF NOT EXISTS ingredients (
    id INTEGER,
    recipe_name TEXT NOT NULL,
    ingredient TEXT NOT NULL,
    amount TEXT NOT NULL,
    PRIMARY KEY (id, recipe_name)
);

-- DROP TABLE IF EXISTS instructions;

CREATE TABLE IF NOT EXISTS instructions (
    id INTEGER,
    recipe_name TEXT NOT NULL,
    step_number INTEGER,
    instruction TEXT NOT NULL,
    PRIMARY KEY (id, recipe_name)
);


-- DROP TABLE IF EXISTS reviews;

CREATE TABLE IF NOT EXISTS reviews (
    id INTEGER,
    recipe_name TEXT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_by TEXT NOT NULL,
    review_score INTEGER NOT NULL,
    review_text TEXT NOT NULL,
    PRIMARY KEY ( id, recipe_name)
);

DROP TABLE IF EXISTS posts;

CREATE TABLE IF NOT EXISTS posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    content TEXT NOT NULL
);