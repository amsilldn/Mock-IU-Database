create table major_dept (
	majorID int NOT NULL,
	deptID varchar(50) NOT NULL,
	foreign key (majorID) references major(majorID),
	foreign key (deptID) references department(deptID)
);

insert into major_dept(majorID, deptID)
values (158, 'ENGR'),
(172, 'CSCI'),
(132, 'INFO'),
(191, 'MATH'),
(143, 'ENGL');