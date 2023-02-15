-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;

create table Match
(
    match_number integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    length       integer, -- can be null if the match hasn't been played yet
    round        varchar(15)                                                        not null,
    date         date                                                               not null,
    time         time                                                               not null,
    primary key (match_number),
    constraint match_check check ((length IS NULL or length >= 0) and
                                  (round = 'final' or round = 'third place' or round = 'semifinals' or
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
    constraint team_check check (t_group = 'A' or t_group = 'B' or t_group = 'C' or t_group = 'D' or t_group = 'E' or
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

create table Referee
(
    years_experience integer                                                            not null,
    name             varchar(30)                                                        not null,
    rid              integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    country          varchar(60)                                                        not null,
    primary key (rid),
    constraint referee_check check (years_experience >= 0)
);

create table Stadium
(
    location varchar(100) not null,
    name     varchar(30)  not null,
    capacity integer      not null,
    primary key (name),
    constraint stadium_check check (capacity >= 1)
);

create table Goal
(
    in_penalties boolean not null,
    minute       integer not null,
    goal_number  integer not null, -- not auto generated because it shows the goal number in a specific match
    match_number integer not null,
    primary key (match_number, goal_number),
    foreign key (match_number) references Match,
    constraint goal_check check (goal_number >= 1 and minute >= 0)
);

create table Seat
(
    number integer     not null,
    name   varchar(30) not null,
    primary key (name, number),
    foreign key (name) references Match,
    constraint seat_check check (number >= 0)
);

create table Client
(
    email    varchar(100) not null,
    name     varchar(30)  not null,
    address  varchar(30)  not null,
    password varchar(20)  not null,
    primary key (email),
    constraint client_check check (length(password) >= 10)
);

create table Purchase
(
    total_price integer                                                            not null,
    date        date                                                               not null,
    credit_card varchar(16)                                                        not null, -- no way to check that it's all numbers
    pid         integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    email       varchar(100)                                                       not null,
    primary key (email, pid),
    foreign key (email) references Client
);



