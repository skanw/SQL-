-- RESETS
--drop table Employee;
--drop table Billing;
--drop table Finance;
--drop table Headquarter;
--drop table Customer;
--drop table Product;


-- Create Headquarter table
create table Headquarter (
    did INT NOT NULL PRIMARY KEY,
    departName VARCHAR(25) NOT NULL,
    head_manager VARCHAR(25) NOT NULL,
    entries INT
);

-- Create Employee table
create table Employee (
	eid INT NOT NULL PRIMARY KEY,
    did INT NOT NULL,
	firstName VARCHAR(25) NOT NULL,
	lastName VARCHAR(25) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	phone VARCHAR(25) NOT NULL UNIQUE,
	region VARCHAR(15) NOT NULL,
	position VARCHAR(25) NOT NULL,
	salary NUMBER NOT NULL,
	CONSTRAINT FK_did
	FOREIGN KEY (did) REFERENCES Headquarter(did)
);

-- Create Product table
create table Product (
    pid INT NOT NULL PRIMARY KEY,
    energyType VARCHAR(15) NOT NULL UNIQUE,
    rate VARCHAR(20) NOT NULL
);


-- Create Customer table
create table Customer (
	cid INT NOT NULL PRIMARY KEY,
	firstName VARCHAR(25) NOT NULL,
	lastName VARCHAR(25) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	phone VARCHAR(15) NOT NULL UNIQUE,
	address VARCHAR(50) NOT NULL UNIQUE,
	region VARCHAR(15) NOT NULL,
    regDate DATE NOT NULL,
    energyType VARCHAR(15) NOT NULL,
    CONSTRAINT FK_energyType
    FOREIGN KEY (energyType) REFERENCES Product(energyType)
);

-- Create Billing table
create table Billing (
	invoiceid INT NOT NULL PRIMARY KEY,
	cid INT NOT NULL,
	usage INT NOT NULL,
	dueAmount NUMBER NOT NULL,
	dueByDate DATE NOT NULL,
	billingPeriod INT NOT NULL,
    CONSTRAINT FK_cid FOREIGN KEY (cid) REFERENCES Customer(cid)
);


-- Create Finance table
create table Finance (
	entryid INT NOT NULL PRIMARY KEY,
	materials_costs NUMBER NOT NULL,
	maint_costs NUMBER NOT NULL,
	op_costs NUMBER NOT NULL,
	marketing_costs NUMBER NOT NULL,
	sales_gross NUMBER NOT NULL,
	payroll NUMBER NOT NULL,
	sales_net NUMBER NOT NULL,
	period INT NOT NULL UNIQUE
);


-- POPULATE THE PRODUCT TABLE
insert into Product (pid, energyType, rate) values (1, 'Crude Oil', '$125/barrel');
insert into Product (pid, energyType, rate) values (2, 'Natural Gas', '$0.065/cubic meter');
insert into Product (pid, energyType, rate) values (3, 'Solar', '$0.42/kWh');
insert into Product (pid, energyType, rate) values (4, 'Nuclear', '$0.115/kWh');

-- POPULATE THE HEADQUARTER TABLE
insert into Headquarter (did, departName, head_manager, entries) values (6, 'Employee', 'Wilmer Pryor', 0);
insert into Headquarter (did, departName, head_manager, entries) values (5, 'Product', 'Perl Biffen', 0);
insert into Headquarter (did, departName, head_manager, entries) values (4, 'Customer', 'Bent Garmston', 0);
insert into Headquarter (did, departName, head_manager, entries) values (3, 'Billing', 'Rickard Jillett', 0);
insert into Headquarter (did, departName, head_manager, entries) values (2, 'Finance', 'Anallese Yannikov', 0);
insert into Headquarter (did, departName, head_manager, entries) values (1, 'Headquarter', 'Dyan Bridgewater', 0);

-- POPULATE THE EMPLOYEE TABLE
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (1, 1, 'Dyan', 'Bridgewater', 'dbridgewater0@disqus.com', '879-239-2890', 'Toronto', 'CEO', 355528);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (2, 2, 'Anallese', 'Yannikov', 'ayannikov1@usda.gov', '606-338-0739', 'Ottawa', 'CFO', 415874);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (3, 3, 'Rickard', 'Jillett', 'rjillett2@cpanel.net', '102-303-0284', 'Toronto', 'COO', 315571);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (4, 4, 'Bent', 'Garmston', 'bgarmston3@lycos.com', '640-672-5195', 'Windsor', 'CIO', 284515);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (5, 5, 'Perl', 'Biffen', 'pbiffen4@miitbeian.gov.cn', '127-925-0815', 'Windsor', 'CMO', 349165);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (6, 6, 'Wilmer', 'Pryor', 'wpryor5@rediff.com', '742-573-1102', 'Toronto', 'Manager', 302169);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (7, 1, 'Charil', 'Petren', 'cpetren6@blogs.com', '169-446-0998', 'Windsor', 'Secretary', 195916);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (8, 6, 'Fransisco', 'Lowdeane', 'flowdeane7@shareasale.com', '321-185-5081', 'Ottawa', 'Secretary', 138056);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (9, 2, 'Opaline', 'Blenkharn', 'oblenkharn8@mapquest.com', '413-823-9431', 'Toronto', 'Electrical Technician', 150542);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (10, 2, 'Julian', 'Gimenez', 'jgimenez9@who.int', '397-337-8868', 'Ottawa', 'Secretary', 232150);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (11, 2, 'Annalise', 'Maciejewski', 'amaciejewskia@house.gov', '693-492-1734', 'Windsor', 'Electrical Technician', 203962);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (12, 6, 'Zebedee', 'Firbank', 'zfirbankb@trellian.com', '547-340-9063', 'Windsor', 'Engineer', 156484);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (13, 4, 'Thekla', 'Ravel', 'travelc@exblog.jp', '433-742-5995', 'Ottawa', 'Engineer', 76731);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (14, 6, 'Giraud', 'Fidoe', 'gfidoed@reuters.com', '732-954-6275', 'Ottawa', 'Power Plant Operator', 240975);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (15, 5, 'Markus', 'Kruszelnicki', 'mkruszelnickie@wisc.edu', '426-370-8274', 'Toronto', 'Engineer', 190265);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (16, 4, 'Verla', 'Bode', 'vbodef@about.me', '323-622-5481', 'Toronto', 'Actuary', 164404);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (17, 2, 'Glendon', 'Tacey', 'gtaceyg@walmart.com', '969-838-0999', 'Ottawa', 'Secretary', 154170);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (18, 4, 'Pen', 'O''Mailey', 'pomaileyh@state.tx.us', '253-119-7689', 'Ottawa', 'Secretary', 123808);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (19, 6, 'Tobe', 'Kovnot', 'tkovnoti@live.com', '333-326-9196', 'Windsor', 'Actuary', 104753);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (20, 3, 'Vinson', 'Godley', 'vgodleyj@cargocollective.com', '819-828-9122', 'Ottawa', 'Power Plant Operator', 84075);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (21, 3, 'Bess', 'Durham', 'bdurhamk@bigcartel.com', '176-791-0435', 'Ottawa', 'Business Analyst', 245673);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (22, 1, 'Stormie', 'Rumsby', 'srumsbyl@tripod.com', '388-507-4624', 'Toronto', 'Engineer', 99235);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (23, 5, 'Cori', 'Dybald', 'cdybaldm@unicef.org', '460-653-3086', 'Ottawa', 'Engineer', 190584);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (24, 1, 'Ned', 'Pley', 'npleyn@blinklist.com', '809-984-5994', 'Toronto', 'Electrical Technician', 117444);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (25, 1, 'Gerek', 'Denness', 'gdennesso@nationalgeographic.com', '884-255-7852', 'Windsor', 'Engineer', 175186);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (26, 5, 'Tabb', 'Hallstone', 'thallstonep@pcworld.com', '978-506-9149', 'Toronto', 'Actuary', 191741);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (27, 2, 'Wyatan', 'Poultney', 'wpoultneyq@marriott.com', '132-445-1481', 'Windsor', 'Actuary', 145039);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (28, 4, 'Siobhan', 'Simmen', 'ssimmenr@creativecommons.org', '251-922-0644', 'Windsor', 'Electrical Technician', 136764);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (29, 6, 'Rustin', 'Hiddy', 'rhiddys@ted.com', '867-569-6926', 'Ottawa', 'Secretary', 235547);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (30, 5, 'Jacob', 'Kidner', 'jkidnert@usatoday.com', '574-703-9353', 'Windsor', 'Secretary', 186728);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (31, 6, 'Sharia', 'Giron', 'sgironu@xrea.com', '100-151-8839', 'Ottawa', 'Power Plant Operator', 156530);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (32, 2, 'Liva', 'Costan', 'lcostanv@t.co', '421-810-5121', 'Ottawa', 'Actuary', 120718);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (33, 5, 'Keary', 'Riley', 'krileyw@blogs.com', '628-990-8624', 'Toronto', 'Power Plant Operator', 120578);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (34, 4, 'Frankie', 'Bossons', 'fbossonsx@reverbnation.com', '247-789-3776', 'Ottawa', 'Sales Representative', 160196);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (35, 2, 'Joan', 'Viney', 'jvineyy@wunderground.com', '560-988-4556', 'Toronto', 'Secretary', 230318);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (36, 1, 'Sidonnie', 'Bradock', 'sbradockz@vkontakte.ru', '560-206-5358', 'Windsor', 'Actuary', 213526);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (37, 3, 'Darryl', 'McCarlich', 'dmccarlich10@omniture.com', '374-683-2813', 'Ottawa', 'Engineer', 195202);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (38, 4, 'Irita', 'Lineham', 'ilineham11@instagram.com', '338-362-0951', 'Toronto', 'Business Analyst', 151541);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (39, 1, 'Jarrid', 'Joye', 'jjoye12@creativecommons.org', '349-591-6432', 'Ottawa', 'Secretary', 211196);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (40, 5, 'Jelene', 'Thumim', 'jthumim13@sohu.com', '524-568-9918', 'Windsor', 'Electrical Technician', 131777);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (41, 3, 'Averil', 'Tavernor', 'atavernor14@shareasale.com', '507-409-4638', 'Ottawa', 'Line Worker', 218544);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (42, 2, 'Pincas', 'Dibb', 'pdibb15@domainmarket.com', '910-723-5465', 'Toronto', 'Actuary', 91313);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (43, 3, 'Buffy', 'Kiddye', 'bkiddye16@toplist.cz', '959-131-8837', 'Windsor', 'Engineer', 105753);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (44, 6, 'Dewey', 'Perdue', 'dperdue17@princeton.edu', '770-574-7455', 'Windsor', 'Sales Representative', 98954);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (45, 2, 'Gabrila', 'Pimlock', 'gpimlock18@e-recht24.de', '655-681-7142', 'Windsor', 'Business Analyst', 184428);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (46, 1, 'Dorian', 'Rennebach', 'drennebach19@bloglovin.com', '322-192-2650', 'Toronto', 'Engineer', 128450);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (47, 2, 'Toby', 'McSaul', 'tmcsaul1a@senate.gov', '941-192-3465', 'Windsor', 'Actuary', 140627);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (48, 5, 'Damian', 'Isaak', 'disaak1b@bluehost.com', '360-894-8585', 'Ottawa', 'Power Plant Operator', 80124);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (49, 1, 'Vanessa', 'McLean', 'vmclean1c@fastcompany.com', '526-186-8622', 'Windsor', 'Engineer', 225128);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (50, 3, 'Electra', 'Curdell', 'ecurdell1d@unicef.org', '716-506-5613', 'Windsor', 'Actuary', 170989);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (51, 5, 'Berne', 'Kitcat', 'bkitcat1e@toplist.cz', '575-712-3400', 'Toronto', 'Line Worker', 86296);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (52, 2, 'Marcellus', 'Hazelden', 'mhazelden1f@slashdot.org', '483-135-7911', 'Ottawa', 'Sales Representative', 130269);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (53, 3, 'Valeda', 'Paolo', 'vpaolo1g@independent.co.uk', '552-602-6432', 'Toronto', 'Sales Representative', 186712);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (54, 6, 'Bret', 'Lamberto', 'blamberto1h@washington.edu', '580-556-6791', 'Windsor', 'Secretary', 213568);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (55, 4, 'Morly', 'Caldicott', 'mcaldicott1i@berkeley.edu', '327-658-5676', 'Ottawa', 'Actuary', 230717);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (56, 1, 'Donnie', 'Kielt', 'dkielt1j@census.gov', '952-414-6293', 'Windsor', 'Business Analyst', 213879);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (57, 3, 'Vittorio', 'Siviter', 'vsiviter1k@zdnet.com', '524-819-2847', 'Windsor', 'Secretary', 233825);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (58, 5, 'Torin', 'Brodeau', 'tbrodeau1l@thetimes.co.uk', '706-198-0999', 'Toronto', 'Engineer', 194796);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (59, 4, 'Vanessa', 'Glanz', 'vglanz1m@over-blog.com', '231-370-3964', 'Toronto', 'Line Worker', 87447);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (60, 5, 'York', 'Killerby', 'ykillerby1n@arstechnica.com', '523-512-5289', 'Windsor', 'Line Worker', 219591);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (61, 6, 'Domini', 'Dibdin', 'ddibdin1o@soup.io', '756-207-3418', 'Windsor', 'Actuary', 184336);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (62, 5, 'Franciskus', 'Bettridge', 'fbettridge1p@github.io', '596-599-8866', 'Windsor', 'Business Analyst', 160735);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (63, 5, 'Willdon', 'Speedy', 'wspeedy1q@spiegel.de', '988-948-7160', 'Windsor', 'Sales Representative', 112809);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (64, 1, 'Haroun', 'Offell', 'hoffell1r@webnode.com', '626-341-9146', 'Windsor', 'Engineer', 225089);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (65, 3, 'Patrice', 'Sheehy', 'psheehy1s@nyu.edu', '391-730-3960', 'Toronto', 'Actuary', 196054);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (66, 1, 'Berta', 'Creegan', 'bcreegan1t@google.co.jp', '649-551-4185', 'Windsor', 'Engineer', 236284);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (67, 6, 'Cletus', 'Loadwick', 'cloadwick1u@meetup.com', '406-769-3323', 'Ottawa', 'Electrical Technician', 210280);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (68, 6, 'Deena', 'Ranscomb', 'dranscomb1v@google.co.uk', '182-848-5734', 'Toronto', 'Power Plant Operator', 108145);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (69, 6, 'Marty', 'Villaret', 'mvillaret1w@symantec.com', '697-379-8191', 'Toronto', 'Actuary', 115574);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (70, 5, 'Jessalyn', 'Wollacott', 'jwollacott1x@posterous.com', '969-336-3405', 'Windsor', 'Business Analyst', 103639);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (71, 4, 'Say', 'Ludlamme', 'sludlamme1y@behance.net', '242-882-6448', 'Ottawa', 'Line Worker', 145346);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (72, 6, 'Deonne', 'Awcoate', 'dawcoate1z@wikia.com', '503-624-2019', 'Ottawa', 'Sales Representative', 100430);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (73, 6, 'Sonia', 'Hadfield', 'shadfield20@adobe.com', '355-390-4985', 'Toronto', 'Power Plant Operator', 216323);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (74, 6, 'Dun', 'McCarty', 'dmccarty21@alibaba.com', '867-739-2258', 'Ottawa', 'Engineer', 131154);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (75, 5, 'Eolanda', 'Vial', 'evial22@webeden.co.uk', '843-883-6215', 'Ottawa', 'Business Analyst', 215267);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (76, 1, 'Syd', 'Zuanazzi', 'szuanazzi23@163.com', '708-344-2463', 'Windsor', 'Secretary', 209464);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (77, 4, 'Sapphira', 'Petley', 'spetley24@paginegialle.it', '128-994-3541', 'Windsor', 'Secretary', 139113);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (78, 2, 'Sholom', 'Harbottle', 'sharbottle25@deviantart.com', '523-114-1890', 'Toronto', 'Actuary', 185242);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (79, 5, 'Stacia', 'Locke', 'slocke26@wikimedia.org', '705-113-8189', 'Ottawa', 'Sales Representative', 155856);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (80, 3, 'Lynde', 'Imore', 'limore27@nyu.edu', '940-351-0449', 'Toronto', 'Electrical Technician', 169757);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (81, 2, 'Arnaldo', 'Beckwith', 'abeckwith28@jimdo.com', '570-528-4629', 'Ottawa', 'Power Plant Operator', 175143);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (82, 4, 'Roderigo', 'Leyburn', 'rleyburn29@un.org', '636-415-0429', 'Ottawa', 'Secretary', 148247);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (83, 2, 'Nolana', 'Farenden', 'nfarenden2a@samsung.com', '445-360-4616', 'Ottawa', 'Power Plant Operator', 192075);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (84, 5, 'Llewellyn', 'Jiran', 'ljiran2b@wordpress.org', '746-550-3754', 'Toronto', 'Power Plant Operator', 233269);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (85, 4, 'Zora', 'Aylin', 'zaylin2c@walmart.com', '575-820-0647', 'Toronto', 'Sales Representative', 236029);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (86, 2, 'Bail', 'Waddams', 'bwaddams2d@webmd.com', '269-105-3231', 'Windsor', 'Power Plant Operator', 111498);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (87, 4, 'Brandise', 'Greggs', 'bgreggs2e@umich.edu', '597-439-2805', 'Toronto', 'Secretary', 217569);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (88, 2, 'Caria', 'Karpol', 'ckarpol2f@webnode.com', '920-479-3862', 'Ottawa', 'Electrical Technician', 202183);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (89, 3, 'Abraham', 'Schubbert', 'aschubbert2g@nyu.edu', '477-782-1361', 'Windsor', 'Secretary', 127403);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (90, 4, 'Julina', 'Lambshine', 'jlambshine2h@linkedin.com', '787-970-3147', 'Windsor', 'Secretary', 121039);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (91, 3, 'Heidi', 'Scroggs', 'hscroggs2i@tinyurl.com', '544-240-6027', 'Ottawa', 'Secretary', 95097);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (92, 6, 'Maud', 'Erat', 'merat2j@wufoo.com', '992-356-4664', 'Toronto', 'Line Worker', 188572);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (93, 4, 'Lidia', 'Mardy', 'lmardy2k@google.co.uk', '624-183-2051', 'Windsor', 'Actuary', 166838);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (94, 3, 'Laverna', 'Fusco', 'lfusco2l@goo.ne.jp', '213-746-9494', 'Windsor', 'Secretary', 235173);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (95, 2, 'Helge', 'Hutchcraft', 'hhutchcraft0@mlb.com', '588-180-7720', 'Toronto', 'Business Analyst', 216748);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (96, 1, 'Lynna', 'Papes', 'lpapes1@github.io', '316-549-1906', 'Windsor', 'Electrical Technician', 186786);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (97, 4, 'Mikol', 'Kunzler', 'mkunzler2@elpais.com', '551-743-0642', 'Windsor', 'Sales Representative', 220394);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (98, 3, 'Abagail', 'Fauguel', 'afauguel3@independent.co.uk', '743-691-6788', 'Toronto', 'Business Analyst', 108528);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (99, 2, 'Carmelia', 'Bewicke', 'cbewicke4@marriott.com', '110-487-5874', 'Toronto', 'Actuary', 108553);
insert into EMPLOYEE (eid, did, firstName, lastName, email, phone, region, position, salary) values (100, 1, 'Ash', 'Sebert', 'asebert5@networkadvertising.org', '434-803-0616', 'Toronto', 'Line Worker', 212286);


