# Assignment-1 Queries (1-15)

### Query-2
<p>
SELECT DISTINCT a.Aid<br>
FROM aircraft a, flights f<br>
WHERE a.Cruisingrange > (<br>
    SELECT f.Distance<br>
    FROM flights f<br>
    WHERE f.Ffrom="Jessore"<br>
    AND f.Fto="Khulna");
</p>
```
SELECT DISTINCT a.Aid
FROM aircraft a, flights f
WHERE a.Cruisingrange > (
    SELECT f.Distance
    FROM flights f
    WHERE f.Ffrom="Jessore"
    AND f.Fto="Khulna");
```


### Query-3:
<p>
SELECT DISTINCT Flno, Ffrom, Fto<br>
FROM flights f, employees e, certified c, aircraft a<br>
WHERE e.Eid=c.Eid<br> 
AND c.Aid=a.Aid<br>
AND a.Cruisingrange>=f.Distance<br> 
AND e.Salary > 100000;
</p>

### Query-4
<p>
SELECT DISTINCT e.Ename<br>
FROM employees e, certified c, aircraft a<br>
WHERE a.Aid=c.Aid<br>
AND c.Eid=e.Eid<br>
AND a.Cruisingrange>300<br>
AND e.Eid<br>
NOT IN (<br>
    SELECT c.Eid<br>
    FROM certified c, aircraft a<br>
    WHERE a.Aid=c.Aid<br>
    AND a.Aname LIKE "Boeing%");
</p>

### Query-5
<p>
SELECT e.Eid<br>
FROM employees e<br>
WHERE e.Salary<(<br>
    SELECT MAX(Salary)<br>
    FROM employees);
</p>
