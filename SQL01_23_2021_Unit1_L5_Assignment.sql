-- 1. Join the film to the film_actor table.
SELECT * FROM FILM F
JOIN FILM_ACTOR FA
ON F.FILM_ID = FA.FILM_ID

-- 2. Join the actor table to the film_actor table.
SELECT * FROM ACTOR AC
JOIN FILM_ACTOR FA
ON AC.ACTOR_ID = FA.ACTOR_ID

-- 3. Try to join the actor, film_actor, and film table together (3 joins!)
SELECT * FROM FILM_ACTOR FA
JOIN ACTOR AC 
ON FA.ACTOR_ID = AC.ACTOR_ID
JOIN FILM F
ON FA.FILM_ID = F.FILM_ID