DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS weather;
DROP TABLE IF EXISTS yelp;
DROP TABLE IF EXISTS movies;

CREATE TABLE location(
    id SERIAL PRIMARY KEY,
    search_query VARCHAR(255),
    formatted_query VARCHAR(255),
    latitude NUMERIC(8,6),
    longitude NUMERIC(9,6)
);

CREATE TABLE weather(
    id SERIAL PRIMARY KEY,
    forecast VARCHAR(255),
    time VARCHAR(255),
    location_id INTEGER NOT NULL REFERENCES location(id)
);

CREATE TABLE yelp(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(255),
    url VARCHAR(255),
    price VARCHAR(255),
    image_url VARCHAR(255),
    rating NUMERIC(2,1)
);

CREATE TABLE movies(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    overview VARCHAR(255),
    average_votes NUMERIC(2,1),
    image_url VARCHAR(255),
    popularity NUMERIC(4,3),
    released_on VARCHAR(255)
);

