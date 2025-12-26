create database movies;
use movies;


CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    actor VARCHAR(100),
    director VARCHAR(100),
    rating FLOAT
);

-- 2. Insert 13 records into the table
INSERT INTO movies (movie_id, title, genre, actor, director, rating) VALUES
(1, 'Jawan', 'Action', 'Vijay Sethupathi', 'Atlee', 8.5),
(2, 'Inception', 'Action', 'Leonardo DiCaprio', 'Christopher Nolan', 9.0),
(3, 'Avatar', 'Sci-Fi', 'Sam Worthington', 'James Cameron', 8.8),
(4,'Parasite', 'Thriller/Drama','Song Kang-ho','Bong Joon Ho', 8.6),
(5, 'Dangal', 'Sports/Drama', 'Aamir Khan', 'Nitesh Tiwari', 8.3),
(6,'Inception', 'Sci-Fi/Action', 'Leonardo DiCaprio', 'Christopher Nolan', 8.8),
(7,'Train to Busan',  'Horror/Action', 'Gong Yoo', 'Yeon Sang-ho', 7.6),
(8, '3 Idiots', 'Comedy/Drama', 'Aamir Khan', 'Rajkumar Hirani', 8.4),
(9,'The Dark Knight',  'Action/Crime', 'Christian Bale', 'Christopher Nolan', 9.0),
(10,'Oldboy',  'Mystery/Thriller', 'Choi Min-sik', 'Park Chan-wook', 8.4),
(11, 'RRR',  'Action/Drama', 'N. T. Rama Rao Jr.', 'S. S. Rajamouli', 7.9),
(12, 'Interstellar', 'Sci-Fi/Adventure', 'Matthew McConaughey', 'Christopher Nolan', 8.6),
(13, 'Piku', 'Comedy/Drama', 'Deepika Padukone', 'Shoojit Sircar', 7.6);

SET SQL_SAFE_UPDATES = 0;


-- 4. Add a new column 'duration' with datatype INT
ALTER TABLE movies
ADD COLUMN duration INT;


-- 6. Update the genre of all movies directed by 'Christopher Nolan' to 'Thriller' where the current genre is 'Action'
UPDATE movies
SET genre = 'Thriller'
WHERE director = 'Christopher Nolan' AND genre = 'Action';

-- 7. Change the rating for all movies that are not in the 'Rom-com' genre
UPDATE movies
SET rating = rating + 0.1
WHERE genre != 'Rom-com';

-- 8. Add a column 'watched', whose datatype is BOOLEAN
ALTER TABLE movies
ADD COLUMN watched BOOLEAN;

-- 9. In the 'watched' column, update the 2nd movie to watched = true
UPDATE movies
SET watched = TRUE
WHERE movie_id = 2;

-- 10. Increase the rating by 0.5 for all movies in the 'Action' genre
UPDATE movies
SET rating = rating + 0.5
WHERE genre = 'Action';

-- 11. Rename the column 'title' to 'movie_title'
ALTER TABLE movies
RENAME COLUMN title TO movie_title;

-- 12. Retrieve all movies whose titles start with the letter 'A'
SELECT *
FROM movies
WHERE movie_title LIKE 'A%';

-- 13. Display all movies whose titles don't have the second last character as 'j'
SELECT *
FROM movies
WHERE SUBSTRING(movie_title, LENGTH(movie_title) - 1, 1) != 'j';

-- 14. Delete the 2nd record from the table
DELETE FROM movies
WHERE movie_id = 2;

-- 15. Delete all movies that have a rating below 8.7
DELETE FROM movies
WHERE rating < 8.7;


-- 4. Add a new column 'time_watched' with datatype INT
ALTER TABLE movies
ADD COLUMN time_watched INT;

UPDATE movies
SET rating = 8.9
WHERE movie_id = 4;

SELECT * FROM movies;                           -- View all data
SELECT movie_title, rating FROM movies;         -- Select specific columns
SELECT * FROM movies WHERE rating > 8.5;        -- Conditional select
SELECT * FROM movies WHERE genre = 'Action';    -- Filter by genre

-- UPDATE STATEMENTS
UPDATE movies
SET actor = 'SRK'
WHERE movie_title = 'Jawan';

UPDATE movies
SET rating = rating + 0.5
WHERE genre = 'Action';

UPDATE movies
SET watched = TRUE
WHERE movie_id = 2;

UPDATE movies
SET genre = 'Thriller'
WHERE director = 'Christopher Nolan' AND genre = 'Action';

-- ALTER TABLE
ALTER TABLE movies ADD COLUMN duration INT;
ALTER TABLE movies ADD COLUMN watched BOOLEAN;
ALTER TABLE movies ADD COLUMN time_watched INT;

ALTER TABLE movies
RENAME COLUMN title TO movie_title; -- (already applied)

-- DELETE STATEMENTS
DELETE FROM movies WHERE movie_id = 2;
DELETE FROM movies WHERE rating < 8.7;

-- STRING FUNCTIONS
-- Titles starting with A
SELECT * FROM movies
WHERE movie_title LIKE 'A%';

-- Titles NOT having second-last character as 'j'
SELECT * FROM movies
WHERE SUBSTRING(movie_title, LENGTH(movie_title) - 1, 1) != 'j';

-- AGGREGATE FUNCTIONS
SELECT COUNT(*) FROM movies;                          -- Total movies
SELECT AVG(rating) AS avg_rating FROM movies;         -- Average rating
SELECT MAX(rating), MIN(rating) FROM movies;          -- Highest and lowest rating

-- GROUPING
SELECT genre, COUNT(*) FROM movies GROUP BY genre;    -- Number of movies by genre
SELECT director, AVG(rating) FROM movies GROUP BY director;  -- Avg rating per director

-- ORDER BY
SELECT * FROM movies ORDER BY rating DESC;            -- Highest-rated movies
SELECT * FROM movies ORDER BY movie_title ASC;        -- Alphabetical order

-- CONDITIONAL FILTERING
-- Movies not in a certain genre
SELECT * FROM movies
WHERE genre NOT IN ('Rom-com', 'Comedy');

-- Movies with rating between 8.5 and 9
SELECT * FROM movies
WHERE rating BETWEEN 8.5 AND 9.0;

-- UPDATE SPECIFIC RECORD
UPDATE movies
SET rating = 8.9
WHERE movie_id = 4;

-- LIKE AND NOT LIKE
# Find movies that start with 'The'
SELECT * FROM movies WHERE movie_title LIKE 'The%';

# Find movies whose title doesn't contain 'Love'
SELECT * FROM movies WHERE movie_title NOT LIKE '%Love%';

-- STRING FUNCTIONS
# Length of the movie title
SELECT movie_title, LENGTH(movie_title) AS title_length FROM movies;

# Concatenate title and director
SELECT CONCAT(movie_title, ' - ', director) AS title_director FROM movies;

-- HAVING CLAUSE
# Display genres with average rating above 8.5
SELECT genre, AVG(rating) AS avg_rating
FROM movies
GROUP BY genre
HAVING AVG(rating) > 8.5;

-- Display directors who have directed more than 2 movies
SELECT director, COUNT(*) AS total_movies
FROM movies
GROUP BY director
HAVING COUNT(*) > 2;

-- ORDER BY
# Sort movies by duration (ascending)
SELECT * FROM movies ORDER BY duration ASC;

# Sort movies by rating (highest first)
SELECT * FROM movies ORDER BY rating DESC;

