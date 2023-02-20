-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

insert into TEAM (NATIONAL_ASSOCIATION, URL, T_GROUP, COUNTRY)
values ('Canadian Soccer Association', 'https://www.canadasoccer.com ', 'A', 'Canada')
     , ('Italian Soccer Association', 'https://www.italysoccer.com', 'A', 'Italy')
     , ('Real Federación Española de Fútbol (RFEF)', 'https://rfef.es/es', 'A', 'Spain')
     , ('Confederação Brasileira de Futebol (CBF)', 'https://www.cbf.com.br/', 'B', 'Brazil')
     , ('Deutscher Fußball-Bund (DFB)', 'https://www.dfb.de/index/', 'B', 'Germany')
     , ('Argentine Football Association (AFA)', 'https://www.afa.com.ar/es/', 'C', 'Argentina')
     , ('U.S. Soccer', 'https://www.ussoccer.com/', 'C', 'US')
     , ('Japan Football Association', 'http://www.jfa.jp/eng/', 'D', 'Japan')
     , ('Chinese Football Association', 'https://www.thecfa.cn/AbouttheCFA/index.html', 'D', 'China')
     , ('Portuguese Football Federation (FPF)', 'https://www.fpf.pt/pt/', 'E', 'Portugal')
     , ('Football Association of Ireland (FAI)', 'https://www.fai.ie/', 'E', 'Ireland')
     , ('The Football Association', 'https://www.englandfootball.com/england', 'F', 'England')
     , ('Scottish Football Association', 'https://www.scottishfa.co.uk/scotland/', 'F', 'Scotland')
     , ('Turkish Football Federation', 'https://www.tff.org/Default.aspx?pageID=449', 'G', 'Turkey')
     , ('Nigeria Football Federation (THENFF)', 'https://www.thenff.com/', 'G', 'Nigeria')
     , ('Royal Dutch Football Association; (Koninklijke Nederlandse Voetbalbond)', 'https://www.knvb.com/', 'H',
        'Netherlands')
     , ('Swiss Football Association', 'https://www.football.ch/sfv.aspx', 'H', 'Switzerland');

insert into COACH (C_ROLE, NAME, DOB, COUNTRY)
values ('Head coach', 'Beverly Priestman', '1986-04-29', 'Canada')
     , ('Assistant coach', 'Jasmine Mander', '1986-05-29', 'Canada')
     , ('Head coach', 'Joe Biden', '2020-01-29', 'Italy')
     , ('Head coach', 'Jorge Vilda', '1981-07-07', 'Spain')
     , ('Head coach', 'Pia Sundhage', '1960-02-13', 'Brazil')
     , ('Head coach', 'Martina Voss-Tecklenburg', '1967-12-22', 'Germany')
     , ('Head coach', 'Germán Portanova', '1973-10-19', 'Argentina')
     , ('Head coach', 'Vlatko Andonovski', '1976-09-14', 'US')
     , ('Head coach', 'Futoshi Ikeda', '1970-10-04', 'Japan')
     , ('Head coach', 'Shui Qingxia', '1966-12-18', 'China')
     , ('Head coach', 'Francisco Neto', '1981-06-11', 'Portugal')
     , ('Head coach', 'Vera Pauw', '1963-01-18', 'Ireland')
     , ('Head coach', 'Sarina Wiegman', '1969-10-26', 'England')
     , ('Head coach', 'Pedro Martínez Losa', '1976-05-09', 'Scotland')
     , ('Head coach', 'Necla Güngör Kırağası', '1982-03-11', 'Turkey')
     , ('Head coach', 'Randy Waldrum', '1956-09-25', 'Nigeria')
     , ('Head coach', 'Andries Jonker', '1962-09-22', 'Netherlands')
     , ('Head coach', 'Inka Grings', '1978-10-31', 'Switzerland');

