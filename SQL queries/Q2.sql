-- I used livesql.oracle to solve the question https://livesql.oracle.com


drop table enrollment;

CREATE TABLE enrollment (
SID INTEGER NOT NULL,
ClassName VARCHAR(50) NOT NULL,
Grade CHAR(1),
PRIMARY KEY(SID, ClassName)
);


INSERT INTO enrollment VALUES (123, 'Synthesis algorithms', 'A');
INSERT INTO enrollment VALUES (123, 'EDM synthesis', 'B');
INSERT INTO enrollment VALUES (123, 'MIDI controllers', 'B');
INSERT INTO enrollment VALUES (662, 'Sound mixing', 'B');
INSERT INTO enrollment VALUES (662, 'EDM synthesis', 'A');
INSERT INTO enrollment VALUES (662, 'Electronic Music Fundamentals', 'A');
INSERT INTO enrollment VALUES (662, 'MIDI controllers', 'B');
INSERT INTO enrollment VALUES (345, 'MIDI controllers', 'A');
INSERT INTO enrollment VALUES (345, 'Electronic Music Fundamentals', 'B');
INSERT INTO enrollment VALUES (345, 'EDM synthesis', 'A');
INSERT INTO enrollment VALUES (555, 'EDM synthesis', 'B');
INSERT INTO enrollment VALUES (555, 'Electronic Music Fundamentals', 'B');
INSERT INTO enrollment VALUES (213, 'Electronic Music Fundamentals', 'A');



SELECT ClassName , count(*) AS Total FROM enrollment GROUP BY ClassName ORDER BY Total DESC;


-- In this question, I created a composite key(SID, ClassName) because the student Id could repeat many times as he can register in multiple classes, and The Class name will also
-- be repeated as many students will register in the same class. But, the combination of the two keys will be unique and will not repeat; therefore, it is the perfect Kyes. 

