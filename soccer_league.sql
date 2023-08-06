DROP DATABASE soccer_league;
CREATE DATABASE soccer_league;
\c soccer_league;

CREATE TABLE team 
(
    id SERIAL PRIMARY KEY,
    team_name TEXT UNIQUE NOT NULL,
    team_location TEXT NOT NULL
);

CREATE TABLE players 
(
    player_id SERIAL PRIMARY KEY,
    player_name TEXT NOT NULL,
    team_id INTEGER NOT NULL REFERENCES teams
);

CREATE TABLE players 
(
    ref_id SERIAL PRIMARY KEY,
    ref_name TEXT NOT NULL
);

CREATE TABLE games 
(
    game_id SERIAL PRIMARY KEY,
    match_date TEXT NOT NULL,
    season_start_date TEXT NOT NULL REFERENCES seasons,
    season_end_date TEXT NOT NULL REFERENCES seasons
);

CREATE TABLE goals 
(
    goal_id SERIAL PRIMARY KEY,
    game_id INTEGER NOT NULL REFERENCES games,
    player_id TEXT NOT NULL REFERENCES players,
    goal_time TEXT NOT NULL
);

CREATE TABLE seasons 
(
    season_id SERIAL PRIMARY KEY,
    season_start_date TEXT NOT NULL,
    season_end_date TEXT NOT NULL
);