insert into PLAYER (POSITION, NAME, DOB, NUMBER, COUNTRY)
values ('Forward', 'Jordyn Huitema', '2001-05-08', 9, 'Canada')
     , ('Forward', 'Adriana Leon', '1983-06-12', 12, 'Canada')
     , ('Forward', 'Christine Sinclair', '1992-10-02', 19, 'Canada')
     , ('Midfielder', 'Jessie Fleming', '1998-03-11', 17, 'Canada')
     , ('Midfielder', 'Julia Grosso', '2000-08-29', 7, 'Canada')
     , ('Defender', 'Ashley Lawrence', '1995-06-11', 10, 'Canada')
     , ('Defender', 'Shelina Zadorsky', '1992-10-24', 4, 'Canada')
     , ('Goalkeeper', 'Kailen Sheridan', '1995-07-16', 1, 'Canada')
     , ('Goalkeeper', 'Stephanie Labbé', '1986-10-10', 1, 'Canada')
     , ('Goalkeeper', 'Sandra Paños', '1992-11-02', 13, 'Spain')
     , ('Forward', 'Athenea del Castillo', '2000-10-24', 22, 'Spain')
     , ('Midfielder', 'Aitana Bonmatí', '1998-01-18', 6, 'Spain')
     , ('Midfielder', 'Débora Cristiane de Oliveira', '1991-10-20', 9, 'Brazil')
     , ('Forward', 'Beatriz Zaneratto João', '1993-12-17', 16, 'Brazil')
     , ('Forward', 'Alexandra Popp', '1991-04-06', 11, 'Germany')
     , ('Goalkeeper', 'Merle Frohms', '1995-01-28', 1, 'Germany')
     , ('Goalkeeper', 'Vanina Correa', '1983-08-14', 1, 'Argentina')
     , ('Forward', 'Yamila Rodríguez', '1998-01-24', 11, 'Argentina')
     , ('Defender', 'Becky Sauerbrunn', '1985-06-06', 4, 'US')
     , ('Midfielder', 'Kristie Mewis', '1991-02-25', 22, 'US')
     , ('Midfielder', 'Yui Hasegawa', '1997-01-29', 14, 'Japan')
     , ('Defender', 'Risa Shimizu', '1996-06-15', 2, 'Japan')
     , ('Defender', 'Wu Haiyan', '1993-02-26', 5, 'China')
     , ('Goalkeeper', 'Xu Huan', '1999-04-06', 12, 'China')
     , ('Forward', 'Jéssica Silva', '1994-12-11', 10, 'Portugal')
     , ('Midfielder', 'Dolores Silva', '1997-08-07', 21, 'Portugal')
     , ('Forward', 'Denise O''Sullivan', '1994-02-04', 34, 'Ireland')
     , ('Defender', 'Louise Quinn', '1990-06-17', 4, 'Ireland')
     , ('Defender', 'Leah Williamson', '1997-03-29', 6, 'England')
     , ('Forward', 'Beth Mead', '1995-05-09', 7, 'England')
     , ('Midfielder', 'Kim Little', '1990-06-29', 10, 'Scotland')
     , ('Goalkeeper', 'Lee Gibson', '1991-09-23', 29, 'Scotland')
     , ('Defender', 'Didem Karagenç', '1993-10-16', 3, 'Turkey')
     , ('Forward', 'Aycan Yanaç', '1998-11-21', 54, 'Turkey')
     , ('Forward', 'Asisat Oshoala', '1994-10-09', 8, 'Nigeria')
     , ('Goalkeeper', 'Chiamaka Nnadozie', '2000-12-08', 16, 'Nigeria')
     , ('Midfielder', 'Jill Roord', '1997-04-22', 14, 'Netherlands')
     , ('Forward', 'Vivianne Miedema', '1996-06-15', 9, 'Netherlands')
     , ('Midfielder', 'Lia Wälti', '1993-04-19', 13, 'Switzerland')
     , ('Forward', 'Alisha Lehmann', '1999-01-21', 23, 'Switzerland')
     , ('Goalkeeper', 'Mary Poppins', '2024-10-10', 78, 'Italy');

