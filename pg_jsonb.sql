INSERT INTO students (name, grades) VALUES
('danny', '{"math": 99, "english": 80, "history": 75}'),
('arya', '{"math": 88, "english": 95, "history": 70}'),
('jon',  '{"math": 76, "english": 67, "history": 82}');

select * from students;

select name, grades->>'math' from students;

select * from students
where (grades->>'math')::INT > 90;

-- targil
-- viewer    movie_rating
-- 'Jon'     '{"The Godfather": 5, "Titanic": 4, "Inception": 5}'
-- 'Andy'    '{"Titanic": 5, "Inception": 4, "Frozen": 3}'
-- 'Thor'    '{"The Godfather": 4, "Frozen": 2, "The Matrix": 5}'
-- 'Captian' '{"Inception": 5, "The Matrix": 3, "Titanic": 2}'

-- A. Show all viewers and their rating for "Inception"
-- B. Find all viewers who gave "Titanic" a rating of 4 or higher