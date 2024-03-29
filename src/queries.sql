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

select p.NAME, p.NUMBER, p.COUNTRY
from PLAYER p
         join PLAYIN x on p.COUNTRY = x.COUNTRY and p.PID = x.PID
group by p.NAME, p.NUMBER, p.COUNTRY, p.PID
having count(p.PID) = (select count(t2.COUNTRY) c
                       from MATCH m2
                                join TEAM t2 on t2.COUNTRY = m2.COUNTRY1 or t2.COUNTRY = m2.COUNTRY2
                       where p.COUNTRY = t2.COUNTRY
                         and m2.LENGTH is not null
                       group by t2.COUNTRY)
order by COUNTRY;

-- Write a SQL query that lists for each team, the country, the number of matches they have played and the
-- total number of goals they have scored during normal play (not counting the penalty kicks in case of a
-- tie). Note that for this query, it might be very useful to have extra attributes attached to some relations
-- (which will depend on your schema) that somehow keep track how many such goals each team scored in
-- a match. Feel free to add such extra attributes to your schema if you find them useful. But you can also
-- try to extract the information through the detailed information you store for each goal, but that might
-- be quite complex.

select t.COUNTRY, x.number_of_matches, coalesce(y.g, 0) number_of_goals
from TEAM t
         join (select t.COUNTRY, count(*) number_of_matches
               from TEAM t
                        join MATCH m on t.COUNTRY = m.COUNTRY1 or t.COUNTRY = m.COUNTRY2
               where m.LENGTH is not null
               group by COUNTRY) x on t.COUNTRY = x.COUNTRY
         left join
     (select t.COUNTRY, count(*) g
      from TEAM t
               join GOAL G on t.COUNTRY = g.COUNTRY
      where MINUTE is not null
      group by t.COUNTRY) y on t.COUNTRY = y.COUNTRY
order by COUNTRY;

-- Query (d)
-- Create an interesting SQL query that extracts some information from tables that refers to purchasing tickets,
-- e.g., some summary information about tickets sold for a particular match, information how many tickets
-- where sold for a match / each match and whether the stadium was sold out, or anything else that might
-- be interesting. The query should not only be a simple query on a single table with only basic selections
-- and projections.

-- see how much money each client has spent
select c.NAME, c.EMAIL, t.total_spend
from CLIENT c
         join
     (select c.EMAIL, sum(p2.PRICE) total_spend
      from CLIENT c
               join PURCHASE p on c.EMAIL = p.EMAIL
               join SELECTED s
                    on p.EMAIL = s.EMAIL and p.PID = s.PID
               join PRICE p2 on p.MATCH_NUMBER = p2.MATCH_NUMBER
      group by c.EMAIL) t on c.EMAIL = t.EMAIL
order by total_spend desc;


-- Query (e)
-- Create a further SQL query that is of interest for this soccer world cup database. Maybe it uses some tables
-- that are not used in any of the other queries, or performs some conditions on the date/time attributes of
-- the schema or any other attributes that have not been used in one of the other queries.

-- query that sees what countries got the most red cards in a game
select red_cards.COUNTRY,
       red_cards.c red_cards_received,
       case
           when red_cards.COUNTRY = m.COUNTRY1 then m.COUNTRY2
           else m.COUNTRY1
           end     opponent,
       s.NAME      stadium,
       date,
       r.NAME      referee_name,
       r.COUNTRY   referee_country
from MATCH m
         join PARTICIPATION part on m.MATCH_NUMBER = part.MATCH_NUMBER
         join REFEREE r on part.RID = r.RID
         join STADIUM s on m.NAME = s.NAME
         join (select m.MATCH_NUMBER, COUNTRY, count(*) c
               from MATCH m
                        join PLAYIN p on m.MATCH_NUMBER = p.MATCH_NUMBER
               where RECEIVED_RED_CARD
               group by m.MATCH_NUMBER, COUNTRY
               having count(*) = (select max(c)
                                  from (select count(*) c
                                        from MATCH m
                                                 join PLAYIN p on m.MATCH_NUMBER = p.MATCH_NUMBER
                                        where RECEIVED_RED_CARD
                                        group by COUNTRY) temp)) red_cards on m.MATCH_NUMBER = red_cards.MATCH_NUMBER
where part.ROLE_OF_REF = 'Head'
group by red_cards.COUNTRY, red_cards.c, s.NAME, date, r.NAME, r.COUNTRY, m.COUNTRY1, m.COUNTRY2
order by COUNTRY;
