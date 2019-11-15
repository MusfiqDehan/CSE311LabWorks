# Assignment-1 Queries (1-15)

### Query-3:
<p><
SELECT DISTINCT Flno, Ffrom, Fto<br>
FROM flights f, employees e, certified c, aircraft a<br>
WHERE e.Eid=c.Eid<br> 
AND c.Aid=a.Aid<br>
AND a.Cruisingrange>=f.Distance<br> 
AND e.Salary > 100000;
</p>