insert into REFEREE (YEARS_EXPERIENCE, NAME, COUNTRY)
values (14, 'Stéphanie Frappart', 'France')
     , (4, 'Yoshimi Yamashita', 'Japan')
     , (11, 'Salima Mukansanga', 'Rwanda')
     , (5, 'Kathryn Nesbitt', 'US')
     , (5, 'Katja Koroleva', 'US')
     , (21, 'Kateryna Monzul', 'Ukraine')
     , (3, 'Kari Seitz', 'US')
     , (13, 'Anna-Marie Keighley', 'New Zealand')
     , (12, 'Kate Jacewicz', 'Australia');

insert into STADIUM (LOCATION, NAME, CAPACITY)
values ('Auckland Tamaki Makaurau, NZL', 'Eden Park', 50000)
     , ('Sydney Gadigal, AUS', 'Sydney Football Stadium', 45500)
     , ('Melbourne Naarm, AUS', 'Melbourne Rectangular Stadium', 30000)
     , ('Hamilton Kirikiriroa, NZL', 'Waikatao Stadium', 25800)
     , ('Brisbane Meaanjin, AUS', 'Brisbane Stadium', 52500)
     , ('Perth Boorloo, AUS', 'Perth Rectangular Stadium', 20500)
     , ('Sydney Gadigal, AUS', 'Stadium Australia', 83500);

insert into MATCH (LENGTH, ROUND, DATE, TIME, NAME, COUNTRY1, COUNTRY2)
values (92, 'Group stage', '2023-07-20', '19:00:00', 'Eden Park', 'Canada', 'Spain')
     , (90, 'Group stage', '2023-07-21', '08:30:00', 'Sydney Football Stadium', 'Canada', 'Italy')
     , (91, 'Group stage', '2023-07-21', '13:00:00', 'Sydney Football Stadium', 'Brazil', 'Germany')
     , (124, 'Group stage', '2023-07-23', '17:00:00', 'Sydney Football Stadium', 'Argentina', 'US')
     , (96, 'Group stage', '2023-07-25', '12:00:00', 'Perth Rectangular Stadium', 'Japan', 'China')
     , (95, 'Group stage', '2023-07-26', '20:00:00', 'Stadium Australia', 'Ireland', 'Portugal')
     , (126, 'Group stage', '2023-07-28', '18:30:00', 'Brisbane Stadium', 'England', 'Scotland')
     , (92, 'Group stage', '2023-07-29', '20:30:00', 'Waikatao Stadium', 'Turkey', 'Nigeria')
     , (94, 'Group stage', '2023-07-30', '14:00:00', 'Melbourne Rectangular Stadium', 'Netherlands', 'Switzerland')
     , (90, 'Round of 16', '2023-08-05', '17:00:00', 'Melbourne Rectangular Stadium', 'Canada', 'Germany')
     , (90, 'Round of 16', '2023-08-06', '17:30:00', 'Perth Rectangular Stadium', 'Argentina', 'Japan')
     , (121, 'Round of 16', '2023-08-06', '19:00:00', 'Stadium Australia', 'Ireland', 'England')
     , (125, 'Round of 16', '2023-08-06', '20:00:00', 'Waikatao Stadium', 'Turkey', 'Netherlands')
     , (95, 'Quarterfinals', '2023-08-11', '14:00:00', 'Sydney Football Stadium', 'Canada', 'Japan')
     , (null, 'Quarterfinals', '2023-08-12', '16:30:00', 'Eden Park', 'Ireland', 'Netherlands');

