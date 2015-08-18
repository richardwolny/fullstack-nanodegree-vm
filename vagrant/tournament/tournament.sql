-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS players;

CREATE TABLE players(name TEXT, id SERIAL);

CREATE TABLE matches(winner_id INTEGER, loser_id INTEGER);

INSERT INTO players VALUES('richard');
INSERT INTO players VALUES('jenny');
INSERT INTO players VALUES('natalie');
INSERT INTO players VALUES('sam');
