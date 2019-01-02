create table student (
	studentID int NOT NULL,
	fname VARCHAR(50) NOT NULL,
	lname VARCHAR(50) NOT NULL,
	parent_name VARCHAR(50),
	parent_phone VARCHAR(50),
	street VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	zip VARCHAR(10),
	PRIMARY KEY (studentID));

insert into student (studentID, fname, lname, parent_name, parent_phone, street, city, state, zip) 
values (154089700, 'Dominic', 'Duggary', 'Dominic Duggary', '231-128-9258', '6 Brentwood', 'Muskegon', 'MI', '49444'),
(076171275, 'Griffie', 'Bruggen', 'Griffie Bruggen', '920-375-9210', '86952 Hovde', 'Green Bay', 'WI', '54313'),
(502729452, 'Barbee', 'Shingfield', 'Barbee Shingfield', '773-813-4790', '9 Anhalt', 'Chicago', 'IL', '60636'),
(529373060, 'Dare', 'Petasch', 'Dare Petasch', '805-551-1155', '62604 Londonderry', 'Santa Barbara', 'CA', '93111'),
(814186377, 'Estell', 'Kittless', 'Estell Kittless', '336-234-6709', '2 Blue Bill Park', 'Greensboro', 'NC', '27409'),
(750334592, 'Kale', 'Whorlow', 'Kale Whorlow', '502-565-4797', '69335 Sullivan', 'Louisville', 'KY', '40215'),
(103080188, 'Brendan', 'Sugarman', 'Brendan Sugarman', '718-923-4430', '70 Fallview', 'New York City', 'NY', '10024'),
(854841447, 'Harald', 'Blewitt', 'Harald Blewitt', '952-956-8711', '67 Arkansas', 'Minneapolis', 'MN', '55402'),
(911142671, 'Sheelah', 'Tasker', 'Sheelah Tasker', '303-156-9514', '827 Bultman', 'Boulder', 'CO', '80310'),
(633377035, 'Arleen', 'Forrestor', 'Arleen Forrestor', '808-560-9893', '8604 Tony', 'Honolulu', 'HI', '96835'),
(944907445, 'Dodi', 'Biswell', 'Dodi Biswell', '412-976-2591', '68530 Paget', 'Pittsburgh', 'PA', '15215'),
(796457286, 'Thurstan', 'Wagen', 'Thurstan Wagen', '314-468-6209', '89 Golf View', 'Saint Louis', 'MO', '63158'),
(217580072, 'Chev', 'Hurrion', 'Chev Hurrion', '925-970-4077', '227 Bartelt', 'Concord', 'CA', '94522'),
(489669816, 'Gardie', 'Blonfield', 'Gardie Blonfield', '712-695-7304', '472 Stone Corner', 'Sioux City', 'IA', '51110'),
(069117559, 'Garold', 'Dulany', 'Garold Dulany', '717-988-0285', '54028 Mallory', 'Lancaster', 'PA', '17605');
