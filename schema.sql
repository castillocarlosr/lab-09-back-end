DROP TABLE IF EXISTS locationss;
DROP TABLE IF EXISTS weather;
DROP TABLE IF EXISTS yelp;
DROP TABLE IF EXISTS movies;

CREATE TABLE locationss(
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
    created_at BIGINT,
    locationss_id INTEGER NOT NULL REFERENCES locationss(id)
);

CREATE TABLE yelp(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(255),
    url VARCHAR(255),
    price VARCHAR(255),
    image_url VARCHAR(255),
    rating NUMERIC(2,1),
    created_at BIGINT,
    locationss_id INTEGER NOT NULL REFERENCES locationss(id)
);

CREATE TABLE movies(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    overview VARCHAR(255),
    average_votes NUMERIC(2,1),
    image_url VARCHAR(255),
    popularity NUMERIC(4,3),
    released_on VARCHAR(255),
    created_at BIGINT,
    locationss_id INTEGER NOT NULL REFERENCES locationss(id)
);

CREATE TABLE meetup(
    id SERIAL PRIMARY KEY,
    link VARCHAR(255),
    name VARCHAR(255),
    creation_date CHAR(15),
    host VARCHAR(255),
    created_at BIGINT,
    locationss_id INTEGER NOT NULL REFERENCES locationss(id)
);

CREATE TABLE hikes(
    id SERIAL PRIMARY KEY,
    location VARCHAR(255),
    length NUMERIC(4,1),
    stars NUMERIC(2,1),
    star_votes INTEGER,
    summary VARCHAR(255),
    trail_url VARCHAR(255),
    conditions TEXT,
    condition_date CHAR(10),
    condition_time CHAR(8),
    created_at BIGINT,
    location_id INTEGER NOT NULL REFERENCES location(id)
)