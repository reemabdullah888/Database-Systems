-- I used livesql.oracle to solve the question https://livesql.oracle.com

-- I used livesql.oracle to solve the question https://livesql.oracle.com

drop table TrackProject;
CREATE TABLE TrackProject
(PID VARCHAR(20) NOT NULL,
Step INTEGER NOT NULL,
Status CHAR(1) NOT NULL,
PRIMARY KEY(PID,Step));

INSERT INTO TrackProject VALUES ('p100', 0, 'C');
INSERT INTO TrackProject VALUES ('P100', 1, 'W');
INSERT INTO TrackProject VALUES ('P100', 2, 'W');
INSERT INTO TrackProject VALUES ('P201', 0, 'C');
INSERT INTO TrackProject VALUES ('P201', 1, 'C');
INSERT INTO TrackProject VALUES ('P333', 0, 'W');
INSERT INTO TrackProject VALUES ('P333', 1, 'W');
INSERT INTO TrackProject VALUES ('P333', 2, 'W');
INSERT INTO TrackProject VALUES ('P333', 3, 'W');



SELECT DISTINCT PID FROM TrackProject WHERE Step=0 and Status='C' AND PID NOT IN (select PID FROM TrackProject where Step!=0 AND Status='C');

-- Here I wnat to make sure that I do not include any project which finish step 1 or step 2; therefore I created a subquary that result all the projects Id
-- that finish eather step 1 or zero . After that I excluded all the PID which exist in the output result of the subquary. 
-- My purpose is to oly have projects id whose still did not finish step one or two . Only completed step zero