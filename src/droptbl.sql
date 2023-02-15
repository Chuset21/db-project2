-- Include your drop table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
connect to cs421;

-- Remember to put the drop table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been dropped (reverse of the creation order).

drop table Selected;
drop table Price;
drop table PlayIn;
drop table Participation;
drop table Purchase;
drop table Client;
drop table Seat;
drop table Goal;
drop table Referee;
drop table Player;
drop table Coach;
drop table Match;
drop table Team;
drop table Stadium;