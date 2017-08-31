\c dresselhaus_quotes_dev;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS genres;

CREATE TABLE quotes (
  id SERIAL PRIMARY KEY,
  content TEXT,
  author VARCHAR(255),
  genre_type INTEGER,
  date_created TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE genres (
	id SERIAL PRIMARY KEY,
	genre VARCHAR(255)
);

CREATE INDEX ON quotes (genre_type);
CREATE INDEX ON quotes (author);
CREATE INDEX ON genres (genre);
