create table building (
	bldgID VARCHAR(50) NOT NULL,
	name VARCHAR (50) NOT NULL,
	num VARCHAR(50),
	street VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	zip VARCHAR(50),
	primary key (bldgID)
);

insert into building (bldgID, name, num, street, city, state, zip) 
values ('IF', 'Luddy Hall', '114', 'Linden', 'Bloomington', 'IN', '47401'),
('I2', 'Informatics East', '3', 'Bobwhite', 'Bloomington', 'IN', '47401'),
('I', 'Informatics West', '6', 'Manitowish', 'Bloomington', 'IN', '47401'),
('BH', 'Balantine Hall', '5825', 'Grayhawk', 'Bloomington', 'IN', '47401');
