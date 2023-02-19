create view playerinfo (name, shirt_number, DOB, country, national_association, team_group) as
select NAME, NUMBER, DOB, t.COUNTRY, t.NATIONAL_ASSOCIATION, t.T_GROUP
from PLAYER
         join TEAM t on PLAYER.COUNTRY = t.COUNTRY;

select *
from playerinfo fetch first 5 rows only;

select *
from playerinfo
where team_group = 'A'
    fetch first 5 rows only;

-- try to then insert a record into the view

drop view playerinfo;