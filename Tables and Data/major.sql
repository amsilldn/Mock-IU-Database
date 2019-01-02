create table major (
	majorID int NOT NULL,
	title VARCHAR(50) NOT NULL,
	deptID VARCHAR(4) not null, 
	credit_reqs int not null,
	description TEXT,
	PRIMARY KEY (majorID),
	foreign key (deptID) references department(deptID)
);

insert into major (majorID, title, deptID, credit_reqs, description)
values (158, 'Engineering', 'ENGR', 20, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. '),
(172, 'Computer Science', 'CSCI', 20, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. '),
(132, 'Informatics', 'INFO', 18, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. '),
(191, 'Mathematics', 'MATH', 15, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. '),
(143, 'English', 'ENGL', 12, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
