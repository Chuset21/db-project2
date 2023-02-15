-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;

create table Match
(
    match_number integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    length       integer,
    round        varchar(15)                                                        not null,
    date         date                                                               not null,
    time         time                                                               not null,
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

create table Coach
(
    c_role  varchar(30)                                                        not null,
    name    varchar(30)                                                        not null,
    dob     date                                                               not null,
    cid     integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    country varchar(60)                                                        not null,
    primary key (country, cid),
    foreign key (country) references Team
);

create table Player
(
    position varchar(15)                                                        not null,
    name     varchar(30)                                                        not null,
    dob      date                                                               not null,
    number   integer                                                            not null,
    pid      integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    country  varchar(60)                                                        not null,
    primary key (country, pid),
    foreign key (country) references Team
);



