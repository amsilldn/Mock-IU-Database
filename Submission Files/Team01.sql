/*Amanda Sill
Grant Sullivan
Julian Dietrich
Zichuang Xie*/

/*4a) Produce a list of students who are eligible to register for a specified course that has a prerequisite.*/
SELECT DISTINCT CONCAT(s.fname, ' ', s.lname) as Student
FROM student as s, system as sy
WHERE s.studentID=sy.studentID AND sy.courseID in (SELECT pre_req 
FROM pre_reqs
WHERE course = '96110'); 



/*3b) Produce a list of faculty who have never taught a *specified course * */
SELECT distinct CONCAT(e.fname, ' ', e.lname) as Faculty 
FROM employee as e
WHERE NOT EXISTS (
    SELECT * 
FROM section as s
    WHERE e.employeeID = s.facultyID AND s.courseID = '36511')
AND e.type = 'Faculty' ;

/*6c) Produce a list of students and faculty who were in a *particular building* at a *particular time*. 
Also include in the list faculty and advisors who have offices in that building.*/
Select distinct CONCAT(s.fname,' ',s.lname) as Name, 'Student' as Type 
From student as s, participate as p, section as se, building as b
Where s.studentID = p.studentID and p.sectionID = se.sectionID 
and b.bldgID  = 'BH'
and se.start_time = "8:29 AM"
UNION 
Select distinct CONCAT(e.fname,' ', e.lname) as Name, 'Faculty' as Type
From employee as e, building as b, section as se
Where e.type = 'Faculty'
and e.employeeID = se.facultyID 
and b.bldgID  = 'BH'
and se.start_time = '8:29 AM'
UNION
SELECT distinct CONCAT(e.fname,' ', e.lname) as Name, 'Office' as Type
From employee as e, room as r, building as b
WHERE (e.type = 'Faculty' OR e.type = 'Advisor')
AND e.office = r.roomID
AND r.bldgID = b.bldgID
AND b.bldgID = 'BH';


/*8b) Produce an alphabetical list of students who have not attended during the most recent semester along with their 
parents’ phone number.*/
SELECT DISTINCT CONCAT(s.fname, ' ', s.lname) as Student, s.parent_phone as Parent_phone
FROM student as s
WHERE NOT EXISTS (
    SELECT * FROM section as se, participate as p
WHERE s.studentID = p.studentID 
AND se.sectionID = p.sectionID
AND se.semID = 'FA17')
ORDER BY s.lname;

/*2b) Produce a list of rooms that are equipped with *some feature*—e.g., “wired instructor
station”—that are available at a particular time.*/
SELECT DISTINCT CONCAT(b.bldgID, ' ', r.room_num) as Room, r.roomID
FROM building as b, room as r, room_feat as rf, feature as f, section as se
WHERE r.roomID=rf.roomID
AND b.bldgID=r.bldgID
AND f.featID=rf.featID
AND r.roomID=se.roomID
AND f.featID=234
AND se.meet_days='TR'
AND se.end_time = '1:15 PM';

/*Additional 1: Provide a list of students taking a certain major and their contact information 
(email - personal, work, or school, and phone - Cellular or Home) in alphabetical order*/
SELECT DISTINCT CONCAT(s.fname, ' ', s.lname) as Student, m.title as Major, se.email as Email, sp.phone as Contact
FROM student as s, major as m, student_major as sm, student_email as se, student_phone as sp
WHERE s.studentID = sp.studentID
AND sp.studentID = se.studentID
AND se.studentID = sm.studentID
AND sm.majorID = m.majorID
AND m.title = 'Informatics'
AND sp.type = 'Cellular'
AND se.type = 'school'
ORDER BY Student;

/*Additional 2:  1a Produce a roster for a *specified section* sorted by student’s last name, first name (5 points)*/
SELECT DISTINCT CONCAT(s.fname,' ',s.lname) as Name 
FROM student as s, participate as p, section as se, building as b
WHERE s.studentID = p.studentID AND p.sectionID = se.sectionID 
AND p.sectionID=37119
ORDER BY s.lname DESC, s.fname ASC;
