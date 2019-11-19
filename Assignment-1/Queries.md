<center> # Assignment-1 Queries (1-15)</center>

### Query-2
    
```MySQL
    
SELECT DISTINCT a.Aid
FROM aircraft a, flights f
WHERE a.Cruisingrange > (
    SELECT f.Distance
    FROM flights f
    WHERE f.Ffrom="Jessore"
    AND f.Fto="Khulna");
    
```


### Query-3:
    
```MySQL
    
SELECT DISTINCT Flno, Ffrom, Fto
FROM flights f, employees e, certified c, aircraft a
WHERE e.Eid=c.Eid 
AND c.Aid=a.Aid
AND a.Cruisingrange>=f.Distance 
AND e.Salary > 100000;

```

### Query-4

```MySQL
    
SELECT DISTINCT e.Ename
FROM employees e, certified c, aircraft a
WHERE a.Aid=c.Aid
AND c.Eid=e.Eid
AND a.Cruisingrange>300
AND e.Eid
NOT IN (
    SELECT c.Eid
    FROM certified c, aircraft a
    WHERE a.Aid=c.Aid
    AND a.Aname LIKE "Boeing%");
    
```

### Query-5

```MySQL
    
SELECT e.Eid
FROM employees e
WHERE e.Salary<(
    SELECT MAX(Salary)
    FROM employees);
    
```
