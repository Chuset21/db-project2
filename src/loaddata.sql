-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

insert into TEAM (NATIONAL_ASSOCIATION, URL, T_GROUP, COUNTRY)
values ('Canadian Soccer Association', 'https://www.canadasoccer.com ', 'A', 'Canada')
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
values ('Forward', 'Jordyn Huitema', '2001-05-08', '9', 'Canada')
     , ('Forward', 'Adriana Leon', '1983-06-12', '12', 'Canada')
     , ('Forward', 'Christine Sinclair', '1992-10-02', '19', 'Canada')
     , ('Midfielder', 'Jessie Fleming', '1998-03-11', '17', 'Canada')
     , ('Midfielder', 'Julia Grosso', '2000-08-29', '7', 'Canada')
     , ('Defender', 'Ashley Lawrence', '1995-06-11', '10', 'Canada')
     , ('Defender', 'Shelina Zadorsky', '1992-10-24', '4', 'Canada')
     , ('Goalkeeper', 'Kailen Sheridan', '1995-07-16', '1', 'Canada')
     , ('Goalkeeper', 'Stephanie Labbé', '1986-10-10', '1', 'Canada')
     , ('Goalkeeper', 'Sandra Paños', '1992-11-02', '13', 'Spain')
     , ('Forward', 'Athenea del Castillo', '2000-10-24', '22', 'Spain')
     , ('Midfielder', 'Aitana Bonmatí', '1998-01-18', '6', 'Spain')
     , ('Midfielder', 'Débora Cristiane de Oliveira', '1991-10-20', '9', 'Brazil')
     , ('Forward', 'Beatriz Zaneratto João', '1993-12-17', '16', 'Brazil')
     , ('Forward', 'Alexandra Popp', '1991-04-06', '11', 'Germany')
     , ('Goalkeeper', 'Merle Frohms', '1995-01-28', '1', 'Germany')
     , ('Goalkeeper', 'Vanina Correa', '1983-08-14', '1', 'Argentina')
     , ('Forward', 'Yamila Rodríguez', '1998-01-24', '11', 'Argentina')
     , ('Defender', 'Becky Sauerbrunn', '1985-06-06', '4', 'US')
     , ('Midfielder', 'Kristie Mewis', '1991-02-25', '22', 'US')
     , ('Midfielder', 'Yui Hasegawa', '1997-01-29', '14', 'Japan')
     , ('Defender', 'Risa Shimizu', '1996-06-15', '2', 'Japan')
     , ('Defender', 'Wu Haiyan', '1993-02-26', '5', 'China')
     , ('Goalkeeper', 'Xu Huan', '1999-04-06', '12', 'China')
     , ('Forward', 'Jéssica Silva', '1994-12-11', '10', 'Portugal')
     , ('Midfielder', 'Dolores Silva', '1997-08-07', '21', 'Portugal')
     , ('Forward', 'Denise O''Sullivan', '1994-02-04', '34', 'Ireland')
     , ('Defender', 'Louise Quinn', '1990-06-17', '4', 'Ireland')
     , ('Defender', 'Leah Williamson', '1997-03-29', '6', 'England')
     , ('Forward', 'Beth Mead', '1995-05-09', '7', 'England')
     , ('Midfielder', 'Kim Little', '1990-06-29', '10', 'Scotland')
     , ('Goalkeeper', 'Lee Gibson', '1991-09-23', '29', 'Scotland')
     , ('Defender', 'Didem Karagenç', '1993-10-16', '3', 'Turkey')
     , ('Forward', 'Aycan Yanaç', '1998-11-21', '54', 'Turkey')
     , ('Forward', 'Asisat Oshoala', '1994-10-09', '8', 'Nigeria')
     , ('Goalkeeper', 'Chiamaka Nnadozie', '2000-12-08', '16', 'Nigeria')
     , ('Midfielder', 'Jill Roord', '1997-04-22', '14', 'Netherlands')
     , ('Forward', 'Vivianne Miedema', '1996-06-15', '9', 'Netherlands')
     , ('Midfielder', 'Lia Wälti', '1993-04-19', '13', 'Switzerland')
     , ('Forward', 'Alisha Lehmann', '1999-01-21', '23', 'Switzerland');
