CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pz.name
FROM
    person p
    JOIN person_visits pv ON p.id = pv.person_id
    JOIN menu m ON pv.pizzeria_id = m.pizzeria_id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
WHERE
    p.name = 'Dmitriy'
    AND pv.visit_date = '2022-01-08'
    AND m.price < 800

SELECT * FROM mv_dmitriy_visits_and_eats