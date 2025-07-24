
INSERT INTO my_users (username, email, age) VALUES
('jon_snow', 'jon.snow@winterfell.com', 30),
('daenerys', 'dany@dragonstone.com', 28),
('arya_stark', 'arya@winterfell.com', 21),
('tyrion_lannister', 'tyrion@casterlyrock.com', 38),
('cersei', 'cersei@kingslanding.com', 42),
('sansa_stark', 'sansa@winterfell.com', 26),
('bran_stark', 'bran@weirwood.com', 20),
('jaime_lannister', 'jaime@casterlyrock.com', 40);

--INSERT INTO orders (user_id, amount)
--VALUES (1, 49.99);

INSERT INTO orders (user_id, amount) VALUES
(1, round((random() * 500 + 20)::numeric, 2)),  -- jon_snow
(2, round((random() * 500 + 20)::numeric, 2)),  -- daenerys
(3, round((random() * 500 + 20)::numeric, 2)),  -- arya
(4, round((random() * 500 + 20)::numeric, 2)),  -- tyrion
(5, round((random() * 500 + 20)::numeric, 2)),  -- cersei
(6, round((random() * 500 + 20)::numeric, 2)),  -- sansa
(7, round((random() * 500 + 20)::numeric, 2)),  -- bran
(8, round((random() * 500 + 20)::numeric, 2));  -- brienne

SELECT * FROM orders
order by user_id;

CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    balance REAL CHECK (balance >= 0)
);

--id   name   grades
--1    danny  "{math: 99, english: 80...}"

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    grades JSONB
);

INSERT INTO students (name, grades) VALUES
('danny', '{"math": 99, "english": 80, "history": 75}'),
('arya', '{"math": 88, "english": 95, "history": 70}'),
('jon',  '{"math": 76, "english": 67, "history": 82}');
