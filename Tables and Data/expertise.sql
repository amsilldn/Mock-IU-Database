create table expertise (
	advisorID int not null,
	majorID int not null,
	foreign key (advisorID) references employee(employeeID),
	foreign key (majorID) references major(majorID)
);

insert into expertise (advisorID, majorID)
values (099788766, 132),
(099788766, 172),
(068527234, 172),
(068527234, 158),
(419861936, 158),
(181484192, 143),
(239520947, 191),
(239520947, 172);
