-- Write a SQL query that lists all the stadium names and their locations and the match date of matches
-- in which player Christine Sinclair has played and scored at least one goal.

select s.NAME, s.LOCATION, m.DATE
from STADIUM s
         join MATCH m on s.NAME = m.NAME
         join PLAYIN x on m.MATCH_NUMBER = x.MATCH_NUMBER
         join player p on x.COUNTRY = p.COUNTRY and x.PID = p.PID
         join GOAL g on m.MATCH_NUMBER = g.MATCH_NUMBER and p.COUNTRY = g.COUNTRY and p.PID = g.PID
where p.NAME = 'Christine Sinclair';

-- Write a SQL query that lists the name, shirt number and country of all players that have played in all
-- matches of their teams.

select distinct p.NAME, p.NUMBER, p.COUNTRY
from PLAYER p
         join PLAYIN x on p.COUNTRY = x.COUNTRY and p.PID = x.PID
         join MATCH m on x.MATCH_NUMBER = m.MATCH_NUMBER
         join TEAM t on m.COUNTRY1 = t.COUNTRY or m.COUNTRY2 = t.COUNTRY
where m.LENGTH is not null
group by p.NAME, p.NUMBER, p.COUNTRY
having count(p.NAME) = (select count(*) c
                        from MATCH m2
                                 join TEAM t2 on t2.COUNTRY = m2.COUNTRY1 or t2.COUNTRY = m2.COUNTRY2
                        group by t2.COUNTRY)
order by COUNTRY;