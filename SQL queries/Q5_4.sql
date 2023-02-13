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


SELECT DISTINCT Instructor FROM
(SELECT Instructor FROM job_candidates WHERE Subject = 'Electronic Music Fundamentals') j
NATURAL JOIN
(SELECT Instructor FROM job_candidates WHERE Subject = 'MIDI controllers') j2
NATURAL JOIN
(SELECT Instructor FROM job_candidates WHERE Subject = 'EDM synthesis') j3;


-- I used NATURAL JOIN where I do not have to mension the common column names between my tables. The quary will first select all the instructors who have tougt 'Electronic Music Fundamentals' and 'MIDI controllers'
-- Then will choose all the instructors who tougt all the three courses including 'EDM synthesis'