-- POPULATE THE CUSTOMER TABLE
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (1, 'Burnard', 'Hamshaw', 'bhamshaw0@tinypic.com', '692-849-8955', '7 Union Circle', '2021-08-11', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (2, 'Bud', 'McLaine', 'bmclaine1@cnn.com', '905-309-9749', '0 Lien Court', '2022-01-28', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (3, 'Petunia', 'Feehery', 'pfeehery2@wiley.com', '979-384-6478', '366 Debra Parkway', '2022-01-08', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (4, 'Hattie', 'Bredgeland', 'hbredgeland3@cnn.com', '597-511-1191', '6318 Iowa Crossing', '2021-05-14', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (5, 'Cordula', 'Phizackarley', 'cphizackarley4@youtu.be', '577-828-7744', '657 Haas Lane', '2021-09-16', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (6, 'Iseabal', 'Cutbirth', 'icutbirth5@va.gov', '404-839-7314', '002 Birchwood Plaza', '2022-02-10', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (7, 'Blithe', 'Dewis', 'bdewis6@tamu.edu', '624-706-0807', '584 Monument Place', '2021-04-28', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (8, 'Milty', 'Capron', 'mcapron7@foxnews.com', '849-296-7496', '0822 Stoughton Crossing', '2021-09-13', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (9, 'Melitta', 'Bollin', 'mbollin8@ocn.ne.jp', '213-198-4425', '585 Heffernan Lane', '2021-12-19', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (10, 'Lizzie', 'Ashtonhurst', 'lashtonhurst9@fema.gov', '954-373-1091', '6066 Jenna Terrace', '2021-05-07', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (11, 'Aimil', 'Quinnet', 'aquinneta@alibaba.com', '716-923-7939', '37 Annamark Circle', '2021-06-30', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (12, 'Olga', 'Dudenie', 'odudenieb@ed.gov', '816-745-7926', '6 Grayhawk Avenue', '2022-01-14', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (13, 'Ryann', 'Strauss', 'rstraussc@exblog.jp', '975-458-8392', '05 International Terrace', '2022-01-20', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (14, 'Rance', 'Edelheid', 'redelheidd@pbs.org', '480-453-9215', '27117 Barnett Alley', '2021-12-17', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (15, 'Ilyse', 'Redgewell', 'iredgewelle@spiegel.de', '925-421-7930', '3 Packers Junction', '2021-12-18', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (16, 'Aila', 'Broom', 'abroomf@cloudflare.com', '897-196-3068', '940 Daystar Plaza', '2021-09-25', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (17, 'Frasco', 'Wegener', 'fwegenerg@gnu.org', '129-337-3361', '3 Gale Road', '2021-08-03', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (18, 'Molly', 'Duffy', 'mduffyh@globo.com', '894-542-2086', '46595 Elgar Place', '2021-09-07', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (19, 'Bren', 'Drinkwater', 'bdrinkwateri@mail.ru', '624-309-1308', '5 Rockefeller Trail', '2021-07-02', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (20, 'Karil', 'Frend', 'kfrendj@elegantthemes.com', '611-889-0591', '17 Arrowood Center', '2022-03-27', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (21, 'Kilian', 'Hairsine', 'khairsinek@bloomberg.com', '587-355-7135', '900 Sugar Pass', '2022-03-28', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (22, 'Yehudi', 'Clyburn', 'yclyburnl@trellian.com', '899-884-5878', '35 Kingsford Lane', '2021-10-21', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (23, 'Angeline', 'O''Harney', 'aoharneym@java.com', '131-269-3922', '7 Sauthoff Terrace', '2021-12-21', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (24, 'Myrilla', 'Ranvoise', 'mranvoisen@weibo.com', '137-534-4229', '79 Eggendart Circle', '2021-11-17', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (25, 'Liz', 'Trimble', 'ltrimbleo@youtube.com', '739-714-9107', '92 Dapin Road', '2021-11-18', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (26, 'Lloyd', 'Damp', 'ldampp@artisteer.com', '866-211-0641', '32814 Sloan Pass', '2022-01-07', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (27, 'Lanny', 'Smelley', 'lsmelleyq@webeden.co.uk', '815-744-6165', '37609 Trailsway Center', '2022-02-26', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (28, 'Axel', 'Postill', 'apostillr@imageshack.us', '414-560-2982', '2919 Erie Lane', '2021-04-20', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (29, 'Fritz', 'Coneybeare', 'fconeybeares@exblog.jp', '195-469-2908', '30 Elmside Avenue', '2022-02-12', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (30, 'Selena', 'Thackston', 'sthackstont@sciencedaily.com', '838-525-7424', '20214 Maple Wood Circle', '2022-02-19', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (31, 'Hobie', 'McGinnell', 'hmcginnellu@cargocollective.com', '110-442-1232', '950 School Pass', '2021-07-23', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (32, 'Tailor', 'Cornels', 'tcornelsv@1688.com', '386-775-1997', '11332 Fisk Terrace', '2021-09-08', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (33, 'Wallie', 'Eburne', 'weburnew@walmart.com', '657-767-5489', '5430 Weeping Birch Pass', '2022-01-22', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (34, 'Janeczka', 'Farnhill', 'jfarnhillx@chron.com', '694-439-7459', '51 Caliangt Crossing', '2021-04-11', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (35, 'Pete', 'Yuill', 'pyuilly@oakley.com', '907-590-3146', '7 Bay Point', '2021-06-14', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (36, 'Munroe', 'Sneden', 'msnedenz@loc.gov', '404-155-8050', '27 Mayfield Parkway', '2021-06-21', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (37, 'Catha', 'Aggis', 'caggis10@smugmug.com', '763-322-2256', '28238 Comanche Avenue', '2021-10-13', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (38, 'Averil', 'Giacomucci', 'agiacomucci11@de.vu', '596-676-4806', '7579 Loomis Park', '2021-08-09', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (39, 'Dido', 'Wooler', 'dwooler12@omniture.com', '524-660-1380', '610 Buhler Crossing', '2022-03-30', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (40, 'Adah', 'Gellier', 'agellier13@paginegialle.it', '296-956-3240', '182 Katie Lane', '2021-07-28', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (41, 'Eleen', 'Pounds', 'epounds14@theguardian.com', '826-362-0211', '35240 Dapin Circle', '2021-04-21', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (42, 'Brita', 'Bowater', 'bbowater15@home.pl', '211-785-7634', '2481 Shopko Place', '2021-10-29', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (43, 'Mame', 'Elleray', 'melleray16@nhs.uk', '349-494-3181', '7117 Fairview Way', '2022-02-08', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (44, 'Franny', 'Heinsh', 'fheinsh17@symantec.com', '105-170-1011', '980 Northwestern Crossing', '2021-06-18', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (45, 'Whitney', 'Craft', 'wcraft18@sphinn.com', '119-231-5569', '0 Sauthoff Avenue', '2021-11-13', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (46, 'Grace', 'Bettam', 'gbettam19@yelp.com', '172-535-3259', '5 Carey Place', '2021-11-12', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (47, 'Burk', 'Gerardet', 'bgerardet1a@spotify.com', '307-138-0927', '0641 Hayes Terrace', '2021-12-04', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (48, 'Joe', 'Scamadine', 'jscamadine1b@nasa.gov', '983-768-3796', '3146 Forest Run Hill', '2021-04-30', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (49, 'Gussi', 'Daulton', 'gdaulton1c@msu.edu', '642-437-1723', '1 Westerfield Plaza', '2021-06-07', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (50, 'Sigismund', 'Cona', 'scona1d@i2i.jp', '571-226-9051', '099 Prentice Junction', '2021-09-11', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (51, 'Hakeem', 'Thickett', 'hthickett1e@china.com.cn', '505-295-7866', '2674 Northland Lane', '2021-05-12', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (52, 'Calla', 'Burfield', 'cburfield1f@aol.com', '931-104-5560', '692 Scott Place', '2021-06-14', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (53, 'Cornelle', 'Albertson', 'calbertson1g@economist.com', '328-778-9227', '5 Russell Hill', '2021-10-30', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (54, 'Gwen', 'Mycroft', 'gmycroft1h@unc.edu', '542-885-7277', '72598 Tony Park', '2022-01-09', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (55, 'Brita', 'Hourihane', 'bhourihane1i@phoca.cz', '655-259-4720', '458 Corben Road', '2021-06-29', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (56, 'Cordie', 'Polotti', 'cpolotti1j@squarespace.com', '411-657-2028', '74 Alpine Point', '2022-03-09', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (57, 'Gregorio', 'Landreth', 'glandreth1k@devhub.com', '426-628-3791', '563 Paget Hill', '2021-09-01', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (58, 'Read', 'Beaument', 'rbeaument1l@lycos.com', '703-574-4582', '308 Wayridge Crossing', '2021-12-12', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (59, 'Jo-anne', 'McCarty', 'jmccarty1m@youtu.be', '544-413-8148', '35 Armistice Parkway', '2021-08-18', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (60, 'Gasparo', 'Stening', 'gstening1n@odnoklassniki.ru', '608-322-9297', '04 Raven Terrace', '2021-08-02', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (61, 'Mechelle', 'Greeves', 'mgreeves1o@ameblo.jp', '906-273-6483', '377 Michigan Place', '2021-11-06', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (62, 'Lyndel', 'Rumsby', 'lrumsby1p@purevolume.com', '128-938-2990', '5 Bay Avenue', '2021-04-08', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (63, 'Ilyse', 'Grimoldby', 'igrimoldby1q@fotki.com', '557-198-4905', '82 Havey Court', '2022-02-13', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (64, 'Kimbell', 'Pentycross', 'kpentycross1r@symantec.com', '913-761-2692', '750 Ludington Plaza', '2021-08-09', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (65, 'Allx', 'Venner', 'avenner1s@taobao.com', '593-933-6862', '82 4th Street', '2021-06-14', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (66, 'Wilek', 'De Carlo', 'wdecarlo1t@cafepress.com', '299-348-1132', '05 American Ash Point', '2021-07-30', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (67, 'Sophie', 'Amis', 'samis1u@jalbum.net', '237-926-5059', '1 Grasskamp Circle', '2022-01-23', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (68, 'Caroline', 'Bewfield', 'cbewfield1v@examiner.com', '589-146-8891', '042 Sheridan Circle', '2021-07-01', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (69, 'Antonio', 'Wedgwood', 'awedgwood1w@macromedia.com', '156-244-5555', '324 Russell Way', '2022-03-13', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (70, 'Sharla', 'Stronghill', 'sstronghill1x@cdbaby.com', '231-802-4865', '418 Karstens Way', '2021-04-08', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (71, 'Sandi', 'Cescot', 'scescot1y@seattletimes.com', '137-225-2814', '59 Sauthoff Court', '2021-08-30', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (72, 'Clifford', 'Schwandermann', 'cschwandermann1z@hc360.com', '447-631-5058', '65767 Brentwood Road', '2021-05-08', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (73, 'Raine', 'Escalero', 'rescalero20@discovery.com', '542-797-1336', '87754 Scott Crossing', '2021-10-03', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (74, 'Reginald', 'Bigrigg', 'rbigrigg21@adobe.com', '433-223-9323', '90 Waywood Street', '2021-09-04', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (75, 'Seward', 'Rentoul', 'srentoul22@weibo.com', '959-803-9524', '58 Rutledge Point', '2021-10-12', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (76, 'Bayard', 'Hitzmann', 'bhitzmann23@cdbaby.com', '921-679-6728', '35557 Blaine Street', '2022-01-04', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (77, 'Lynelle', 'Ruppelin', 'lruppelin24@vistaprint.com', '637-206-5288', '01481 Northwestern Center', '2021-12-30', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (78, 'Marilyn', 'McFeate', 'mmcfeate25@epa.gov', '465-827-3044', '4 Hoepker Parkway', '2021-06-22', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (79, 'Nananne', 'Roglieri', 'nroglieri26@springer.com', '665-920-2571', '4 Kingsford Parkway', '2021-10-20', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (80, 'Phoebe', 'Hemphill', 'phemphill27@bandcamp.com', '285-526-9285', '554 Green Crossing', '2021-10-10', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (81, 'Rori', 'Dodsley', 'rdodsley28@blogger.com', '218-206-9984', '05784 Warner Lane', '2021-05-31', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (82, 'Adena', 'Prendergast', 'aprendergast29@phoca.cz', '345-396-9513', '71 Independence Plaza', '2021-08-24', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (83, 'Berty', 'Maymond', 'bmaymond2a@washington.edu', '893-477-2972', '58840 Hauk Hill', '2021-06-22', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (84, 'Findley', 'Kaufman', 'fkaufman2b@bing.com', '750-257-0219', '01510 Center Center', '2021-12-15', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (85, 'Bendick', 'Learoid', 'blearoid2c@epa.gov', '920-470-2432', '09068 Rockefeller Trail', '2021-09-12', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (86, 'Hildy', 'Dumbleton', 'hdumbleton2d@nasa.gov', '798-813-2726', '21 Springview Place', '2021-11-09', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (87, 'Shandie', 'Emanulsson', 'semanulsson2e@dagondesign.com', '912-318-6019', '93258 Norway Maple Circle', '2021-11-07', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (88, 'Paddie', 'Seyers', 'pseyers2f@nbcnews.com', '646-235-4695', '90 Logan Junction', '2021-11-06', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (89, 'Lynelle', 'Brodest', 'lbrodest2g@washington.edu', '140-552-2403', '26 Utah Crossing', '2021-05-10', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (90, 'Buckie', 'Timlin', 'btimlin2h@hao123.com', '682-209-0127', '394 Washington Drive', '2021-08-10', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (91, 'Emelita', 'Ryhorovich', 'eryhorovich2i@pen.io', '243-392-7517', '2717 Redwing Lane', '2021-06-06', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (92, 'Donnell', 'Noir', 'dnoir2j@aol.com', '681-909-8673', '610 Pleasure Trail', '2022-02-23', 'Windsor', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (93, 'Mariel', 'Tayspell', 'mtayspell2k@liveinternet.ru', '639-118-3822', '8 Russell Junction', '2021-08-11', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (94, 'Loy', 'Micklewright', 'lmicklewright2l@apple.com', '816-841-5041', '5168 Meadow Valley Lane', '2021-06-27', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (95, 'Tobiah', 'Gravells', 'tgravells2m@livejournal.com', '470-176-9575', '7 Grim Trail', '2021-04-30', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (96, 'Lorri', 'Peoples', 'lpeoples2n@un.org', '393-700-7327', '0587 Messerschmidt Center', '2021-05-09', 'Windsor', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (97, 'Fabiano', 'Karim', 'fkarim2o@va.gov', '568-282-1341', '69 Crescent Oaks Circle', '2021-10-18', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (98, 'Willy', 'Peagrim', 'wpeagrim2p@upenn.edu', '945-758-8717', '82119 Melvin Point', '2021-12-05', 'Windsor', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (99, 'Errick', 'Lighton', 'elighton2q@spotify.com', '616-475-4001', '186 Delladonna Street', '2021-11-04', 'Windsor', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (100, 'Sonya', 'Beauly', 'sbeauly2r@jalbum.net', '674-932-9484', '4 Green Ridge Center', '2021-09-15', 'Windsor', 'Crude Oil');

insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (101, 'Charin', 'Aaron', 'caaron0@kickstarter.com', '378-251-3464', '09 Surrey Alley', '2022-03-09', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (102, 'Felecia', 'Benediktovich', 'fbenediktovich1@zdnet.com', '754-343-9880', '8 Burning Wood Terrace', '2021-06-15', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (103, 'Constantine', 'Belk', 'cbelk2@zdnet.com', '641-123-2117', '52077 Kennedy Circle', '2022-04-05', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (104, 'Kennith', 'Jewson', 'kjewson3@surveymonkey.com', '424-108-7371', '02612 Reinke Point', '2022-03-15', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (105, 'Dianemarie', 'Stanyan', 'dstanyan4@ucoz.com', '468-981-7360', '3 Killdeer Road', '2021-09-06', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (106, 'Euphemia', 'Hambrick', 'ehambrick5@themeforest.net', '942-216-3125', '02 Hanover Drive', '2021-08-17', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (107, 'Barney', 'Rollitt', 'brollitt6@dailymotion.com', '881-349-9640', '45927 Messerschmidt Trail', '2021-12-20', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (108, 'Cyrille', 'Janecek', 'cjanecek7@pbs.org', '285-880-5578', '77 Ramsey Road', '2022-03-11', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (109, 'Antone', 'Newing', 'anewing8@ovh.net', '578-770-0365', '5 Maple Wood Trail', '2021-09-13', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (110, 'Mildred', 'Bonnaire', 'mbonnaire9@mapquest.com', '757-150-0531', '1 Karstens Way', '2021-07-09', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (111, 'Bee', 'Janous', 'bjanousa@friendfeed.com', '626-192-6734', '645 Sunfield Pass', '2021-09-29', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (112, 'Bell', 'Clubbe', 'bclubbeb@cnn.com', '668-755-1681', '887 Golden Leaf Trail', '2021-10-26', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (113, 'Ruth', 'Ewbanche', 'rewbanchec@pbs.org', '406-760-7110', '0794 Artisan Junction', '2022-01-12', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (114, 'Jamie', 'Quare', 'jquared@engadget.com', '321-308-2573', '4 Doe Crossing Center', '2022-02-14', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (115, 'Tamar', 'Karpychev', 'tkarpycheve@fc2.com', '367-108-6196', '2960 Eggendart Court', '2021-08-25', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (116, 'Leroy', 'Yeend', 'lyeendf@de.vu', '919-840-7461', '037 Anzinger Drive', '2021-08-01', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (117, 'Elysia', 'Gaishson', 'egaishsong@privacy.gov.au', '828-582-7580', '438 Aberg Center', '2021-09-07', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (118, 'Angelia', 'Ward', 'awardh@tripadvisor.com', '438-436-2747', '54 Carey Plaza', '2021-12-23', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (119, 'Grier', 'Careless', 'gcarelessi@forbes.com', '757-189-7302', '254 Kipling Road', '2021-10-30', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (120, 'Mada', 'Ollarenshaw', 'mollarenshawj@unesco.org', '202-953-7434', '3546 Ramsey Avenue', '2021-09-11', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (121, 'Leighton', 'Prophet', 'lprophetk@constantcontact.com', '976-842-7284', '34 Katie Park', '2021-08-03', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (122, 'Jacinda', 'Sheron', 'jsheronl@webs.com', '987-534-6681', '87963 Swallow Court', '2022-03-02', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (123, 'Lin', 'Renshaw', 'lrenshawm@instagram.com', '233-615-6730', '8 Northfield Circle', '2021-10-13', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (124, 'Bendicty', 'Broader', 'bbroadern@whitehouse.gov', '626-262-7050', '7 Anthes Terrace', '2021-05-19', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (125, 'Cyrill', 'Roderighi', 'croderighio@cam.ac.uk', '213-500-6643', '49 Mallard Alley', '2021-09-20', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (126, 'Berni', 'Kyncl', 'bkynclp@phoca.cz', '887-776-5822', '11025 Mockingbird Parkway', '2021-06-20', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (127, 'Margie', 'Rawcliff', 'mrawcliffq@narod.ru', '268-636-3943', '1 Fallview Terrace', '2021-06-01', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (128, 'Felic', 'Phizackerly', 'fphizackerlyr@studiopress.com', '963-216-2363', '98544 Brentwood Avenue', '2021-07-02', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (129, 'Llywellyn', 'Formilli', 'lformillis@ihg.com', '431-298-8040', '7 Charing Cross Avenue', '2021-09-12', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (130, 'Mandie', 'Seebright', 'mseebrightt@networkadvertising.org', '764-626-9950', '8463 Morning Center', '2022-02-11', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (131, 'Rochester', 'Stockport', 'rstockportu@wordpress.com', '157-901-8755', '611 Superior Place', '2021-07-23', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (132, 'Nickey', 'Sinnat', 'nsinnatv@sun.com', '539-157-7589', '5057 Vahlen Road', '2022-01-19', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (133, 'Marinna', 'Cassley', 'mcassleyw@sitemeter.com', '423-585-3728', '814 Prairieview Park', '2021-10-19', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (134, 'Delores', 'Coppard', 'dcoppardx@google.cn', '259-979-3899', '745 Meadow Valley Park', '2021-10-18', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (135, 'Stafani', 'Rudsdale', 'srudsdaley@lulu.com', '880-390-3297', '7195 Grayhawk Alley', '2021-10-28', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (136, 'Sammy', 'O''Mailey', 'somaileyz@flickr.com', '911-577-4279', '4415 8th Circle', '2022-02-13', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (137, 'Yul', 'Rathke', 'yrathke10@naver.com', '240-628-2790', '19390 Arrowood Lane', '2021-11-27', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (138, 'Emma', 'O''Daly', 'eodaly11@mysql.com', '251-360-0430', '91814 Main Drive', '2022-02-11', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (139, 'Carlotta', 'Cockayme', 'ccockayme12@paypal.com', '176-944-8348', '45 Fallview Hill', '2021-06-16', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (140, 'Ferdie', 'McGlade', 'fmcglade13@diigo.com', '514-947-3906', '6 Petterle Terrace', '2021-10-31', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (141, 'Mommy', 'Markel', 'mmarkel14@vistaprint.com', '608-861-3656', '32367 Oxford Avenue', '2021-06-07', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (142, 'Burty', 'Ciepluch', 'bciepluch15@hc360.com', '712-831-6860', '55882 Graedel Court', '2021-05-12', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (143, 'Jessa', 'Mendez', 'jmendez16@free.fr', '440-379-1075', '2 Artisan Street', '2021-05-20', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (144, 'Ambrosius', 'Eveleigh', 'aeveleigh17@wikimedia.org', '492-316-1536', '28 Hanover Center', '2021-08-25', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (145, 'Pasquale', 'Lademann', 'plademann18@china.com.cn', '324-290-7285', '48 Eggendart Park', '2022-02-14', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (146, 'Margareta', 'Blomefield', 'mblomefield19@a8.net', '127-258-0588', '7750 Chive Crossing', '2021-08-14', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (147, 'Emmi', 'Clayson', 'eclayson1a@usa.gov', '367-488-6340', '2868 Meadow Vale Hill', '2022-03-20', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (148, 'Thekla', 'Oseman', 'toseman1b@w3.org', '890-497-1597', '38708 Amoth Drive', '2022-01-22', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (149, 'Elfreda', 'Pleasaunce', 'epleasaunce1c@discovery.com', '795-738-3285', '496 Shelley Court', '2022-02-01', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (150, 'Merlina', 'Dilgarno', 'mdilgarno1d@springer.com', '988-139-7357', '40 Carey Center', '2021-05-26', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (151, 'Lilli', 'Panons', 'lpanons1e@jalbum.net', '193-180-7224', '50 Montana Way', '2021-11-28', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (152, 'Aaron', 'McMeanma', 'amcmeanma1f@mac.com', '467-595-8867', '683 Barby Avenue', '2021-08-31', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (153, 'Ced', 'Hovell', 'chovell1g@sbwire.com', '351-999-0388', '9 Roth Pass', '2021-09-16', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (154, 'Bernelle', 'Goom', 'bgoom1h@geocities.jp', '981-907-3859', '0221 Pennsylvania Hill', '2022-01-31', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (155, 'Charlie', 'Nano', 'cnano1i@qq.com', '971-161-6045', '9818 Coleman Point', '2021-10-12', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (156, 'Paige', 'Ritch', 'pritch1j@nifty.com', '853-495-1514', '8 Crest Line Parkway', '2022-01-26', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (157, 'Carol', 'MacKenzie', 'cmackenzie1k@domainmarket.com', '651-718-6179', '06023 Shopko Road', '2022-01-05', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (158, 'Ayn', 'MacCallester', 'amaccallester1l@samsung.com', '426-874-6698', '60 Orin Park', '2021-09-12', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (159, 'Teddy', 'Prothero', 'tprothero1m@blog.com', '482-348-7388', '74118 Browning Place', '2022-03-04', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (160, 'Danette', 'Hoyte', 'dhoyte1n@youtu.be', '926-778-2794', '5957 Kingsford Lane', '2022-04-04', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (161, 'Gasparo', 'Dreinan', 'gdreinan1o@msn.com', '829-274-4105', '984 Londonderry Parkway', '2021-10-01', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (162, 'Edgard', 'Mack', 'emack1p@mail.ru', '213-741-5398', '8925 Stone Corner Terrace', '2021-07-28', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (163, 'Teriann', 'Gidney', 'tgidney1q@moonfruit.com', '213-551-7721', '9135 Delladonna Pass', '2022-03-04', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (164, 'Claudio', 'Warters', 'cwarters1r@jugem.jp', '408-386-7391', '294 Pine View Center', '2021-11-13', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (165, 'Melicent', 'Sedgemond', 'msedgemond1s@va.gov', '350-792-5082', '2672 Miller Hill', '2021-05-11', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (166, 'Lane', 'Garnson', 'lgarnson1t@icio.us', '361-832-1518', '0083 Welch Parkway', '2022-02-07', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (167, 'Frazer', 'Jendrusch', 'fjendrusch1u@prlog.org', '682-486-3962', '90884 Schlimgen Drive', '2021-07-03', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (168, 'Ellie', 'Plimmer', 'eplimmer1v@baidu.com', '953-574-2504', '58 Nelson Parkway', '2022-03-30', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (169, 'Flossy', 'Ivashev', 'fivashev1w@github.com', '998-161-4888', '0 Main Terrace', '2021-08-19', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (170, 'Evey', 'Malec', 'emalec1x@google.it', '950-259-5463', '5 Vera Parkway', '2021-12-14', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (171, 'Dorothea', 'Pree', 'dpree1y@squidoo.com', '173-709-9345', '96 Clarendon Park', '2021-12-02', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (172, 'Rubetta', 'Trustey', 'rtrustey1z@blogger.com', '893-664-9849', '8210 Kinsman Street', '2021-06-25', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (173, 'Isabel', 'Leebetter', 'ileebetter20@bravesites.com', '671-424-8193', '3 Parkside Parkway', '2021-07-24', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (174, 'Agnola', 'Demeter', 'ademeter21@edublogs.org', '676-353-8624', '77 Mayer Lane', '2021-08-02', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (175, 'Jessamine', 'Nutter', 'jnutter22@instagram.com', '268-602-2161', '80979 Cordelia Terrace', '2022-03-23', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (176, 'Joelie', 'Carrodus', 'jcarrodus23@sakura.ne.jp', '142-367-1925', '25450 Schlimgen Terrace', '2021-06-26', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (177, 'Charyl', 'Garrit', 'cgarrit24@toplist.cz', '786-439-1733', '90335 Prairie Rose Place', '2022-02-03', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (178, 'Chadwick', 'McKleod', 'cmckleod25@paginegialle.it', '626-222-3655', '128 Truax Drive', '2021-05-01', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (179, 'Trever', 'Loddon', 'tloddon26@ovh.net', '622-315-6517', '347 Bellgrove Crossing', '2022-02-08', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (180, 'Elora', 'Drillingcourt', 'edrillingcourt27@house.gov', '736-428-5325', '97 Mifflin Plaza', '2021-08-14', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (181, 'Georgiana', 'Drohane', 'gdrohane28@msu.edu', '208-343-1545', '1661 Burning Wood Terrace', '2022-03-04', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (182, 'Ramon', 'Sheerin', 'rsheerin29@blogs.com', '757-394-9964', '72218 Weeping Birch Junction', '2021-07-20', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (183, 'Kipper', 'Stembridge', 'kstembridge2a@wikia.com', '400-804-7906', '2031 Heffernan Lane', '2021-12-16', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (184, 'Iggy', 'Flarity', 'iflarity2b@bloglovin.com', '204-484-3003', '13383 Blue Bill Park Hill', '2021-08-13', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (185, 'Mose', 'Bagot', 'mbagot2c@yelp.com', '501-899-1192', '2 Blackbird Trail', '2021-12-22', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (186, 'Paulie', 'Maypole', 'pmaypole2d@globo.com', '569-802-7916', '24 Briar Crest Point', '2021-07-27', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (187, 'Rhonda', 'Pre', 'rpre2e@sakura.ne.jp', '391-582-8726', '091 Debra Parkway', '2022-04-02', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (188, 'Bradley', 'Macken', 'bmacken2f@eventbrite.com', '151-792-0248', '7823 Sundown Center', '2021-10-05', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (189, 'Roarke', 'Petz', 'rpetz2g@uol.com.br', '242-192-4374', '54 Buell Place', '2021-10-18', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (190, 'Mindy', 'Snassell', 'msnassell2h@weather.com', '425-833-7465', '72 Tennessee Way', '2021-11-23', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (191, 'Ruthanne', 'Mulhill', 'rmulhill2i@mac.com', '880-776-0971', '89 Towne Pass', '2021-06-15', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (192, 'Sholom', 'Gerin', 'sgerin2j@theglobeandmail.com', '604-856-9145', '13 Hoard Pass', '2021-04-29', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (193, 'Annadiana', 'Cornuau', 'acornuau2k@usatoday.com', '303-260-3065', '5 Moland Parkway', '2021-09-30', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (194, 'Audrey', 'Yakushkev', 'ayakushkev2l@geocities.com', '158-428-6356', '252 Bay Street', '2022-01-09', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (195, 'Judon', 'McMurrugh', 'jmcmurrugh2m@ameblo.jp', '494-760-6356', '6 Sullivan Drive', '2021-11-05', 'Toronto', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (196, 'Buiron', 'Mullen', 'bmullen2n@macromedia.com', '275-500-4386', '50 Bay Trail', '2021-07-25', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (197, 'Giff', 'Malek', 'gmalek2o@yolasite.com', '927-790-1627', '146 Maryland Junction', '2022-03-22', 'Toronto', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (198, 'Pet', 'Coppock.', 'pcoppock2p@unicef.org', '199-836-9984', '24137 Bobwhite Junction', '2021-05-26', 'Toronto', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (199, 'Ettore', 'Ealles', 'eealles2q@europa.eu', '825-626-5919', '47732 Thackeray Center', '2022-02-19', 'Toronto', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (200, 'Mikael', 'Alejandre', 'malejandre2r@army.mil', '460-960-5241', '250 Magdeline Hill', '2021-12-05', 'Toronto', 'Solar');

insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (201, 'Aluino', 'Jimes', 'ajimes0@mozilla.com', '444-146-7357', '870 Spenser Trail', '2021-12-20', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (202, 'Dell', 'St. Paul', 'dstpaul1@state.tx.us', '789-627-2764', '6532 Elka Avenue', '2021-06-08', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (203, 'Raul', 'Stares', 'rstares2@apache.org', '894-797-4833', '048 Rusk Way', '2021-06-05', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (204, 'Morten', 'Weal', 'mweal3@free.fr', '661-609-4633', '89403 Tennyson Drive', '2022-01-20', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (205, 'Pedro', 'Jeffcoat', 'pjeffcoat4@fda.gov', '671-635-9213', '430 Rusk Avenue', '2021-06-08', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (206, 'Basil', 'Kassidy', 'bkassidy5@mysql.com', '588-349-1817', '152 Merrick Drive', '2022-01-14', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (207, 'Oralia', 'O''Hogertie', 'oohogertie6@fotki.com', '436-340-6230', '399 John Wall Lane', '2021-07-09', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (208, 'Kordula', 'Meeland', 'kmeeland7@samsung.com', '169-397-5955', '68798 Garrison Pass', '2021-07-09', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (209, 'Bridgette', 'Brinkler', 'bbrinkler8@apple.com', '123-853-3722', '58 Dayton Road', '2021-06-23', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (210, 'Giulio', 'Flippini', 'gflippini9@answers.com', '808-283-0110', '0128 Morrow Court', '2021-06-25', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (211, 'Olympe', 'Zealey', 'ozealeya@163.com', '601-867-0112', '87541 Ohio Street', '2021-11-29', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (212, 'Thayne', 'Sture', 'tstureb@wordpress.org', '602-516-4796', '731 Schiller Court', '2021-05-22', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (213, 'Jerrie', 'Girardetti', 'jgirardettic@hugedomains.com', '805-934-3800', '78 Tennyson Center', '2021-06-03', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (214, 'Gilda', 'Matys', 'gmatysd@creativecommons.org', '198-690-5819', '43094 Dottie Plaza', '2022-03-28', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (215, 'Clementius', 'Dzenisenka', 'cdzenisenkae@moonfruit.com', '821-429-6180', '28 Maywood Court', '2022-04-07', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (216, 'Zollie', 'Piken', 'zpikenf@nationalgeographic.com', '303-319-1359', '88871 High Crossing Avenue', '2021-11-02', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (217, 'Cooper', 'Stannard', 'cstannardg@ustream.tv', '354-122-0963', '2121 Graceland Road', '2022-02-28', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (218, 'Steffie', 'Ebbs', 'sebbsh@google.it', '109-426-2126', '4 Bay Avenue', '2021-08-06', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (219, 'Davidde', 'Dugmore', 'ddugmorei@prlog.org', '647-188-1924', '5380 Fieldstone Terrace', '2021-07-10', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (220, 'Kaine', 'Thomsen', 'kthomsenj@deviantart.com', '611-398-0162', '0 Hayes Terrace', '2022-03-24', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (221, 'Inger', 'Curds', 'icurdsk@answers.com', '838-205-1795', '0 Schlimgen Parkway', '2022-03-30', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (222, 'Demetrius', 'Glasard', 'dglasardl@google.de', '844-672-6396', '40233 Porter Terrace', '2021-11-20', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (223, 'Winfield', 'Yurevich', 'wyurevichm@gov.uk', '437-817-5818', '8033 Messerschmidt Center', '2021-04-13', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (224, 'Kelly', 'Rzehor', 'krzehorn@shareasale.com', '572-586-0991', '79887 Birchwood Circle', '2021-10-19', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (225, 'Livvyy', 'Chesterton', 'lchestertono@photobucket.com', '684-489-2321', '764 Morrow Road', '2021-11-02', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (226, 'Leonardo', 'Blunsum', 'lblunsump@lulu.com', '951-207-3474', '1 Crownhardt Lane', '2022-03-31', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (227, 'Ludovika', 'Bittleson', 'lbittlesonq@trellian.com', '843-854-4962', '603 Susan Lane', '2021-05-11', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (228, 'Hyacintha', 'Richel', 'hrichelr@va.gov', '755-370-1992', '0 Hovde Road', '2022-01-29', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (229, 'Calhoun', 'Goudge', 'cgoudges@go.com', '326-376-2502', '2 Paget Court', '2021-04-13', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (230, 'Rowland', 'Tuerena', 'rtuerenat@pinterest.com', '981-868-0408', '908 Rutledge Park', '2021-11-07', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (231, 'Adria', 'McNair', 'amcnairu@storify.com', '780-535-0199', '18316 Kingsford Avenue', '2022-02-18', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (232, 'Johna', 'Clowney', 'jclowneyv@liveinternet.ru', '765-392-1909', '16347 Bobwhite Place', '2021-10-31', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (233, 'Mylo', 'Duding', 'mdudingw@indiegogo.com', '942-877-5228', '983 Northfield Way', '2021-04-29', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (234, 'Leann', 'Whetton', 'lwhettonx@gmpg.org', '682-164-9546', '83 Fairview Park', '2021-05-03', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (235, 'Jeremias', 'MacKee', 'jmackeey@pbs.org', '769-821-4101', '6 Oakridge Parkway', '2021-09-14', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (236, 'Kelci', 'MacNeilly', 'kmacneillyz@psu.edu', '209-751-1399', '1987 Westerfield Parkway', '2021-05-13', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (237, 'Krystalle', 'Barkley', 'kbarkley10@prlog.org', '826-331-9458', '192 Lerdahl Lane', '2021-04-22', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (238, 'Brocky', 'Van der Velde', 'bvandervelde11@admin.ch', '156-368-2453', '4 Farmco Junction', '2021-04-12', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (239, 'Pen', 'Evens', 'pevens12@auda.org.au', '831-650-1622', '6 Roth Junction', '2022-02-10', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (240, 'Hewett', 'Arnecke', 'harnecke13@skype.com', '179-957-0497', '3 Kim Avenue', '2021-05-13', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (241, 'Twila', 'Dayly', 'tdayly14@marriott.com', '210-585-3277', '264 Green Ridge Trail', '2021-07-10', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (242, 'Jehanna', 'Suddock', 'jsuddock15@php.net', '958-693-1213', '1268 Park Meadow Pass', '2021-09-01', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (243, 'Georg', 'Hayfield', 'ghayfield16@istockphoto.com', '771-945-8599', '3842 Fieldstone Circle', '2021-10-19', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (244, 'Leonid', 'Reskelly', 'lreskelly17@howstuffworks.com', '908-285-3665', '94658 Maple Alley', '2021-10-28', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (245, 'Prudi', 'Knapman', 'pknapman18@dropbox.com', '341-828-3534', '468 Cherokee Alley', '2021-09-08', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (246, 'Ingram', 'Lewsy', 'ilewsy19@linkedin.com', '168-926-1172', '9 Lakewood Terrace', '2021-08-19', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (247, 'Elliot', 'Goor', 'egoor1a@businessinsider.com', '571-231-6331', '05 Gina Alley', '2021-11-01', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (248, 'Jo', 'Elia', 'jelia1b@comsenz.com', '755-456-6176', '02719 Dahle Park', '2021-10-19', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (249, 'Leland', 'Ivanyutin', 'livanyutin1c@nifty.com', '433-602-0661', '7582 Haas Plaza', '2021-09-09', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (250, 'Desdemona', 'Malarkey', 'dmalarkey1d@unblog.fr', '741-905-7313', '628 Harbort Road', '2021-05-21', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (251, 'Aline', 'Tuke', 'atuke1e@altervista.org', '990-729-8856', '09 Melrose Place', '2021-10-27', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (252, 'Enrique', 'Lilleman', 'elilleman1f@home.pl', '381-674-0911', '39 Merry Junction', '2021-11-11', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (253, 'Alain', 'Learned', 'alearned1g@stanford.edu', '404-922-1290', '470 Weeping Birch Trail', '2021-08-21', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (254, 'Alisander', 'Thackston', 'athackston1h@dmoz.org', '346-730-8190', '74434 Bonner Junction', '2021-09-22', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (255, 'Bartholomeo', 'Boshers', 'bboshers1i@yahoo.com', '446-560-3076', '804 Delladonna Drive', '2021-08-17', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (256, 'Bax', 'Shasnan', 'bshasnan1j@dmoz.org', '628-804-4053', '588 Moose Avenue', '2021-07-31', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (257, 'Cosette', 'Lancastle', 'clancastle1k@list-manage.com', '841-170-5801', '045 Twin Pines Terrace', '2021-10-02', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (258, 'Abey', 'Fyfe', 'afyfe1l@chronoengine.com', '391-686-8837', '2 Old Shore Crossing', '2021-08-10', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (259, 'Wilt', 'Hebborn', 'whebborn1m@boston.com', '490-105-4941', '05015 Melby Drive', '2022-03-03', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (260, 'Vassily', 'Heinschke', 'vheinschke1n@booking.com', '919-383-2450', '0 Little Fleur Crossing', '2021-07-14', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (261, 'Cora', 'Leathes', 'cleathes1o@amazon.co.jp', '267-556-4473', '8835 Waywood Way', '2021-12-05', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (262, 'Dru', 'Clayborn', 'dclayborn1p@bizjournals.com', '415-286-3991', '682 Londonderry Drive', '2022-02-07', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (263, 'Greggory', 'Balle', 'gballe1q@wufoo.com', '919-591-1926', '08524 Moose Crossing', '2022-01-23', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (264, 'Antoine', 'Byrcher', 'abyrcher1r@examiner.com', '972-229-3128', '3346 Brentwood Crossing', '2021-08-23', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (265, 'Gena', 'Bolle', 'gbolle1s@geocities.com', '255-106-4682', '4349 Fair Oaks Place', '2021-05-05', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (266, 'Alissa', 'Monelle', 'amonelle1t@constantcontact.com', '983-211-9875', '47 John Wall Place', '2022-01-08', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (267, 'Lorraine', 'Terlinden', 'lterlinden1u@hhs.gov', '832-588-3460', '904 Clove Plaza', '2022-03-01', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (268, 'Taber', 'Gilliland', 'tgilliland1v@dagondesign.com', '872-234-3629', '59 Declaration Terrace', '2022-03-18', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (269, 'Marianne', 'Heining', 'mheining1w@exblog.jp', '929-115-6935', '69 Shasta Court', '2021-04-29', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (270, 'Aliza', 'Brandrick', 'abrandrick1x@sciencedaily.com', '263-694-8496', '22865 Londonderry Way', '2022-04-06', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (271, 'Regan', 'Swatheridge', 'rswatheridge1y@nih.gov', '769-570-7003', '8 Roth Street', '2021-07-07', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (272, 'Drucy', 'Pancoast', 'dpancoast1z@about.com', '888-811-6496', '85 Prairieview Parkway', '2022-03-15', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (273, 'Geno', 'Paffot', 'gpaffot20@businesswire.com', '513-247-2104', '066 Arkansas Terrace', '2022-02-17', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (274, 'Auroora', 'Schnitter', 'aschnitter21@samsung.com', '928-428-9911', '030 Upham Junction', '2021-09-06', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (275, 'Chevy', 'Curragh', 'ccurragh22@dedecms.com', '155-807-0761', '84507 Arizona Junction', '2021-10-31', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (276, 'Merrel', 'Cosham', 'mcosham23@wisc.edu', '791-813-4735', '921 Luster Park', '2021-05-04', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (277, 'Conway', 'Rodman', 'crodman24@i2i.jp', '784-331-5181', '70515 Anderson Junction', '2022-02-03', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (278, 'Travis', 'Camois', 'tcamois25@elegantthemes.com', '375-998-0261', '4419 Monument Pass', '2021-06-20', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (279, 'Lesya', 'Piddletown', 'lpiddletown26@usgs.gov', '616-737-1838', '0 Quincy Junction', '2021-07-10', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (280, 'Gunar', 'Grassin', 'ggrassin27@cbsnews.com', '183-268-3244', '6949 Maple Drive', '2021-04-15', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (281, 'Blithe', 'MacGillivray', 'bmacgillivray28@pinterest.com', '345-143-2722', '260 Armistice Road', '2021-11-22', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (282, 'Merrilee', 'Olivas', 'molivas29@ycombinator.com', '657-699-8217', '349 Amoth Avenue', '2021-08-01', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (283, 'Sallyanne', 'Merman', 'smerman2a@aboutads.info', '308-842-8909', '25533 Crescent Oaks Hill', '2021-06-30', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (284, 'Carleen', 'Sprosson', 'csprosson2b@artisteer.com', '688-479-3112', '3187 Merrick Park', '2021-08-03', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (285, 'Jose', 'Bladen', 'jbladen2c@ucoz.ru', '355-413-4704', '871 Pine View Point', '2021-04-15', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (286, 'Sheffie', 'Mucklo', 'smucklo2d@economist.com', '309-329-5917', '1 Brickson Park Park', '2021-10-05', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (287, 'Micah', 'Pessolt', 'mpessolt2e@ox.ac.uk', '703-163-0320', '1422 Kipling Point', '2021-04-15', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (288, 'Aurelie', 'Row', 'arow2f@stumbleupon.com', '702-219-1473', '47 Forest Run Lane', '2021-04-15', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (289, 'Heidie', 'McErlaine', 'hmcerlaine2g@pcworld.com', '903-570-3409', '8 Hooker Parkway', '2021-07-16', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (290, 'Garrott', 'Tranter', 'gtranter2h@gnu.org', '294-984-3489', '2 Hanson Junction', '2022-04-05', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (291, 'Micky', 'Filipputti', 'mfilipputti2i@mapquest.com', '823-615-8457', '81918 Fair Oaks Hill', '2021-12-04', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (292, 'Velma', 'Habbeshaw', 'vhabbeshaw2j@wix.com', '758-875-6106', '6816 Cherokee Park', '2021-06-11', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (293, 'Raina', 'Ciccetti', 'rciccetti2k@theguardian.com', '241-374-4962', '2 Summer Ridge Crossing', '2022-01-14', 'Ottawa', 'Solar');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (294, 'Hinze', 'Rickett', 'hrickett2l@privacy.gov.au', '289-809-9493', '33 Morning Road', '2021-08-03', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (295, 'Kimmy', 'Bamford', 'kbamford2m@comcast.net', '201-200-0729', '006 Paget Drive', '2021-12-03', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (296, 'Kendal', 'Temperley', 'ktemperley2n@java.com', '670-132-7271', '65 Bonner Drive', '2021-12-03', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (297, 'Jan', 'Blagden', 'jblagden2o@slideshare.net', '927-502-8865', '95 Comanche Terrace', '2021-10-20', 'Ottawa', 'Crude Oil');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (298, 'Aubrie', 'Bartalin', 'abartalin2p@yahoo.co.jp', '764-706-9589', '198 Di Loreto Street', '2021-04-14', 'Ottawa', 'Natural Gas');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (299, 'Amby', 'Hodinton', 'ahodinton2q@i2i.jp', '590-211-5415', '1 Scoville Court', '2021-09-24', 'Ottawa', 'Nuclear');
insert into Customer (cid, firstName, lastName, email, phone, address, regDate, region, energyType) values (300, 'Naomi', 'Blockley', 'nblockley2r@hibu.com', '190-159-4856', '1398 Vermont Road', '2021-05-22', 'Ottawa', 'Crude Oil');

-- POPULATE BILLING
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (1, 148, 1737, 161.43, '2021-04-07', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (2, 180, 1957, 96.32, '2022-03-06', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (3, 274, 1446, 288.72, '2022-01-28', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (4, 230, 1555, 222.19, '2022-01-23', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (5, 288, 1423, 193.86, '2021-05-10', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (6, 125, 360, 266.12, '2021-06-07', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (7, 158, 289, 269.9, '2021-08-24', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (8, 102, 339, 231.87, '2021-08-12', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (9, 118, 332, 62.22, '2021-08-10', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (10, 193, 1650, 134.13, '2021-03-12', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (11, 86, 621, 86.44, '2022-03-02', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (12, 174, 928, 269.11, '2021-10-02', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (13, 204, 1261, 287.19, '2021-08-11', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (14, 272, 1554, 299.34, '2022-03-21', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (15, 211, 582, 153.05, '2021-05-22', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (16, 70, 833, 238.83, '2021-12-01', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (17, 146, 1602, 171.81, '2022-03-26', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (18, 161, 1232, 276.76, '2021-02-10', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (19, 228, 820, 67.79, '2021-05-01', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (20, 261, 446, 216.81, '2021-09-12', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (21, 187, 394, 134.3, '2022-01-12', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (22, 35, 1158, 167.53, '2021-06-15', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (23, 156, 1698, 202.46, '2021-03-25', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (24, 219, 969, 246.71, '2021-11-24', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (25, 158, 1114, 257.55, '2022-03-09', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (26, 200, 1151, 182.81, '2022-02-13', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (27, 263, 679, 133.77, '2022-02-10', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (28, 20, 1967, 226.16, '2021-08-30', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (29, 202, 1303, 104.68, '2021-06-17', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (30, 111, 332, 181.84, '2022-03-26', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (31, 269, 1593, 260.74, '2021-05-05', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (32, 27, 1270, 254.55, '2021-11-01', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (33, 143, 1355, 135.85, '2021-03-02', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (34, 284, 400, 127.86, '2021-11-29', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (35, 93, 803, 135.18, '2021-06-09', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (36, 163, 430, 174.3, '2022-02-26', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (37, 58, 1984, 52.54, '2022-02-17', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (38, 38, 548, 174.85, '2021-05-06', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (39, 245, 663, 55.12, '2022-02-10', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (40, 119, 1923, 92.27, '2021-02-10', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (41, 190, 1570, 201.45, '2022-02-09', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (42, 109, 1761, 107.96, '2021-10-25', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (43, 135, 202, 202.37, '2021-03-19', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (44, 288, 881, 68.94, '2021-10-28', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (45, 212, 1530, 202.28, '2022-02-22', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (46, 160, 729, 183.28, '2021-06-18', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (47, 152, 714, 211.05, '2021-06-09', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (48, 282, 1067, 262.42, '2022-03-14', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (49, 70, 772, 268.75, '2021-07-24', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (50, 126, 1578, 236.44, '2021-10-28', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (51, 143, 1315, 151.03, '2021-03-08', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (52, 287, 1946, 120.82, '2021-11-12', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (53, 6, 1025, 65.35, '2021-05-11', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (54, 110, 279, 120.33, '2021-02-14', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (55, 88, 625, 115.94, '2021-05-03', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (56, 84, 613, 249.99, '2022-01-01', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (57, 184, 709, 85.81, '2021-08-03', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (58, 181, 1213, 91.0, '2021-07-11', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (59, 32, 952, 194.45, '2021-05-29', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (60, 25, 1150, 208.08, '2021-11-08', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (61, 192, 1199, 137.3, '2021-06-03', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (62, 5, 1246, 174.14, '2021-11-17', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (63, 136, 1945, 130.11, '2021-09-24', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (64, 155, 1036, 146.51, '2021-09-29', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (65, 49, 1951, 112.08, '2022-03-16', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (66, 71, 697, 86.35, '2021-10-10', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (67, 46, 733, 267.23, '2021-04-05', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (68, 140, 1014, 133.3, '2022-01-17', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (69, 284, 1716, 144.45, '2021-02-07', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (70, 191, 1710, 191.11, '2021-07-28', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (71, 201, 403, 181.37, '2021-05-10', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (72, 114, 1599, 121.84, '2021-06-03', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (73, 244, 267, 98.86, '2022-02-02', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (74, 94, 1755, 276.6, '2022-01-02', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (75, 247, 1663, 125.43, '2022-02-17', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (76, 6, 761, 219.84, '2021-05-12', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (77, 97, 1763, 117.63, '2021-02-22', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (78, 274, 1363, 284.61, '2021-02-08', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (79, 246, 1965, 112.26, '2021-07-20', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (80, 7, 1550, 92.09, '2022-02-23', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (81, 170, 1807, 219.51, '2021-05-29', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (82, 262, 718, 227.12, '2021-08-14', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (83, 51, 1444, 236.71, '2021-03-18', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (84, 267, 219, 58.54, '2021-09-10', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (85, 56, 659, 118.86, '2021-12-07', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (86, 139, 1275, 181.45, '2022-03-27', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (87, 195, 1697, 166.63, '2021-12-12', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (88, 89, 1116, 198.25, '2021-09-09', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (89, 72, 1515, 229.15, '2022-01-30', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (90, 140, 1136, 136.3, '2021-09-13', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (91, 108, 1695, 137.81, '2022-04-06', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (92, 191, 1280, 243.01, '2021-05-24', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (93, 40, 1272, 195.14, '2021-08-15', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (94, 171, 1815, 271.18, '2022-01-31', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (95, 114, 1957, 232.52, '2022-03-20', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (96, 103, 1350, 273.98, '2021-03-06', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (97, 3, 1307, 182.65, '2022-01-30', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (98, 56, 885, 79.51, '2021-08-07', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (99, 241, 1567, 147.6, '2021-08-13', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (100, 65, 1976, 240.95, '2021-12-09', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (101, 266, 1072, 294.52, '2021-08-04', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (102, 125, 1602, 104.6, '2022-01-21', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (103, 112, 1066, 289.78, '2021-07-31', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (104, 86, 1530, 89.48, '2021-11-18', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (105, 297, 645, 269.3, '2021-06-22', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (106, 259, 1679, 156.85, '2022-03-15', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (107, 121, 1417, 228.32, '2021-04-11', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (108, 8, 940, 298.77, '2021-07-12', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (109, 76, 1057, 143.73, '2022-02-06', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (110, 49, 1440, 285.12, '2021-12-01', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (111, 17, 796, 130.72, '2022-01-28', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (112, 241, 1294, 213.93, '2022-02-07', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (113, 113, 1460, 158.24, '2022-03-23', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (114, 157, 935, 163.58, '2022-03-30', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (115, 280, 1904, 229.52, '2021-09-13', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (116, 179, 342, 198.42, '2021-11-11', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (117, 203, 1423, 131.94, '2021-05-13', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (118, 107, 1798, 182.97, '2021-02-01', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (119, 178, 644, 60.51, '2021-08-06', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (120, 243, 1189, 293.54, '2021-04-11', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (121, 123, 1971, 170.43, '2021-07-18', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (122, 42, 316, 211.18, '2021-07-01', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (123, 8, 236, 103.86, '2021-08-28', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (124, 209, 1412, 270.78, '2021-04-09', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (125, 113, 393, 71.37, '2021-07-15', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (126, 282, 1007, 74.32, '2021-09-22', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (127, 59, 1099, 207.44, '2021-08-14', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (128, 128, 1520, 295.28, '2021-10-22', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (129, 103, 1182, 175.47, '2021-04-06', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (130, 257, 698, 115.04, '2021-12-28', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (131, 176, 555, 112.14, '2021-03-21', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (132, 184, 1436, 277.18, '2021-12-22', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (133, 234, 1976, 62.67, '2021-11-23', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (134, 177, 1658, 236.19, '2021-04-09', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (135, 181, 1521, 277.68, '2021-11-06', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (136, 268, 1915, 95.98, '2021-07-06', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (137, 145, 1125, 268.97, '2021-12-17', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (138, 44, 375, 137.41, '2021-06-23', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (139, 217, 625, 151.29, '2021-04-20', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (140, 240, 1634, 69.45, '2022-02-13', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (141, 266, 324, 60.11, '2021-08-26', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (142, 274, 617, 208.46, '2021-02-26', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (143, 174, 780, 249.89, '2022-01-30', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (144, 205, 1505, 120.65, '2021-05-15', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (145, 282, 729, 81.02, '2021-03-01', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (146, 104, 684, 209.18, '2021-10-05', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (147, 258, 1869, 126.59, '2021-12-28', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (148, 214, 534, 101.79, '2021-11-12', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (149, 239, 1012, 229.61, '2021-07-21', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (150, 74, 1130, 193.68, '2022-04-05', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (151, 1, 1578, 125.91, '2021-04-21', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (152, 251, 1654, 220.29, '2021-10-15', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (153, 293, 758, 92.97, '2022-01-15', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (154, 185, 1675, 230.04, '2021-12-08', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (155, 53, 1910, 120.8, '2021-10-11', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (156, 177, 1830, 165.98, '2022-01-23', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (157, 127, 1143, 84.24, '2021-11-20', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (158, 191, 810, 78.06, '2021-08-05', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (159, 130, 1292, 229.23, '2021-09-28', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (160, 142, 893, 95.79, '2022-03-01', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (161, 132, 230, 75.75, '2021-09-22', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (162, 243, 1761, 223.67, '2021-03-24', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (163, 113, 1805, 151.68, '2021-07-09', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (164, 100, 1927, 266.65, '2021-09-27', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (165, 193, 1064, 65.39, '2021-02-22', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (166, 184, 1901, 81.86, '2021-12-07', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (167, 229, 1121, 127.35, '2021-06-29', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (168, 256, 392, 181.78, '2021-09-22', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (169, 106, 537, 147.34, '2021-04-19', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (170, 71, 208, 256.32, '2021-09-05', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (171, 173, 1769, 96.81, '2021-04-14', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (172, 18, 1854, 180.4, '2021-12-12', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (173, 180, 1159, 279.4, '2021-09-30', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (174, 35, 765, 68.28, '2021-09-28', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (175, 185, 1405, 221.83, '2022-02-22', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (176, 225, 1198, 275.9, '2021-02-04', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (177, 73, 338, 279.6, '2021-07-03', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (178, 177, 506, 74.44, '2021-08-12', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (179, 114, 605, 85.14, '2021-07-29', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (180, 253, 270, 149.08, '2021-04-18', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (181, 247, 1135, 90.62, '2022-02-11', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (182, 5, 849, 200.83, '2021-06-24', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (183, 69, 908, 176.91, '2021-06-01', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (184, 220, 1783, 94.3, '2021-06-11', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (185, 198, 1969, 175.29, '2021-12-01', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (186, 237, 1261, 101.42, '2021-09-04', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (187, 219, 745, 60.68, '2021-02-22', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (188, 239, 826, 192.53, '2021-11-23', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (189, 42, 1720, 191.71, '2021-08-11', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (190, 282, 918, 232.99, '2021-09-03', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (191, 239, 696, 249.08, '2022-02-02', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (192, 9, 1721, 140.53, '2022-01-27', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (193, 164, 1459, 229.51, '2021-04-15', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (194, 272, 1912, 173.58, '2021-12-05', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (195, 206, 510, 147.34, '2021-08-05', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (196, 286, 760, 158.33, '2021-03-05', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (197, 176, 595, 221.52, '2022-03-03', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (198, 53, 1359, 279.01, '2022-01-24', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (199, 185, 461, 126.97, '2021-09-20', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (200, 45, 1367, 187.59, '2021-10-22', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (201, 67, 1001, 267.65, '2021-09-28', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (202, 221, 332, 187.92, '2022-01-16', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (203, 58, 1537, 282.11, '2021-07-07', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (204, 191, 1616, 226.95, '2021-03-18', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (205, 262, 895, 266.61, '2021-10-09', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (206, 187, 660, 135.87, '2021-09-25', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (207, 131, 1928, 138.03, '2022-03-05', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (208, 252, 1826, 86.31, '2022-03-30', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (209, 168, 868, 233.92, '2021-12-04', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (210, 111, 991, 250.19, '2021-09-24', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (211, 17, 1914, 66.04, '2022-03-09', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (212, 144, 215, 133.72, '2021-10-09', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (213, 293, 1000, 109.48, '2021-10-10', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (214, 28, 1764, 192.1, '2022-03-31', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (215, 24, 1811, 158.56, '2021-09-15', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (216, 38, 741, 284.41, '2021-11-06', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (217, 245, 1935, 242.19, '2022-02-18', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (218, 82, 816, 181.57, '2021-09-11', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (219, 290, 824, 249.31, '2021-09-27', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (220, 43, 624, 101.65, '2021-02-24', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (221, 125, 1814, 205.36, '2021-10-08', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (222, 274, 285, 162.13, '2022-03-16', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (223, 23, 1718, 283.3, '2021-04-04', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (224, 52, 411, 91.85, '2021-02-26', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (225, 59, 878, 205.57, '2021-08-03', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (226, 153, 648, 218.73, '2021-09-28', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (227, 174, 817, 66.45, '2021-07-26', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (228, 254, 1383, 119.91, '2021-10-08', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (229, 7, 642, 236.98, '2021-10-29', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (230, 215, 670, 286.11, '2022-02-26', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (231, 109, 448, 102.09, '2021-04-28', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (232, 52, 1285, 265.75, '2021-11-03', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (233, 94, 608, 192.39, '2021-12-27', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (234, 214, 994, 255.44, '2021-03-04', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (235, 239, 1786, 175.59, '2021-05-23', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (236, 220, 581, 247.66, '2021-11-04', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (237, 248, 896, 280.74, '2022-03-31', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (238, 242, 542, 203.26, '2021-02-08', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (239, 126, 1444, 121.48, '2021-10-23', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (240, 244, 376, 222.83, '2022-04-08', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (241, 284, 215, 95.36, '2021-02-05', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (242, 29, 1630, 99.64, '2022-02-05', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (243, 17, 979, 133.29, '2021-03-30', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (244, 28, 1844, 269.33, '2021-03-11', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (245, 227, 226, 146.96, '2021-12-08', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (246, 241, 1736, 274.22, '2021-12-31', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (247, 300, 313, 194.15, '2021-10-06', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (248, 14, 1844, 266.95, '2021-08-31', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (249, 139, 1959, 298.65, '2021-05-03', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (250, 108, 1374, 198.22, '2021-07-15', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (251, 116, 379, 269.32, '2021-10-20', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (252, 212, 1521, 259.88, '2021-12-01', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (253, 147, 1072, 200.07, '2021-11-27', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (254, 168, 573, 275.51, '2021-04-14', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (255, 220, 886, 244.91, '2021-05-02', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (256, 142, 352, 201.32, '2021-04-29', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (257, 286, 1638, 150.78, '2022-01-04', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (258, 45, 774, 51.75, '2021-06-25', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (259, 40, 1882, 215.01, '2021-07-07', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (260, 169, 862, 187.82, '2021-11-19', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (261, 35, 793, 110.82, '2022-01-03', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (262, 269, 930, 231.91, '2021-10-10', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (263, 125, 1676, 210.37, '2021-08-27', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (264, 230, 699, 221.45, '2022-01-23', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (265, 237, 1356, 164.94, '2021-09-15', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (266, 299, 933, 236.46, '2021-09-13', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (267, 37, 1990, 162.33, '2022-02-06', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (268, 277, 1400, 280.67, '2021-07-14', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (269, 279, 528, 282.95, '2021-11-19', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (270, 292, 829, 60.56, '2021-05-13', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (271, 116, 1358, 223.92, '2021-04-15', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (272, 242, 473, 296.16, '2021-12-11', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (273, 236, 1422, 296.16, '2021-10-22', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (274, 254, 1783, 168.46, '2021-08-27', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (275, 12, 1090, 111.38, '2021-10-26', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (276, 52, 1656, 110.75, '2021-05-12', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (277, 164, 219, 125.78, '2022-03-10', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (278, 108, 1463, 263.14, '2022-02-18', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (279, 207, 1802, 284.47, '2022-03-27', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (280, 125, 699, 117.26, '2022-03-09', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (281, 3, 277, 137.99, '2021-09-01', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (282, 136, 1548, 85.53, '2021-06-06', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (283, 53, 1580, 148.15, '2021-10-27', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (284, 19, 1702, 238.39, '2021-10-16', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (285, 259, 1681, 153.44, '2021-06-14', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (286, 125, 1019, 282.56, '2021-02-07', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (287, 206, 789, 292.27, '2021-07-07', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (288, 71, 1291, 233.02, '2021-07-02', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (289, 192, 1376, 96.16, '2021-10-30', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (290, 27, 574, 170.54, '2021-04-03', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (291, 106, 1442, 148.93, '2021-08-09', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (292, 34, 1056, 110.47, '2022-04-01', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (293, 76, 1350, 145.27, '2021-06-21', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (294, 198, 1333, 223.69, '2021-07-28', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (295, 123, 1519, 158.59, '2021-08-26', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (296, 238, 1889, 122.48, '2022-01-16', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (297, 300, 1182, 222.36, '2021-06-11', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (298, 25, 473, 166.1, '2021-06-17', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (299, 179, 1380, 141.74, '2021-12-11', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (300, 249, 1920, 97.6, '2021-03-02', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (301, 52, 1910, 293.98, '2022-02-06', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (302, 148, 1576, 239.46, '2022-03-25', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (303, 159, 1168, 276.91, '2021-12-20', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (304, 118, 855, 95.55, '2021-03-11', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (305, 33, 759, 241.54, '2021-06-12', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (306, 11, 900, 203.91, '2021-12-15', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (307, 224, 1132, 222.8, '2021-12-31', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (308, 200, 549, 229.54, '2021-11-09', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (309, 132, 1545, 197.09, '2022-03-11', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (310, 12, 1758, 198.84, '2022-02-03', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (311, 152, 566, 268.12, '2021-12-15', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (312, 88, 1016, 227.62, '2021-11-22', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (313, 243, 1355, 275.3, '2021-08-07', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (314, 250, 1170, 86.88, '2022-02-09', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (315, 37, 298, 262.9, '2021-04-30', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (316, 135, 507, 228.94, '2021-12-28', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (317, 291, 292, 294.81, '2021-10-12', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (318, 94, 1722, 141.3, '2021-03-19', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (319, 271, 1312, 176.09, '2021-11-07', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (320, 70, 1653, 254.31, '2022-01-06', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (321, 264, 1304, 290.65, '2021-12-28', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (322, 107, 1601, 145.31, '2021-12-02', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (323, 14, 1233, 108.14, '2021-03-08', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (324, 6, 1375, 186.39, '2021-08-18', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (325, 160, 1480, 295.98, '2021-12-29', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (326, 183, 1614, 280.58, '2021-04-30', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (327, 234, 306, 91.78, '2021-12-12', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (328, 293, 1102, 207.58, '2021-11-09', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (329, 258, 384, 163.9, '2021-02-26', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (330, 252, 1424, 176.82, '2021-04-24', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (331, 261, 1657, 69.03, '2021-05-26', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (332, 229, 1048, 232.47, '2021-10-01', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (333, 79, 1587, 207.89, '2022-03-10', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (334, 25, 622, 158.12, '2021-11-18', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (335, 253, 1409, 290.92, '2021-02-19', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (336, 268, 1982, 215.16, '2021-11-16', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (337, 124, 1858, 97.52, '2022-02-23', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (338, 56, 357, 56.81, '2021-09-19', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (339, 89, 1809, 71.61, '2022-02-17', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (340, 249, 899, 98.8, '2021-12-27', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (341, 220, 632, 128.11, '2021-07-07', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (342, 73, 1224, 226.08, '2021-05-26', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (343, 9, 1571, 92.19, '2021-10-19', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (344, 2, 1491, 83.24, '2022-03-10', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (345, 121, 1211, 80.89, '2022-01-17', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (346, 283, 1378, 150.59, '2021-10-26', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (347, 156, 1327, 115.21, '2021-07-19', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (348, 251, 1610, 245.56, '2022-01-26', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (349, 78, 1987, 80.93, '2021-11-04', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (350, 38, 1626, 99.59, '2021-04-14', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (351, 44, 1497, 127.59, '2021-11-06', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (352, 54, 786, 126.86, '2021-03-28', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (353, 170, 1257, 146.63, '2021-11-14', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (354, 199, 822, 80.75, '2021-07-20', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (355, 212, 1458, 141.51, '2021-05-12', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (356, 233, 1562, 228.96, '2021-03-27', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (357, 187, 1406, 130.58, '2021-05-29', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (358, 146, 952, 190.9, '2021-07-27', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (359, 224, 348, 267.53, '2021-03-05', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (360, 6, 1322, 92.89, '2021-09-20', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (361, 140, 612, 247.23, '2021-06-10', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (362, 205, 1330, 140.99, '2021-05-13', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (363, 78, 1691, 53.78, '2021-03-22', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (364, 187, 1971, 75.97, '2021-10-08', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (365, 20, 1666, 249.8, '2021-12-12', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (366, 99, 264, 254.01, '2021-10-14', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (367, 5, 1598, 115.56, '2021-12-29', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (368, 210, 261, 226.72, '2021-07-09', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (369, 96, 1995, 270.77, '2022-03-07', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (370, 82, 1177, 160.6, '2021-02-07', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (371, 252, 1742, 236.05, '2021-10-04', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (372, 102, 621, 161.86, '2021-10-18', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (373, 197, 466, 238.59, '2021-07-01', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (374, 264, 1998, 256.55, '2021-08-19', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (375, 16, 1605, 162.2, '2021-04-30', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (376, 69, 1559, 132.51, '2021-03-02', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (377, 290, 1625, 228.44, '2022-03-30', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (378, 287, 733, 167.41, '2022-01-18', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (379, 181, 1081, 109.43, '2021-10-22', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (380, 203, 1341, 124.91, '2021-10-15', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (381, 212, 1684, 228.1, '2021-06-27', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (382, 105, 829, 147.98, '2022-03-29', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (383, 101, 725, 141.05, '2021-03-30', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (384, 93, 813, 215.02, '2021-04-08', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (385, 223, 1149, 196.06, '2021-04-23', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (386, 87, 701, 101.91, '2022-01-21', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (387, 137, 1464, 85.88, '2021-06-30', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (388, 277, 716, 195.74, '2021-05-24', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (389, 192, 373, 142.4, '2022-04-04', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (390, 49, 1191, 129.16, '2021-07-08', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (391, 120, 1027, 228.25, '2021-12-16', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (392, 173, 1714, 242.52, '2021-12-26', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (393, 76, 489, 267.11, '2021-04-20', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (394, 111, 285, 267.61, '2022-03-13', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (395, 94, 1538, 132.87, '2022-02-13', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (396, 44, 1048, 146.71, '2021-12-09', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (397, 237, 1172, 93.27, '2021-07-05', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (398, 72, 1231, 68.87, '2021-12-09', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (399, 251, 1741, 225.44, '2021-08-18', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (400, 214, 519, 178.63, '2021-07-11', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (401, 128, 341, 229.2, '2021-10-05', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (402, 274, 1620, 90.58, '2021-09-07', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (403, 163, 761, 178.92, '2021-06-23', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (404, 167, 1736, 233.05, '2021-09-29', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (405, 243, 1392, 125.55, '2021-05-27', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (406, 65, 322, 132.07, '2021-02-20', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (407, 259, 1140, 210.16, '2021-10-20', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (408, 9, 1048, 253.91, '2021-05-16', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (409, 108, 946, 64.33, '2021-05-01', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (410, 152, 505, 127.3, '2021-11-09', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (411, 154, 718, 197.7, '2021-12-13', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (412, 223, 1348, 241.11, '2022-02-20', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (413, 280, 1070, 79.82, '2022-02-12', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (414, 278, 1997, 229.36, '2022-04-08', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (415, 297, 1086, 128.47, '2022-02-24', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (416, 50, 1633, 57.95, '2021-11-30', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (417, 16, 1345, 137.58, '2022-03-04', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (418, 33, 1913, 258.85, '2021-07-13', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (419, 78, 780, 155.69, '2021-12-22', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (420, 206, 1179, 177.68, '2021-07-27', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (421, 257, 1246, 208.8, '2021-06-02', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (422, 35, 1633, 106.99, '2021-06-20', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (423, 59, 1674, 230.79, '2021-12-18', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (424, 91, 766, 117.96, '2021-09-16', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (425, 289, 1960, 247.35, '2021-03-07', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (426, 46, 583, 253.86, '2021-07-19', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (427, 1, 388, 62.0, '2021-03-28', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (428, 159, 358, 204.74, '2021-12-23', 12);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (429, 121, 1030, 98.02, '2021-04-06', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (430, 99, 1894, 167.88, '2022-01-21', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (431, 202, 1309, 175.63, '2022-01-29', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (432, 134, 2000, 73.91, '2021-04-30', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (433, 283, 271, 247.23, '2022-03-08', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (434, 256, 1117, 154.57, '2022-01-02', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (435, 3, 1389, 147.95, '2021-04-10', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (436, 46, 1775, 214.47, '2021-09-07', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (437, 137, 1023, 159.51, '2021-04-13', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (438, 181, 1255, 253.82, '2021-11-04', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (439, 131, 1269, 117.37, '2021-09-19', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (440, 95, 564, 189.04, '2022-02-01', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (441, 22, 1243, 143.59, '2021-10-10', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (442, 120, 1838, 125.28, '2021-03-21', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (443, 55, 1002, 211.5, '2021-11-06', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (444, 59, 417, 149.42, '2021-05-14', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (445, 93, 1089, 78.08, '2021-05-30', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (446, 124, 283, 173.59, '2021-07-10', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (447, 42, 1740, 252.48, '2022-02-07', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (448, 284, 908, 233.55, '2021-11-19', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (449, 159, 573, 159.96, '2021-03-25', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (450, 163, 1343, 89.72, '2022-02-17', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (451, 148, 1407, 57.1, '2021-07-29', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (452, 140, 1499, 82.73, '2021-02-07', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (453, 206, 460, 268.63, '2021-11-03', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (454, 80, 1131, 267.11, '2022-04-01', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (455, 111, 473, 250.45, '2022-02-23', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (456, 22, 367, 226.63, '2021-03-25', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (457, 288, 561, 189.35, '2021-09-25', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (458, 260, 1087, 265.92, '2021-04-06', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (459, 229, 1909, 213.78, '2021-05-08', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (460, 33, 366, 200.68, '2022-03-08', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (461, 50, 1215, 274.44, '2021-09-12', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (462, 260, 454, 209.06, '2021-03-08', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (463, 10, 1322, 297.55, '2021-08-11', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (464, 131, 1947, 151.52, '2021-09-30', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (465, 26, 1509, 275.21, '2021-09-18', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (466, 39, 405, 293.45, '2022-02-04', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (467, 120, 1986, 66.48, '2021-02-17', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (468, 29, 429, 240.0, '2022-03-13', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (469, 149, 293, 222.59, '2021-10-05', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (470, 17, 1770, 51.7, '2021-07-09', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (471, 81, 1137, 65.09, '2021-10-13', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (472, 199, 917, 171.82, '2021-04-04', 4);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (473, 165, 419, 146.9, '2021-06-01', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (474, 176, 604, 286.31, '2021-02-18', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (475, 46, 1219, 100.52, '2021-11-07', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (476, 28, 1080, 75.07, '2021-09-18', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (477, 219, 1458, 243.12, '2022-02-13', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (478, 6, 1596, 127.85, '2021-11-11', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (479, 173, 291, 161.1, '2022-02-18', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (480, 52, 801, 254.05, '2021-03-19', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (481, 115, 898, 298.84, '2021-05-17', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (482, 39, 1224, 262.02, '2022-01-05', 1);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (483, 248, 1456, 117.7, '2022-03-03', 3);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (484, 78, 875, 159.43, '2021-10-18', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (485, 197, 1647, 169.66, '2021-06-29', 6);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (486, 49, 1451, 123.62, '2022-02-08', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (487, 71, 1736, 220.95, '2021-02-12', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (488, 240, 611, 164.01, '2021-10-02', 10);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (489, 35, 1324, 147.03, '2021-05-09', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (490, 214, 1353, 259.07, '2021-02-21', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (491, 107, 1870, 72.72, '2022-02-10', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (492, 185, 1756, 299.41, '2021-09-11', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (493, 211, 571, 247.24, '2021-09-01', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (494, 184, 1324, 106.08, '2021-05-10', 5);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (495, 50, 349, 147.63, '2021-02-16', 2);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (496, 241, 604, 199.72, '2021-08-03', 8);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (497, 6, 1369, 153.81, '2021-07-19', 7);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (498, 213, 709, 55.68, '2021-11-18', 11);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (499, 101, 506, 270.96, '2021-09-22', 9);
insert into Billing (invoiceid, cid, usage, dueAmount, dueByDate, billingPeriod) values (500, 80, 494, 176.45, '2022-02-10', 2);

-- POPULATE FINANCE
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (1, 17857.55, 9376.62, 6168.3, 2827.96, 147405.6, 45199.94, 65975.23, 1);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (2, 15249.77, 9448.01, 6778.03, 2592.32, 130487.47, 49749.42, 46669.92, 2);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (3, 19995.02, 8675.51, 6597.65, 2601.06, 137651.93, 41938.31, 57844.38, 3);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (4, 17099.16, 9125.18, 6376.69, 2173.66, 123055.03, 43161.97, 45118.37, 4);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (5, 17728.43, 8107.05, 5331.96, 2905.44, 133646.06, 45010.57, 54562.61, 5);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (6, 19090.86, 9575.28, 6576.16, 2897.49, 128732.55, 43076.5, 47516.26, 6);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (7, 15834.87, 9788.73, 6150.58, 2357.07, 140987.89, 48186.54, 58670.1, 7);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (8, 19729.35, 8108.94, 5462.92, 2960.82, 130341.79, 45556.41, 48523.35, 8);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (9, 17901.28, 8114.24, 6460.32, 2953.57, 123124.68, 49117.65, 38577.62, 9);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (10, 18390.1, 9667.11, 6500.34, 2156.15, 128655.59, 49137.29, 42804.6, 10);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (11, 19586.83, 9013.93, 5786.11, 2322.1, 137290.74, 46636.08, 53945.69, 11);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (12, 19101.99, 9287.09, 6440.56, 2831.0, 130567.18, 45740.34, 47166.2, 12);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (13, 19676.68, 9193.91, 6713.7, 2482.56, 134327.22, 49430.94, 46829.43, 13);
insert into Finance (entryid, materials_costs, maint_costs, op_costs, marketing_costs, sales_gross, payroll, sales_net, period) values (14, 18180.71, 8238.95, 6043.97, 2015.51, 135885.04, 43075.77, 58330.13, 14);


-- UPDATE ENTRIES COLUMN in Headquarter table
update Headquarter set entries = (select COUNT(*) from Headquarter) where did = 1;
update Headquarter set entries = (select COUNT(*) from Finance) where did = 2;
update Headquarter set entries = (select COUNT(*) from Billing) where did = 3;
update Headquarter set entries = (select COUNT(*) from Customer) where did = 4;
update Headquarter set entries = (select COUNT(*) from Product) where did = 5;
update Headquarter set entries = (select COUNT(*) from Employee) where did = 6;





-- 12 GENERAL PURPOSE AND PRACTICAL QUERIES THAT MAY BE PERFORMED ON SUCH BUSINESS SETUP

-- Query #1 -- Employees grouped by positions
select position, Count(position) as total from Employee group by position order by total desc;
    
-- Query #2 -- Top 5 Most Profit Periods and Net Amount
select period, sales_net from Finance where rownum <= 5 order by sales_net desc;

-- Query #3 -- Show employees who earn less than $75k a year and raise wage by $5,000
select eid, did, firstName, lastName, region, position, salary from Employee where salary < 90000 order by salary desc;
--update Employee set salary = salary + 5000 where salary < 90000;              UNCOMENT and run query to perform the wage raise

-- Query #4 -- Top 10 bill statements with highest energy usage by Customers
select invoiceid, cid, usage from Billing where rownum <= 10 order by usage desc;

-- Query #5 -- Top 10 highest earning employees
select salary, firstName, lastName, region, position from Employee where rownum <= 10 order by salary desc;

-- Query #6 -- Information for the installation technicians
select firstName, lastName, phone, address, energyType from Customer;

-- Query #7 -- Show customers based on energy type and region (change 'Nuclear' and 'Toronto' to search other queries)
select * from Customer where energyType = 'Nuclear' AND region = 'Toronto';

-- Query #8 -- Customers with outstanding current due bills
select cid, sum(dueAmount) as currentDue from Billing where (TO_DATE('22-04-10','YY-MM-DD') - dueByDate) <= 30 group by cid order by currentDue desc;

-- Query #9 -- Customers with outstanding overdue bills ASSUMING TODAY IS 10-APR-2022
select cid, sum(dueAmount) as overdue from Billing where (TO_DATE('22-04-10','YY-MM-DD') - dueByDate) > 30 group by cid order by overdue desc;

-- Query #10 -- Count energy types in Customer table
select energyType, COUNT(energyType) as total from Customer group by energyType;

-- Query #11 -- Top 10 Customer retention by days ASSUMING TODAY IS 10-APR-2022
select firstName, lastName, region, energyType, (TO_DATE('22-04-10','YY-MM-DD') - regDate) as days from Customer where rownum <= 10 order by days desc;

-- Query #12 -- Show top energy usage by region and energy type
select usage, region, energyType from Billing inner join Customer on rownum <= 5;

-- Query #13 -- Employees with salary higher than $150k serving Windsor region
select eid, firstName, lastName, salary, position from Employee where region = 'Windsor' AND salary > 150000 order by salary desc;