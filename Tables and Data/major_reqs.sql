create table major_reqs (
	reqID int NOT NULL,
	majorID int NOT NULL,
	credits int NOT NULL,
	course1 int,
	course2 int,
	course3 int,
	primary key (reqID),
	foreign key (majorID) references major(majorID),
	foreign key (course1) references course(courseID),
	foreign key (course2) references course(courseID),
	foreign key (course3) references course(courseID)
);

insert into major_reqs (reqID, majorID, credits, course1, course2, course3)
values (1, 158, 20, 81674, 50468, 22492),
(2, 172, 20, 65677, 45922, 20211),
(3, 132, 18, 56047, 98568, 18415),
(4, 191, 15, 28910, 36511, 40998),
(5, 143, 12, 36789, 30604, 10783);
