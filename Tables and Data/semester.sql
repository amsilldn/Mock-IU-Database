create table semester (
	semID VARCHAR(4) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	PRIMARY KEY (semID)
);

insert into semester (semID, start_date, end_date) 
values ('FA16', '2016/09/16', '2016/12/18'),
('SP17', '2017/01/09', '2017/05/03'),
('FA17', '2017/08/19', '2017/12/17'),
('SP18', '2018/01/15', '2018/05/17');