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


SELECT DISTINCT Instructor FROM (
SELECT * FROM job_candidates WHERE Subject IN ('Electronic Music Fundamentals', 'MIDI controllers', 'EDM synthesis'))
GROUP BY Instructor
HAVING COUNT(*) = 3;

-- Here I first chooses to retrieve all rows that Subject value is 'Electronic Music Fundamentals' OR 'MIDI controllers' OR 'EDM synthesis', in
-- this case can know all the instructors who is part of their courses they teach is 3 subjects. Then I grouped my job_candidates table using instructor name, after that,
-- I excluded any extra instructors who teach more than these courses by using having count(*) = 3 . 