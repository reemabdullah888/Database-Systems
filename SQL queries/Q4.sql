-- I used livesql.oracle to solve the question https://livesql.oracle.com

drop table Instructor;
drop table Classes;
drop table temp;
CREATE TABLE Instructor ( 
ins_ID Integer NOT NULL,  
Ins_Name varchar(20) NOT NULL,  
Hourly_rate integer NOT NULL,  
PRIMARY KEY (ins_ID));


CREATE TABLE Classes( 
CID Integer NOT NULL, 
ClassName varchar(20) NOT NULL, 
EnrolledStudent integer NOT NULL, 
ins_ID integer, 
PRIMARY KEY(CID));

INSERT INTO Instructor VALUES (1, 'Reem', 12);
INSERT INTO Instructor VALUES (2, 'Muhammed', 16);
INSERT INTO Instructor VALUES (3, 'Yasmin',12);
INSERT INTO Instructor VALUES (4, 'Nora', 15);


INSERT INTO Classes VALUES (101, 'DB', 200,1);
INSERT INTO Classes VALUES (102, 'ML', 120,2);
INSERT INTO Classes VALUES (103, 'Algorithm',55,1);
INSERT INTO Classes VALUES (100, 'Statistic', 80,2);
INSERT INTO Classes VALUES (122, 'Python', 120,3);
INSERT INTO Classes VALUES (150, 'DataAtScale',170,1);

-- I created a temporary table to save the total number of students who registered in different courses and group by instructor Id. 
-- The purpose is to know for each instructor how many students in all the courses he teaches 
CREATE TABLE temp AS (SELECT SUM(EnrolledStudent)AS Sum_enrolled_Students, ins_ID FROM Classes GROUP BY ins_ID);
SELECT * FROM temp;

-- here I applied the equation of calculating the bonus. 
SELECT ins.Hourly_rate*tm.Sum_enrolled_Students*0.1 AS bonus,ins.Hourly_rate,tm.Sum_enrolled_Students 
FROM temp tm, Instructor ins WHERE tm.ins_ID=ins.ins_ID;
-- here I combined my temporary table where it tells me each professor how many students they have, and instructor table to get for each instructor what is his hourly rate to calculate the final bonus. 
SELECT MAX(ins.Hourly_rate*tm.Sum_enrolled_Students*0.1)AS bonus FROM temp tm, Instructor ins WHERE tm.ins_ID=ins.ins_ID; 


