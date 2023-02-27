-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;


create table Stadium
(
    location varchar(100) not null,
    name     varchar(30)  not null,
    capacity integer      not null,
    primary key (name),
    constraint stadium_check check (capacity >= 1)
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

create table Match
(
    match_number integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    length       integer, -- can be null if the match hasn't been played yet
    round        varchar(15)                                                        not null,
    date         date                                                               not null,
    time         time                                                               not null,
    name         varchar(30)                                                        not null,
    country1     varchar(60),
    country2     varchar(60),
    primary key (match_number),
    foreign key (name) references Stadium,
    foreign key (country1) references Team (country),
    foreign key (country2) references Team (country),
    constraint match_check check ((length IS NULL or length >= 0) and
                                  (round = 'Final' or round = 'Third place' or round = 'Semifinals' or
                                   round = 'Quarterfinals' or round = 'Round of 16' or
                                   round = 'Group stage'))
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
    foreign key (country) references Team,
    constraint player_check check (position = 'Forward' or position = 'Midfielder' or position = 'Defender' or
                                   position = 'Goalkeeper')
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

create table Goal
(
    minute       integer,              -- can be null if it's scored during penalties
    number       integer     not null, -- not auto generated because it shows the goal number in a specific match
    match_number integer     not null,
    pid          integer     not null,
    country      varchar(60) not null,
    primary key (match_number, number),
    foreign key (match_number) references Match,
    foreign key (country, pid) references Player,
    constraint goal_check check (number >= 1 and (minute >= 0 or not minute is null))
);

create table Seat
(
    number integer     not null,
    name   varchar(30) not null,
    primary key (name, number),
    foreign key (name) references Stadium,
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
    date         date                                                               not null,
    credit_card  varchar(16)                                                        not null, -- no way to check that it's all numbers
    pid          integer GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) not null,
    email        varchar(100)                                                       not null,
    match_number integer                                                            not null,
    primary key (email, pid),
    foreign key (email) references Client,
    foreign key (match_number) references Match
);

create table Participation
(
    rid          integer     not null,
    match_number integer     not null,
    role_of_ref  varchar(20) not null,
    primary key (rid, match_number),
    foreign key (rid) references Referee,
    foreign key (match_number) references Match
);

create table PlayIn
(
    pid               integer     not null,
    country           varchar(60) not null,
    match_number      integer     not null,
    yellow_cards      integer     not null,
    received_red_card boolean     not null,
    detailed_position varchar(20) not null,
    minute_entered    integer     not null,
    minute_exited     integer,
    primary key (country, pid, match_number),
    foreign key (country, pid) references Player,
    foreign key (match_number) references Match,
    constraint play_in_check check (minute_entered <= minute_exited and
                                    (0 = yellow_cards or yellow_cards = 1 or
                                     (yellow_cards = 2 and received_red_card)))
);

create table Price
(
    number       integer     not null,
    name         varchar(30) not null,
    match_number integer     not null,
    price        integer     not null, -- we store it in cents
    primary key (name, number, match_number),
    foreign key (name, number) references Seat,
    foreign key (match_number) references Match,
    constraint price_check check (price >= 0)
);

create table Selected
(
    number integer      not null,
    name   varchar(30)  not null,
    pid    integer      not null,
    email  varchar(100) not null,
    primary key (name, number, email, pid),
    foreign key (name, number) references Seat,
    foreign key (email, pid) references Purchase
);
