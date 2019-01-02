create table room (
	roomID int NOT NULL,
	room_num INT NOT NULL,
	capacity INT,
	bldgID VARCHAR(50) NOT NULL,
	type VARCHAR(50),
	primary key (roomID),
	foreign key (bldgID) references building(bldgID)
);

insert into room (roomID, room_num, capacity, type, bldgID) 
values (117, 3500, 183, 'Classroom', 'IF'),
(141, 1813, 227, 'Classroom', 'IF'),
(285, 3477, 43, 'Classroom', 'I2'),
(446, 3674, 119, 'Classroom', 'I2'),
(332, 1251, 216, 'Classroom', 'I'),
(898, 2942, 47, 'Classroom', 'I'),
(023, 3403, 41, 'Classroom', 'BH'),
(567, 3267, 120, 'Classroom', 'BH'),
(324, 3461, 15, 'Office', 'IF'),
(680, 2939, 5, 'Office', 'I'),
(437, 1688, 12, 'Office', 'BH'),
(129, 3569, 5, 'Office', 'I2'),
(043, 1593, 20, 'Office', 'BH'),
(784, 3185, 5, 'Office', 'IF'),
(928, 1625, 7, 'Office', 'I2'),
(964, 2580, 5, 'Office', 'IF'),
(358, 821, 15, 'Office', 'I'),
(321, 1518, 15, 'Office', 'IF');

