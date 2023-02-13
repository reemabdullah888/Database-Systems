-- I used livesql.oracle to solve the question https://livesql.oracle.com

-- Solution of the first problem: 

drop table ProjectRoomBookings;

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
Check(endTime>startTime),
PRIMARY KEY (roomNum, startTime));


INSERT INTO ProjectRoomBookings VALUES (1,3,4,'WeCanDoIt');
INSERT INTO ProjectRoomBookings VALUES (1,5,3,'WomenPower');


-- Justification :
-- I have added a check condition while creating my table to ensure that the endTime is always greater than the startTime. 
-- The start time will not exceed the end time because (Check(endTime>startTime)) will allow only the values which have the end of the reservation greater than the start of the reservation.
-- For example; the first insertion for WeCanDoIt group is successfully inserted to ProjectRoomBookings. But The second insertion for WomenPower group will NOT be inserted because it violates the check constraint. 



-- Solution of the second problem: 

-- To check that booking a project room at a certain time does not overlap with an existing booking, I can resolve this matter using the functionality of Trigger. 
-- I can create a trigger to insert the (startTime and endTime)of the desired room(the room that wanted to be booked). 
-- For example: if a group books a room for 2 hours, the input will make 2 different entries. To make it more clear:
-- if 'WeCanDoIt' group books room 1 from 1 pm to 3 pm, the trigger will insert two inputs. The first input (from 1 pm to 2 pm), and the second input (from 2 pm to 3 pm). 
-- This will help us to check if there is any time overlapping in case of booking the same room. 




