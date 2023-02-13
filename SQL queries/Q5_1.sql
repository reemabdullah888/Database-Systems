-- I used livesql.oracle to solve the question https://livesql.oracle.com


DROP TABLE job_candidates;
CREATE TABLE job_candidates (
Instructor CHAR(20),
Subject VARCHAR(30)
);

INSERT INTO job_candidates VALUES ('Aleph', 'MIDI controllers');
INSERT INTO job_candidates VALUES ('Aleph', 'Sound mixing');
INSERT INTO job_candidates VALUES ('Aleph', 'Synthesis algorithms');
INSERT INTO job_candidates VALUES ('Bit', 'EDM synthesis');
INSERT INTO job_candidates VALUES ('Bit', 'Electronic Music Fundamentals');
INSERT INTO job_candidates VALUES ('Bit', 'Sound mixing');
INSERT INTO job_candidates VALUES ('CRC', 'EDM synthesis');
INSERT INTO job_candidates VALUES ('CRC', 'Electronic Music Fundamentals');
INSERT INTO job_candidates VALUES ('Dat', 'MIDI controllers');
INSERT INTO job_candidates VALUES ('Dat', 'EDM synthesis');
INSERT INTO job_candidates VALUES ('Dat', 'Electronic Music Fundamentals');
INSERT INTO job_candidates VALUES ('Emscr', 'MIDI controllers');
INSERT INTO job_candidates VALUES ('Emscr', 'Synthesis algorithms');
INSERT INTO job_candidates VALUES ('Emscr', 'Electronic Music Fundamentals');
INSERT INTO job_candidates VALUES ('Emscr', 'EDM synthesis');

SELECT DISTINCT(Instructor) FROM job_candidates WHERE Subject='Electronic Music Fundamentals'
INTERSECT
SELECT DISTINCT(Instructor) FROM job_candidates WHERE Subject='MIDI controllers'
INTERSECT
SELECT DISTINCT(Instructor) FROM job_candidates WHERE Subject='EDM synthesis';


-- Here I used Intersect SQL command which will help me to find the all instructors who teaches the common 3 courses. 