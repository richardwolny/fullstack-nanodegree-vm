-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP VIEW IF EXISTS played;
DROP VIEW IF EXISTS won;
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS players;

CREATE TABLE players(name TEXT, id SERIAL);

CREATE TABLE matches(winner_id INTEGER, loser_id INTEGER);

CREATE VIEW won AS
SELECT players.id, count(matches.winner_id)
FROM players LEFT OUTER JOIN matches
ON players.id = matches.winner_id
GROUP BY players.id;

CREATE VIEW played AS
SELECT players.id, count(matches.winner_id + matches.loser_id)
from players LEFT OUTER JOIN matches
ON players.id = matches.winner_id OR players.id = matches.loser_id
GROUP BY players.id;
