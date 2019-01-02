create table system (
studentID int not null,
courseID int not null,
credits int not null,
letter_grade varchar(2),
points decimal, 
foreign key (studentID) references student(studentID),
foreign key (courseID) references course(courseID)
);

insert into system (studentID, courseID, credits, letter_grade, points)
values  (154089700, 56047, 4, 'A+', 4.0),
(154089700, 65677, 4, 'A-', 3.7),
(076171275, 65677, 4, 'B', 3.0),
(076171275, 56047, 4, 'A-', 3.7),
(502729452, 81674, 4, 'C', 2.0),
(502729452, 56047, 4, 'B+', 3.3),

(529373060, 81674, 4, 'A', 4.0),
(529373060, 28910, 3, 'B-', 2.7),

(814186377, 65677, 4, 'B-', 2.7),
(814186377, 56047, 4, 'A-', 3.7),

(750334592, 65677, 4, 'B', 3.0),
(750334592, 45922, 4, 'C+', 2.3),

(103080188, 65677, 4, 'D', 1.0),
(103080188, 28242, 4, 'C+', 2.3),

(854841447, 28910, 3, 'B', 3.0),
(854841447, 81674, 4, 'C+', 2.3),

(911142671, 65677, 4, 'A-', 3.7),
(911142671, 36789, 3, 'A', 4.0),

(633377035, 52789, 3, 'A+', 4.0),
(633377035, 56047, 4, 'B+', 3.3),

(944907445, 65677, 4, 'A+', 4.0),
(944907445, 81674, 4, 'A+', 4.0),

(796457286, 65677, 4, 'B+', 3.3),
(796457286, 52789, 3, 'B', 3.0),

(217580072, 81674, 4, 'A-', 3.7),
(217580072, 56047, 4, 'C+', 2.3),

(489669816, 56047, 4, 'B', 3.0),
(489669816, 36789, 3, 'C-', 1.7),

(069117559, 56047, 4, 'D', 1.0),
(069117559, 10783, 3, 'B', 3.0),

(154089700, 98568, 4, 'A-', 3.7),

(076171275, 96110, 3, 'B+', 3.3),

(502729452, 18415, 3, 'C+', 2.3),

(529373060, 20211, 4, 'B-', 2.7),

(814186377, 20211, 4, 'D', 1.0),

(750334592, 66134, 4, 'B', 3.0),

(103080188, 50468, 4, 'B+', 3.3),

(854841447, 36511, 3, 'A-', 3.7),

(911142671, 45922, 4, 'C-', 1.7),

(633377035, 66134, 4, 'C+', 2.3),

(944907445, 98568, 4, 'A+', 4.0),

(796457286, 30604, 3, 'B', 3.0),

(217580072, 39805, 3, 'A+', 4.0),

(489669816, 30604, 3, 'B-', 2.7),

(069117559, 18415, 3, 'B+', 3.3),

(154089700, 18415, 3, 'B+', 3.3),
(154089700, 40998, 3, 'A+', 4.0),

(076171275, 40998, 3, 'B-', 2.7),

(502729452, 66134, 4, 'C+', 2.3),
(502729452, 56047, 4, 'B+', 3.3),

(529373060, 65677, 4, 'C', 2.0),
(529373060, 66134, 4, 'B', 3.0),

(750334592, 66134, 4, 'D', 1.0),
(750334592, 56047, 4, 'C-', 1.7),

(103080188, 66134, 4, 'B-', 2.7),
(103080188, 18415, 3, 'A', 4.0),

(854841447, 66134, 4, 'F', 0.0),
(854841447, 40998, 3, 'B+', 3.3),

(633377035, 66134, 4, 'C+', 2.3),
(633377035, 22492, 4, 'B+', 3.3),

(944907445, 18415, 3, 'C', 2.0),
(944907445, 45922, 4, 'B', 3.0),

(796457286, 18415, 3, 'C-', 1.7),
(796457286, 18415, 3, 'A+', 4.0),

(217580072, 22492, 4, 'B', 3.0),
(217580072, 56047, 4, 'B+', 3.3),

(489669816, 45922, 4, 'C+', 2.3),
(489669816, 22492, 4, 'A', 4.0),

(069117559, 22492, 4, 'C', 2.0),
(069117559, 10783, 3, 'A+', 4.0),

(154089700, 39805, 3, 'C', 2.0),
(154089700, 22492, 4, 'B-', 2.7),

(076171275, 18415, 3, 'A', 4.0),
(076171275, 98568, 4, 'C', 2.0),

(502729452, 96110, 3, 'B-', 2.7),
(502729452, 74683, 3, 'C-', 1.7),

(529373060, 74683, 3, 'A+', 4.0),
(529373060, 39805, 3, 'B', 3.0),

(750334592, 74683, 3, 'A-', 3.7),
(750334592, 18415, 3, 'B', 3.0),

(103080188, 28910, 3, 'B-', 2.7),
(103080188, 39805, 3, 'A+', 4.0),

(854841447, 22492, 4, 'C', 2.0),
(854841447, 98568, 4, 'A-', 3.7),

(633377035, 74683, 3, 'C+', 2.3),
(633377035, 66134, 4, 'A', 4.0),

(944907445, 28910, 3, 'A+', 4.0),
(944907445, 39805, 3, 'B-', 2.7),

(796457286, 28910, 3, 'C+', 2.3),
(796457286, 18415, 3, 'A', 4.0),

(217580072, 74683, 3, 'C-', 1.7),
(217580072, 96110, 3, 'B', 3.0),

(489669816, 98568, 4, 'C', 2.0),
(489669816, 66134, 4, 'D+', 1.3),

(069117559, 39805, 3, 'A+', 4.0),
(069117559, 66134, 4, 'B', 3.0);
