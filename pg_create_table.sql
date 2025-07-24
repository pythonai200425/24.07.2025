-- SQLITE
-- CREATE TABLE my_users (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     username TEXT NOT NULL,
--     email TEXT UNIQUE,
--     age INTEGER
-- );

-- serial      -- int + autoincrement(ai) +-2,147,483,648 to 2,147,483,647 [4 bytes]
-- bigserial   -- big + autoincrement(ai) +-9,223,372,036,854,775,808 [8 bytes]
-- SMALLSERIAL -- small-int autoincrement(ai) 32,768 +32,767 [2 bytes]

CREATE TABLE my_users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT UNIQUE,
    age INTEGER
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES my_users(id),
    amount REAL NOT NULL,
    order_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);