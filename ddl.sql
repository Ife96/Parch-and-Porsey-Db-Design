-- CREATE TABLES/ENTITIES 

CREATE TABLE authors(
    id SERIAL,
	Name VARCHAR(255),
	Bio VARCHAR(255)
);

-- Make changes to the table

ALTER TABLE authors ADD PRIMARY KEY(id);

CREATE TABLE Books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description VARCHAR(255),
  ISBN CHAR(13),
  genre_id INT
);

CREATE TABLE genres(
   id SERIAL,
   Name VARCHAR(255),
   Description VARCHAR(255)
);

ALTER TABLE genres ADD PRIMARY KEY(id);

ALTER TABLE genres DROP CONSTRAINT genres_pkey;


CREATE TABLE books_authors(
   book_id INT,
   author_id INT,
   is_main_authors BOOLEAN
);

ALTER TABLE books_authors RENAME COLUMN is_main_authors TO is_main_author;


ALTER TABLE books ADD FOREIGN KEY(genre_id) REFERENCES genres(id);

ALTER TABLE books_authors ADD FOREIGN KEY(book_id) REFERENCES books(id);

ALTER TABLE books_authors ADD FOREIGN KEY(author_id) REFERENCES authors(id);






