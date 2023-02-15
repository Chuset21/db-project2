-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;

create table Match
(
    match_number integer     not null GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    length       integer,
    round        varchar(15) not null,
    date         date        not null,
    time         time        not null,
    primary key (match_number),
    constraint check_match check (length >= 0 and (round = 'final' or round = 'third place' or round = 'semifinals' or
                                                   round = 'quarterfinals' or round = 'round of 16' or
                                                   round = 'group stage'))
);

create table Team
(
    national_association varchar(100)  not null,
    url                  varchar(2083) not null,
    t_group              char(1)       not null,
    country              varchar(60)   not null,
    primary key (country),
    constraint check_team check (t_group = 'A' or t_group = 'B' or t_group = 'C' or t_group = 'D' or t_group = 'E' or
                                 t_group = 'F' or t_group = 'G' or t_group = 'H')
);


