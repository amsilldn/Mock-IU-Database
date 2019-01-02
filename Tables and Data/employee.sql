create table employee (
	employeeID int NOT NULL,
	fname VARCHAR(50) NOT NULL,
	lname VARCHAR(50) NOT NULL,
	type VARCHAR(50) NOT NULL,
	rank VARCHAR(50),
	room_num INT,
	category VARCHAR(50),
	hire_date DATE,
	office_phone VARCHAR(50),
	email varchar(50),
	PRIMARY KEY (employeeID)
);

insert into employee (employeeID, fname, lname, type, rank, room_num, category, hire_date, office_phone, email) 
values (413593707, 'Andi', 'Billingsly', 'Faculty', 'Associate Professor', 1233, 'Informatics', '04/06/2003', '180-892-2961', 'abillin@iu.edu'),
(710673301, 'Hazel', 'Menicomb', 'Faculty', 'Professor', 2965, 'Computer Science', '06/24/2009', '912-663-9427', 'hmenico@iu.edu'),
(098403768, 'Aurie', 'Mattiassi', 'Faculty', 'Professor', 424, 'Engineering', '02/12/1999', '608-251-7758', 'amattia@iu.edu'),
(194401812, 'Christoffer', 'Mendenhall', 'Faculty', 'Lecturer', 1540, 'English', '05/05/2008', '401-206-6902', 'chmende@iu.edu'),
(322629082, 'Alford', 'Signore', 'Faculty', 'Associate Professor', 2711, 'Mathematics', '10/17/1992', '754-457-2682', 'asingno@iu.edu'),
(349151077, 'Stephenie', 'Hainsworth', 'Faculty', 'Lecturer', 1395, 'Informatics', '04/16/2016', '408-325-2042', 'shainsw@iu.edu'),
(656958756, 'Ki', 'Guidi', 'Faculty', 'Associate Professor', 1557, 'Computer Science', '06/26/2011', '638-944-8218', 'kguidi@iu.edi'),
(813508158, 'Saleem', 'Haszard', 'Faculty', 'Professor', 983, 'English', '12/19/2009', '491-785-4914', 'shaszar@iu.edu'),
(671624053, 'Cecil', 'Kennerknecht', 'Faculty', 'Lecturer', 1492, 'Mathematics', '06/05/2010', '258-862-0577', 'ckenne@iu.edu'),
(640480676, 'Aldo', 'Creane', 'Faculty', 'Professor', 1503, 'Engineering', '09/11/2013', '279-241-3504', 'acrean@iu.edu');

insert into employee(employeeID, fname, lname, type, room_num, category, hire_date, office_phone, email)
values (099788766, 'Pauli', 'Jurewicz', 'Advisor', 3098, 'Informatics', '10/26/2006', '800-168-0797', 'pjurewi@iu.edu'),
(068527234, 'Sutherland', 'Spire', 'Advisor', 2090, 'Computer Science', '01/11/2011', '515-916-7136', 'suspir@iu.edu'),
(419861936, 'Michael', 'Pawlyn', 'Advisor', 1379, 'Engineering', '05/03/1997', '522-599-2719', 'mpawlyn@iu.edu'),
(181484192, 'Nils', 'Simnor', 'Advisor', 2374, 'English', '10/01/1997', '124-301-1471', 'nsimno@iu.edu'),
(239520947, 'Marilin', 'Mancktelow', 'Advisor', 397, 'Mathematics', '06/28/2012', '453-656-9448', 'marmanc@iu.edu');


update employee
set office=324 where employeeID=349151077;
update employee
set office=324 where employeeID=413593707;
update employee
set office=608 where employeeID=099788766;
update employee
set office=437 where employeeID=710673301;
update employee
set office=437 where employeeID=656958756;
update employee
set office=129 where employeeID=068527234;
update employee
set office=043 where employeeID=098403768;
update employee
set office=043 where employeeID=640480676;
update employee
set office=784 where employeeID=419861936;
update employee
set office=928 where employeeID=181484192;
update employee
set office=964 where employeeID=239520947;
update employee
set office=358 where employeeID=194401812;
update employee
set office=358 where employeeID=813508158;
update employee
set office=321 where employeeID=322629082;
update employee
set office=321 where employeeID=671624053;
