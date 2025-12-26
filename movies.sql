use zephyr;
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    actor VARCHAR(100),
    director VARCHAR(100),
    rating FLOAT
);

INSERT INTO movies (movie_id, title, genre, actor, director, rating) VALUES
(1, 'Jawan', 'Action', 'Vijay Sethupathi', 'Atlee', 8.5),
(2, 'Inception', 'Action', 'Leonardo DiCaprio', 'Christopher Nolan', 9.0),
(3, 'Avatar', 'Sci-Fi', 'Sam Worthington', 'James Cameron', 8.8),
(4, 'Titanic', 'Tragedy', 'Kate Winslet', 'James Cameron',8.6),
(5, 'Lemonade Mouth', 'Musical','Bridgit Mendler', 'Patricia Riggen', 9.0),
(6, 'Haider','Thriller','Shahid Kapoor', 'Vishal Bhardwaj', 8.1),
(7, 'Parasite', 'Drama', 'Song Kang Ho', 'Bong Joon Ho', 8.5),
(8, 'Frozen', 'Fantasy', 'Idina  Menzel', 'Jennifer Lee', 7.4),
(9, 'Tenet', 'Action', 'John David Washington', 'Christopher Nolan', 8.5),
(10,'Interstellar', 'Sci-Fi', 'Matthew McConaughey', 'Christopher Nolan', 8.7);
set sql_safe_updates = 0;
UPDATE movies
SET actor = 'SRK'
WHERE title = 'Jawan';

ALTER TABLE movies
ADD COLUMN duration INT;

UPDATE movies
SET rating = 8.9
WHERE movie_id = 4;

UPDATE movies
SET genre = 'Thriller'
WHERE director = 'Christopher Nolan' AND genre = 'Action';

UPDATE movies
SET rating = rating + 0.1
WHERE genre != 'Rom-com';

ALTER TABLE movies
ADD COLUMN watched BOOLEAN;

UPDATE movies
SET watched = TRUE
WHERE movie_id = 2;

UPDATE movies
SET rating = rating + 0.5
WHERE genre = 'Action';

ALTER TABLE movies
RENAME COLUMN title TO movie_title;

SELECT *
FROM movies
WHERE movie_title LIKE 'A%';

SELECT *
FROM movies
WHERE movie_title not like '%j_';

delete from movies where movie_id=2;
select * from movies;

DELETE FROM movies
WHERE rating < 8.7;

DROP TABLE movies;
