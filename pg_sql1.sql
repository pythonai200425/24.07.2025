CREATE TABLE my_users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT UNIQUE,
    age INTEGER
);

select * from my_users;