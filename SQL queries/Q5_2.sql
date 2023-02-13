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



SELECT J.Instructor
FROM job_candidates J
INNER JOIN job_candidates J2
ON J.Instructor =J2.Instructor
INNER JOIN job_candidates J3
ON J.Instructor=J3.Instructor
WHERE  J.Subject='Electronic Music Fundamentals' AND J2.Subject='EDM synthesis' AND J3.Subject='MIDI controllers';

-- I used Inner join to join the two tables, where I combined the records from the two tables whenever there were matching values in a Subject column between them. What I mean is that the query will choose the all the instructors who can teach 'Electronic Music Fundamentals' and 'EDM synthesis.' After that, the query will choose the instructors who can teach all three courses, including 'MIDI controllers'. 