insert into PARTICIPATION (RID, MATCH_NUMBER, ROLE_OF_REF)
values (1, 1, 'Head')
     , (2, 1, 'Assistant')
     , (3, 1, 'Assistant')
     , (5, 2, 'Head')
     , (8, 2, 'Assistant')
     , (9, 3, 'Head')
     , (4, 3, 'Assistant')
     , (2, 3, 'Assistant')
     , (5, 4, 'Head')
     , (6, 4, 'Assistant')
     , (1, 4, 'Video Assistant')
     , (1, 5, 'Head')
     , (3, 5, 'Assistant')
     , (7, 5, 'Video Assistant')
     , (2, 6, 'Head')
     , (5, 6, 'Assistant')
     , (9, 6, 'Video Assistant')
     , (8, 7, 'Head')
     , (2, 7, 'Assistant')
     , (8, 8, 'Head')
     , (3, 8, 'Assistant')
     , (3, 9, 'Head')
     , (4, 9, 'Assistant')
     , (9, 10, 'Head')
     , (1, 10, 'Assistant')
     , (6, 10, 'Assistant')
     , (1, 11, 'Head')
     , (2, 11, 'Assistant')
     , (5, 11, 'Video Assistant')
     , (2, 12, 'Head')
     , (7, 12, 'Assistant')
     , (8, 12, 'Video Assistant')
     , (7, 13, 'Head')
     , (9, 13, 'Assistant')
     , (9, 14, 'Head')
     , (4, 14, 'Assistant')
     , (7, 15, 'Head')
     , (1, 15, 'Assistant');

insert into GOAL (MINUTE, NUMBER, MATCH_NUMBER, PID, COUNTRY)
values (15, 1, 1, 3, 'Canada')
     , (50, 2, 1, 10, 'Spain')
     , (68, 3, 1, 3, 'Canada')

     , (54, 3, 2, 3, 'Canada')

     , (43, 1, 3, 14, 'Brazil')
     , (45, 2, 3, 15, 'Germany')
     , (91, 3, 3, 16, 'Germany')

     , (null, 1, 4, 18, 'Argentina')
     , (null, 2, 4, 20, 'US')
     , (null, 3, 4, 17, 'Argentina')
     , (null, 4, 4, 18, 'Argentina')

     , (34, 1, 5, 21, 'Japan')

     , (87, 1, 6, 27, 'Ireland')

     , (23, 1, 7, 30, 'England')
     , (74, 2, 7, 30, 'England')
     , (77, 3, 7, 31, 'Scotland')
     , (89, 4, 7, 31, 'Scotland')
     , (null, 5, 7, 31, 'Scotland')
     , (null, 6, 7, 30, 'England')
     , (null, 7, 7, 29, 'England')
     , (null, 8, 7, 30, 'England')

     , (89, 1, 8, 34, 'Turkey')

     , (5, 1, 9, 37, 'Netherlands')
     , (19, 2, 9, 38, 'Netherlands')
     , (47, 3, 9, 37, 'Netherlands')
     , (86, 4, 9, 37, 'Netherlands')

     , (70, 1, 10, 7, 'Canada')

     , (62, 1, 11, 21, 'Japan')

     , (11, 1, 12, 27, 'Ireland')
     , (33, 2, 12, 30, 'England')
     , (null, 3, 12, 30, 'England')
     , (null, 4, 12, 27, 'Ireland')
     , (null, 5, 12, 29, 'England')
     , (null, 6, 12, 28, 'Ireland')
     , (null, 7, 12, 30, 'England')
     , (null, 8, 12, 27, 'Ireland')
     , (null, 9, 12, 29, 'England')
     , (null, 10, 12, 28, 'Ireland')
     , (null, 11, 12, 30, 'England')
     , (null, 12, 12, 27, 'Ireland')
     , (null, 13, 12, 28, 'Ireland')

     , (null, 1, 13, 37, 'Netherlands')

     , (44, 1, 14, 2, 'Canada')
     , (55, 2, 14, 1, 'Canada');

insert into PLAYIN (PID, COUNTRY, MATCH_NUMBER, YELLOW_CARDS, RECEIVED_RED_CARD, DETAILED_POSITION, MINUTE_ENTERED,
                    MINUTE_EXITED)
