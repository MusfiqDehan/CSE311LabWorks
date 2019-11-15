## Query-3:

SELECT DISTINCT Flno, Ffrom, Fto
FROM flights f, employees e, certified c, aircraft a
WHERE e.Eid=c.Eid 
AND c.Aid=a.Aid
AND a.Cruisingrange>=f.Distance 
AND e.Salary > 100000;
