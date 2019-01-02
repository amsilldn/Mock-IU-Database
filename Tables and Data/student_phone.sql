create table student_phone(
	studentID int NOT NULL,
	phoneID int NOT NULL,
	phone VARCHAR(50) NOT NULL,
	type VARCHAR(50),
	primary key (phoneID),
	foreign key (studentID) references student(studentID)
);

insert into student_phone (studentID, phoneID, phone, type) 
values (154089700, 447, '395-352-7438', 'Cellular'),
(076171275, 536, '170-105-2523', 'Cellular'),
(502729452, 223, '188-506-7725', 'Cellular'),
(502729452, 684, '668-855-6146', 'Home'),
(529373060, 098, '567-479-0693', 'Cellular'),
(814186377, 125, '418-472-5061', 'Cellular'),
(750334592, 678, '243-741-9729', 'Cellular'),
(103080188, 932, '112-660-7265', 'Cellular'),
(103080188, 877, '572-507-0909', 'Home'),
(854841447, 227, '265-484-5313', 'Cellular'),
(911142671, 445, '830-150-6009', 'Cellular'),
(633377035, 487, '171-680-7712', 'Cellular'),
(944907445, 926, '846-284-8818', 'Cellular'),
(944907445, 128, '354-823-9205', 'Home'),
(796457286, 336, '983-890-6185', 'Cellular'),
(217580072, 864, '882-843-4379', 'Cellular'),
(489669816, 023, '162-928-9815', 'Cellular'),
(069117559, 334, '954-343-2049', 'Cellular');