values (3, 'Canada', 1, 0, false, 'Center forward', 0, 92)
     , (1, 'Canada', 1, 2, true, 'Left wing', 0, 80)
     , (2, 'Canada', 1, 1, true, 'Right wing', 0, 50)
     , (4, 'Canada', 1, 0, false, 'Center mid', 0, 45)
     , (5, 'Canada', 1, 1, false, 'Left mid', 45, 92)
     , (6, 'Canada', 1, 0, false, 'Center back', 0, 92)
     , (7, 'Canada', 1, 0, false, 'Full back', 0, 92)
     , (8, 'Canada', 1, 0, false, 'Goalkeeper', 0, 92)
     , (10, 'Spain', 1, 0, true, 'Goalkeeper', 0, 51)
     , (11, 'Spain', 1, 1, true, 'Center forward', 0, 3)
     , (12, 'Spain', 1, 2, true, 'Center mid', 0, 5)

     , (3, 'Canada', 2, 0, false, 'Left wing', 0, 90)
     , (6, 'Canada', 2, 0, false, 'Center back', 0, 90)
     , (7, 'Canada', 2, 0, false, 'Full back', 0, 90)
     , (8, 'Canada', 2, 0, false, 'Goalkeeper', 0, 90)
     , (41, 'Italy', 2, 0, false, 'Goalkeeper', 0, 90)

     , (14, 'Brazil', 3, 0, false, 'Center forward', 0, 91)
     , (15, 'Germany', 3, 0, false, 'Center forward', 0, 91)
     , (16, 'Germany', 3, 0, false, 'Goalkeeper', 0, 91)

     , (18, 'Argentina', 4, 0, false, 'Goalkeeper', 0, 124)
     , (17, 'Argentina', 4, 0, false, 'Center forward', 0, 124)
     , (19, 'US', 4, 1, false, 'Center back', 0, 70)
     , (20, 'US', 4, 0, false, 'Left mid', 70, 124)

     , (21, 'Japan', 5, 0, false, 'Right mid', 0, 96)
     , (24, 'China', 5, 1, false, 'Goalkeeper', 0, 96)

     , (27, 'Ireland', 6, 0, false, 'Left wing', 0, 95)
     , (28, 'Ireland', 6, 0, false, 'Left back', 0, 95)
     , (26, 'Portugal', 6, 0, false, 'Right mid', 0, 95)

     , (30, 'England', 7, 0, false, 'Right wing', 0, 126)
     , (29, 'England', 7, 0, false, 'Right back', 0, 126)
     , (31, 'Scotland', 7, 0, false, 'Center mid', 0, 126)

     , (34, 'Turkey', 8, 0, false, 'Center forward', 0, 92)
     , (35, 'Nigeria', 8, 1, false, 'Center forward', 0, 92)
     , (36, 'Nigeria', 8, 0, false, 'Goalkeeper', 0, 92)

     , (37, 'Netherlands', 9, 0, false, 'Left mid', 0, 94)
     , (38, 'Netherlands', 9, 0, false, 'Center forward', 0, 94)
     , (39, 'Switzerland', 9, 1, false, 'Right mid', 0, 46)
     , (40, 'Switzerland', 9, 0, false, 'Left wing', 46, 94)

     , (7, 'Canada', 10, 0, false, 'Left back', 0, 90)
     , (4, 'Canada', 10, 0, false, 'Left mid', 0, 90)
     , (5, 'Canada', 10, 0, false, 'Right mid', 0, 34)
     , (9, 'Canada', 10, 0, false, 'Goalkeeper', 0, 90)
     , (6, 'Canada', 10, 0, false, 'Goalkeeper', 34, 90)
     , (15, 'Germany', 10, 0, false, 'Right wing', 0, 90)
     , (16, 'Germany', 10, 0, false, 'Goalkeeper', 0, 90)

     , (21, 'Japan', 11, 1, false, 'Left mid', 0, 90)
     , (22, 'Japan', 11, 0, false, 'Left back', 0, 90)
     , (17, 'Argentina', 11, 0, false, 'Right wing', 0, 90)

     , (27, 'Ireland', 12, 0, false, 'Right wing', 0, 121)
     , (28, 'Ireland', 12, 0, false, 'Right back', 0, 121)
     , (30, 'England', 12, 1, false, 'Left wing', 0, 121)
     , (29, 'England', 12, 0, false, 'Center back', 0, 121)

     , (37, 'Netherlands', 13, 0, false, 'Right mid', 0, 125)
     , (33, 'Turkey', 13, 2, true, 'Center back', 0, 125)

     , (2, 'Canada', 14, 0, false, 'Center forward', 0, 95)
     , (1, 'Canada', 14, 0, false, 'Right wing', 0, 95)
     , (3, 'Canada', 14, 1, false, 'Left wing', 0, 95)
     , (8, 'Canada', 14, 0, false, 'Goalkeeper', 0, 95)
     , (21, 'Japan', 14, 0, false, 'Left mid', 0, 95)
     , (22, 'Japan', 14, 0, false, 'Right back', 0, 95);

