-- Write a SQL query that lists all the stadium names and their locations and the match date of matches
-- in which player Christine Sinclair has played and scored at least one goal.

select distinct s.NAME, s.LOCATION, m.DATE
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

-- Write a SQL query that lists for each team, the country, the number of matches they have played and the
-- total number of goals they have scored during normal play (not counting the penalty kicks in case of a
-- tie). Note that for this query, it might be very useful to have extra attributes attached to some relations
-- (which will depend on your schema) that somehow keep track how many such goals each team scored in
-- a match. Feel free to add such extra attributes to your schema if you find them useful. But you can also
-- try to extract the information through the detailed information you store for each goal, but that might
-- be quite complex.

select t.COUNTRY, x.number_of_matches, y.number_of_goals
from TEAM t
         join (select t.COUNTRY, count(*) number_of_matches
               from TEAM t
                        join MATCH m on t.COUNTRY = m.COUNTRY1 or t.COUNTRY = m.COUNTRY2
               where m.LENGTH is not null
               group by COUNTRY) x on t.COUNTRY = x.COUNTRY
         join
     (select t.COUNTRY, count(*) number_of_goals
      from TEAM t
               join GOAL G on t.COUNTRY = g.COUNTRY
      where not IN_PENALTIES
      group by t.COUNTRY) y on t.COUNTRY = y.COUNTRY
order by COUNTRY;

-- Query (d) TODO
-- Create an interesting SQL query that extracts some information from tables that refers to purchasing tickets, e.g., some summary information about tickets sold for a particular match, information how manytickets
-- where sold for a match / each match and whether the stadium was sold out, or anything else that might
-- be interesting. The query should not only be a simple query on a single table with only basic selections
-- and projections.



-- Query (e) TODO
-- Create a further SQL query that is of interest for this soccer world cup database. Maybe it uses some tables
-- that are not used in any of the other queries, or performs some conditions on the date/time attributes of
-- the schema or any other attributes that have not been used in one of the other queries.