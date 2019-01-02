create table student_major (
	studentID int NOT NULL,
	majorID int NOT NULL,
	FOREIGN KEY (studentID) REFERENCES student(studentID),
	FOREIGN KEY (majorID) REFERENCES major(majorID)
);

insert into student_major(studentID, majorID)
values(154089700, 132),
(076171275, 158),
(502729452, 172),
(529373060, 158),
(814186377, 172),
(814186377, 191),
(750334592, 132),
(750334592, 143),
(750334592, 172),
(103080188, 132),
(854841447, 191),
(911142671, 172),
(911142671, 158),
(633377035, 191),
(944907445, 158),
(796457286, 143),
(217580072, 158),
(489669816, 132),
(069117559, 132),
(069117559, 143),
(069117559, 191);

/*
insert into student_advisor(studentID, advisorID)
values (154089700, 099788766), info 132
(076171275, 419861936), engr 158
(502729452, 068527234), csci 172
(529373060, 419861936), engr 158
(814186377, 068527234), csci 172
(814186377, 239520947), math 191
(750334592, 099788766), info 132
(750334592, 181484192), engl 143
(750334592, 068527234), csci 172
(103080188, 099788766), info 132
(854841447, 239520947), math 191
(911142671, 068527234), csci 172
(911142671, 419861936), engr 158
(633377035, 239520947), math 191
(944907445, 419861936), engr 158
(796457286, 181484192), engl 143
(217580072, 419861936), engr 158
(489669816, 099788766), info 132
(069117559, 099788766), info 132
(069117559, 181484192), engl 143
(069117559, 239520947); math 191
*/