insert into CLIENT (EMAIL, NAME, ADDRESS, PASSWORD)
values ('joe.toe@gmail.com', 'Joe Toe', '72 Piccadilly Circus', 'fo3nsafw*f2')
     , ('john.gable@gmail.com', 'John K. Gable', '4534 Pritchard Court', '8ro4XP4gR9K**y')
     , ('etta.jordan@gmail.com', 'Etta C. Jordan', '3909 Tator Patch Road', '6t8UM$jSpQeR!7')
     , ('lawrence.arroyo@gmail.com', 'Lawrence K. Arroyo', '4337 Lynn Avenue', '*i7Lo699VbWm7H')
     , ('arcangel.romo@gmail.com', 'Arcángel Romo Anguiano', '3797 Turnpike Drive', 'c3^f67RsGY*pMt')
     , ('edilio.rivera@gmail.com', 'Edilio Rivera Godoy', '4738 Browning Lane', 'h%Epei6vGxjqR!')
     , ('raffaele.marcelo@gmail.com', 'Raffaele Marcelo', '1667 Central Avenue', 'V#Dx53a*ajj**E')
     , ('quarto.pinto@gmail.com', 'Quarto Pinto', '646 George Street', 'v#Z9kx%9igJn%Z')
     , ('amorette.michel@gmail.com', 'Amorette Michel', '1515 Lake Forest Drive', 'f2WFBXys@r4RAG');

insert into SEAT (NUMBER, NAME)
values (1, 'Eden Park')
     , (2, 'Eden Park')
     , (3, 'Eden Park')
     , (4, 'Eden Park')
     , (1, 'Sydney Football Stadium')
     , (2, 'Sydney Football Stadium')
     , (3, 'Sydney Football Stadium')
     , (4, 'Sydney Football Stadium')
     , (1, 'Melbourne Rectangular Stadium')
     , (2, 'Melbourne Rectangular Stadium')
     , (3, 'Melbourne Rectangular Stadium')
     , (4, 'Melbourne Rectangular Stadium')
     , (1, 'Waikatao Stadium')
     , (2, 'Waikatao Stadium')
     , (3, 'Waikatao Stadium')
     , (4, 'Waikatao Stadium')
     , (1, 'Brisbane Stadium')
     , (2, 'Brisbane Stadium')
     , (3, 'Brisbane Stadium')
     , (4, 'Brisbane Stadium')
     , (5, 'Brisbane Stadium')
     , (6, 'Brisbane Stadium')
     , (1, 'Perth Rectangular Stadium')
     , (2, 'Perth Rectangular Stadium')
     , (3, 'Perth Rectangular Stadium')
     , (4, 'Perth Rectangular Stadium')
     , (5, 'Perth Rectangular Stadium')
     , (1, 'Stadium Australia')
     , (2, 'Stadium Australia')
     , (3, 'Stadium Australia')
     , (4, 'Stadium Australia')
     , (5, 'Stadium Australia')
     , (6, 'Stadium Australia')
     , (7, 'Stadium Australia');

