create table course (
	courseID INT not null,
	course_num INT not null,
	title VARCHAR(50) not null,
	credits INT not null,
	subject VARCHAR(50) not null,
	description TEXT,
	primary key (courseID)
);

insert into course (courseID, course_num, title, credits, subject, description) 
values (56047, 126, 'Introduction to Informatics', 4, 'INFO', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.'),
(65677, 134, 'Introduction to Computer Science', 4, 'CSCI', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.'),
(81674, 119, 'Introduction to Engineering', 4, 'ENGR', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. '),
(36789, 103, 'English 1', 3, 'ENGL', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.'),
(52789, 130, 'Finite Mathematics', 3, 'MATH', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.'),
(98568, 229, 'Python', 4, 'INFO', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.'),
(45922, 297, 'Java', 4, 'CSCI', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.'),
(66134, 486, 'Prototyping', 4, 'INFO', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.'),
(96110, 270, 'Introduction to Fiction', 3, 'ENGL', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.'),
(30604, 325, 'Rhetorical Criticism', 3, 'ENGL', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.'),
(39805, 372, 'Networking Systems', 3, 'ENGR', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(20211, 357, 'C++', 4, 'CSCI', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.'),
(50468, 232, 'Systems', 4, 'ENGR', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'),
(22492, 293, 'Material Regulations', 4, 'ENGR', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.'),
(36511, 253, 'Calculus I', 3, 'MATH', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.'),
(18415, 308, 'Web Design', 3, 'INFO', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.'),
(74683, 318, 'Linear Algebra', 3, 'MATH', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.'),
(10783, 686, 'Professional Writing', 3, 'ENGL', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.'),
(40998, 678, 'Calculus II', 3, 'MATH', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.'),
(28910, 271, 'Pre Calculus', 3, 'MATH', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.');
