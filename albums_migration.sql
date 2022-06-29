USE codeup_test_db;

SHOW DATABASES;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums
(
    id           INT UNSIGNED AUTO_INCREMENT NOT NULL,
    artist       VARCHAR(200) NOT NULL,
    name         VARCHAR(200) NOT NULL,
    release_date INT,
    sales        FLOAT,
    genre        VARCHAR(100),
    PRIMARY KEY (id)

);
INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');

CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        author_first_name VARCHAR(50),
                        author_last_name  VARCHAR(100) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);

DESCRIBE quotes;

SHOW TABLES;

SELECT author_last_name, content FROM quotes;

UPDATE quotes
SET author_first_name = 'Samuel', author_last_name = 'Clemens'
WHERE id = 4;

DELETE FROM quotes WHERE id = 3;
INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams',    'Time is an illusion. Lunchtime doubly so.'),
       ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');

SELECT * FROM quotes;

SELECT * FROM quotes WHERE author_last_name = 'Adams';
SELECT * FROM quotes WHERE id = 5;
SELECT 'I am output!' AS 'Info';

DELETE FROM quotes WHERE id = 3;

-- First:
SELECT * FROM quotes WHERE id = 3;
-- Convert to:
DELETE FROM quotes WHERE id = 3;