insert into PURCHASE (DATE, CREDIT_CARD, EMAIL, MATCH_NUMBER)
values ('2023-06-14', '4643622934714755', 'joe.toe@gmail.com', 1)
     , ('2023-06-14', '4595023766366137', 'john.gable@gmail.com', 1)
     , ('2023-06-16', '4643622934714755', 'joe.toe@gmail.com', 2)
     , ('2023-06-17', '4678474973058613', 'etta.jordan@gmail.com', 1)
     , ('2023-06-17', '4654618088225172', 'lawrence.arroyo@gmail.com', 1)
     , ('2023-06-18', '4185814201655001', 'arcangel.romo@gmail.com', 1)

     , ('2023-06-18', '4984204070612866', 'edilio.rivera@gmail.com', 2)
     , ('2023-06-18', '4580609218647335', 'raffaele.marcelo@gmail.com', 2)
     , ('2023-06-18', '4185814201655001', 'quarto.pinto@gmail.com', 2)

     , ('2023-06-19', '4834804616202023', 'amorette.michel@gmail.com', 3)
     , ('2023-06-19', '4393930959434510', 'joe.toe@gmail.com', 3)

     , ('2023-06-19', '4195550797935120', 'edilio.rivera@gmail.com', 4)
     , ('2023-06-19', '4834804616202023', 'amorette.michel@gmail.com', 4)
     , ('2023-06-22', '4824722849743674', 'etta.jordan@gmail.com', 4)

     , ('2023-06-23', '4168476432142380', 'edilio.rivera@gmail.com', 6)
     , ('2023-06-24', '4834804616202023', 'amorette.michel@gmail.com', 6)
     , ('2023-06-25', '4930744315470575', 'arcangel.romo@gmail.com', 6)
     , ('2023-06-25', '4351923157926122', 'quarto.pinto@gmail.com', 6)

     , ('2023-06-25', '4958339807165630', 'lawrence.arroyo@gmail.com', 7)

     , ('2023-06-25', '4470161424176298', 'john.gable@gmail.com', 9)
     , ('2023-06-27', '4788737386339987', 'raffaele.marcelo@gmail.com', 9)
     , ('2023-06-27', '4612952678199781', 'amorette.michel@gmail.com', 9)

     , ('2023-07-21', '4643622934714755', 'joe.toe@gmail.com', 10)
     , ('2023-07-21', '4788737386339987', 'raffaele.marcelo@gmail.com', 10)
     , ('2023-07-21', '4612952678199781', 'amorette.michel@gmail.com', 10)

     , ('2023-07-25', '4643622934714755', 'joe.toe@gmail.com', 11)
     , ('2023-07-25', '4834804616202023', 'amorette.michel@gmail.com', 11)

     , ('2023-07-28', '4643622934714755', 'arcangel.romo@gmail.com', 12)
     , ('2023-07-28', '4834804616202023', 'raffaele.marcelo@gmail.com', 12)
     , ('2023-07-29', '4834804616202023', 'lawrence.arroyo@gmail.com', 12)

     , ('2023-07-30', '4958339807165630', 'arcangel.romo@gmail.com', 13)

     , ('2023-08-06', '4643622934714755', 'joe.toe@gmail.com', 14)
     , ('2023-08-07', '4958339807165630', 'edilio.rivera@gmail.com', 14)

     , ('2023-08-07', '4834804616202023', 'lawrence.arroyo@gmail.com', 14)
     , ('2023-08-08', '4958339807165630', 'edilio.rivera@gmail.com', 14)
     , ('2023-08-08', '4958339807165630', 'raffaele.marcelo@gmail.com', 14);

