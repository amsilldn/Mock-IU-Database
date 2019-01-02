create table student_email(
	studentID int NOT NULL,
	emailID varchar (10) not null,
	email varchar (50) NOT NULL,
	type varchar (10),
	primary key (emailID),
	foreign key (studentID) references student(studentID)
);

insert into student_email(studentID, emailID, email, type)
values (154089700, 'P123', 'ddugga@iu.edu', 'school'),
(154089700, 'S123', 'rocketman72@gmail.com', 'personal'),
(076171275, 'P124', 'grbrug@iu.edu', 'school'),
(502729452, 'P125', 'bshingf@iu.edu', 'school'),
(529373060, 'P126', 'dpatesh@iu.edu', 'school'),
(529373060, 'S126', 'dpatesh@company.com', 'work'),
(529373060, 'T126', 'doglover34@gmail.com', 'personal'),
(814186377, 'P127', 'eskittl@iu.edu', 'school'),
(750334592, 'P128', 'kwhorl@iu.edu', 'school'),
(103080188, 'P129', 'bsugarm@iu.edu', 'school'),
(854841447, 'P130', 'harblew@iu.edu', 'school'),
(911142671, 'P131', 'shetask@iu.edu', 'school'),
(911142671, 'S131', 'lipstickgal@yahoo.com', 'personal'),
(633377035, 'P132', 'arlforre@iu.edu', 'school'),
(944907445, 'P133', 'dbiswell@iu.edu', 'school'),
(796457286, 'P134', 'thwagen@iu.edu', 'school'),
(217580072, 'P135', 'churri@iu.edu', 'school'),
(217580072, 'S135', 'surferdude4004@live.com', 'personal'),
(489669816, 'P136', 'gablonf@iu.edu', 'school'),
(069117559, 'P137', 'gdulany@iu.edu', 'school');
