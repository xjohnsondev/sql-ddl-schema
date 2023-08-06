DROP DATABASE IF EXISTS  craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE region
(
    region_id SERIAL PRIMARY KEY,
    region_name TEXT NOT NULL,
    
);

CREATE TABLE user
(
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT NOT NULL,
    preferred_region_id INTEGER REFERENCES region
);

CREATE TABLE post
(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    text TEXT NOT NULL,
    user_id INTEGER REFERENCES user
    location TEXT NOT NULL,
    region_id INTEGER REFERENCES region
);