insert into PRICE (NUMBER, NAME, MATCH_NUMBER, PRICE)
values (1, 'Brisbane Stadium', 7, 27000)
     , (2, 'Brisbane Stadium', 7, 27000)
     , (3, 'Brisbane Stadium', 7, 27000)
     , (4, 'Brisbane Stadium', 7, 23000)
     , (5, 'Brisbane Stadium', 7, 23000)
     , (6, 'Brisbane Stadium', 7, 17000)

     , (1, 'Eden Park', 1, 18000)
     , (2, 'Eden Park', 1, 18000)
     , (3, 'Eden Park', 1, 18000)
     , (4, 'Eden Park', 1, 18000)

     , (1, 'Eden Park', 15, 30000)
     , (2, 'Eden Park', 15, 30000)
     , (3, 'Eden Park', 15, 30000)
     , (4, 'Eden Park', 15, 25600)

     , (1, 'Melbourne Rectangular Stadium', 9, 18000)
     , (2, 'Melbourne Rectangular Stadium', 9, 18000)
     , (3, 'Melbourne Rectangular Stadium', 9, 18000)
     , (4, 'Melbourne Rectangular Stadium', 9, 15500)

     , (1, 'Melbourne Rectangular Stadium', 10, 21400)
     , (2, 'Melbourne Rectangular Stadium', 10, 21400)
     , (3, 'Melbourne Rectangular Stadium', 10, 20700)
     , (4, 'Melbourne Rectangular Stadium', 10, 20700)

     , (1, 'Perth Rectangular Stadium', 5, 15600)
     , (2, 'Perth Rectangular Stadium', 5, 15600)
     , (3, 'Perth Rectangular Stadium', 5, 14000)
     , (4, 'Perth Rectangular Stadium', 5, 14000)
     , (5, 'Perth Rectangular Stadium', 5, 13400)

     , (1, 'Perth Rectangular Stadium', 11, 15600)
     , (2, 'Perth Rectangular Stadium', 11, 15600)
     , (3, 'Perth Rectangular Stadium', 11, 14000)
     , (4, 'Perth Rectangular Stadium', 11, 14000)
     , (5, 'Perth Rectangular Stadium', 11, 13400)

     , (1, 'Stadium Australia', 6, 15500)
     , (2, 'Stadium Australia', 6, 15500)
     , (3, 'Stadium Australia', 6, 15500)
     , (4, 'Stadium Australia', 6, 15500)
     , (5, 'Stadium Australia', 6, 15500)
     , (6, 'Stadium Australia', 6, 15500)
     , (7, 'Stadium Australia', 6, 15500)

     , (1, 'Stadium Australia', 12, 18700)
     , (2, 'Stadium Australia', 12, 18700)
     , (3, 'Stadium Australia', 12, 18700)
     , (4, 'Stadium Australia', 12, 18700)
     , (5, 'Stadium Australia', 12, 18700)
     , (6, 'Stadium Australia', 12, 18700)
     , (7, 'Stadium Australia', 12, 18700)

     , (1, 'Sydney Football Stadium', 2, 13000)
     , (2, 'Sydney Football Stadium', 2, 13000)
     , (3, 'Sydney Football Stadium', 2, 13000)
     , (4, 'Sydney Football Stadium', 2, 13000)

     , (1, 'Sydney Football Stadium', 3, 13000)
     , (2, 'Sydney Football Stadium', 3, 13000)
     , (3, 'Sydney Football Stadium', 3, 13000)
     , (4, 'Sydney Football Stadium', 3, 13000)

     , (1, 'Sydney Football Stadium', 4, 13000)
     , (2, 'Sydney Football Stadium', 4, 13000)
     , (3, 'Sydney Football Stadium', 4, 13000)
     , (4, 'Sydney Football Stadium', 4, 13000)

     , (1, 'Sydney Football Stadium', 14, 16700)
     , (2, 'Sydney Football Stadium', 14, 16700)
     , (3, 'Sydney Football Stadium', 14, 16300)
     , (4, 'Sydney Football Stadium', 14, 15200)

     , (1, 'Waikatao Stadium', 8, 15200)
     , (2, 'Waikatao Stadium', 8, 15200)
     , (3, 'Waikatao Stadium', 8, 15200)
     , (4, 'Waikatao Stadium', 8, 15200)

     , (1, 'Waikatao Stadium', 13, 19500)
     , (2, 'Waikatao Stadium', 13, 19500)
     , (3, 'Waikatao Stadium', 13, 17500)
     , (4, 'Waikatao Stadium', 13, 17500);