create table grade (
	letter_grade varchar(2) not null,
	points decimal not null,
	primary key (letter_grade)
);

insert into grade (letter_grade, points)
values ('A+', 4.0),
('A', 4.0),
('A-', 3.7),
('B+', 3.3),
('B', 3.0),
('B-', 2.7),
('C+', 2.3),
('C', 2.0),
('C-', 1.7),
('D+', 1.3),
('D', 1.0),
('D-', 0.7),
('F', 0.0);