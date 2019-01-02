create table department (
	deptID varchar(50) NOT NULL,
	name VARCHAR(50),
	chairperson int not null,
	primary key (deptID),
	foreign key (chairperson) references employee(employeeID)
);

insert into department (deptID, name, chairperson) 
values ('INFO', 'Informatics', 413593707),
('CSCI', 'Computer Science', 710673301),
('ENGR', 'Engineering', 098403768),
('ENGL', 'English', 194401812),
('MATH', 'Mathematics', 322629082);
