create table feature (
	featID int NOT NULL,
	feature varchar(50) NOT NULL,
	notes varchar(50),
	primary key (featID)
);

insert into feature (featID, feature)
values (147, 'Computer'),
(328, 'Projector'),
(234, 'Theater Style'),
(486, 'Microphone'),
(582, 'Screen'),
(336, 'Tables and Chairs'),
(874, '3D Printer'),
(972, 'Laser Cutter'),
(421, 'Tools'),
(587, 'Shelves'),
(774, 'Desks');
