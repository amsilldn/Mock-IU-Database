create table pre_reqs (
	course int NOT NULL,
	pre_req int NOT NULL,
	foreign key (course) references course(courseID),
	foreign key (pre_req) references course(courseID)
);

insert into pre_reqs (course, pre_req)
values (98568, 56047),
(45922, 65677),
(50468, 81674),
(96110, 36789),
(30604, 36789),
(20211, 45922),
(36511, 28910),
(40998, 36511),
(74683, 36511),
(10783, 36789),
(18415, 56047),
(39805, 81674),
(50468, 81674),
(22492, 50468);


