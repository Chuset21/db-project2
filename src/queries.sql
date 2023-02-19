-- Write a SQL query that lists all the stadium names and their locations and the match date of matches
-- in which player Christine Sinclair has played and scored at least one goal.

select m.NAME, LOCATION, DATE
from STADIUM s
         join MATCH m on s.NAME = m.NAME
         join PLAYIN x on m.MATCH_NUMBER = x.MATCH_NUMBER
         join player p on x.COUNTRY = p.COUNTRY and x.PID = p.PID
         join GOAL g on m.MATCH_NUMBER = g.MATCH_NUMBER and p.COUNTRY = g.COUNTRY and p.PID = g.PID
where p.NAME = 'Christine Sinclair';
