SELECT MAX(salary) AS "maximumSalary" , r.name AS role 
FROM jobs j
JOIN roles r ON j."roleId" = r.id
WHERE active = true
GROUP BY r.id
ORDER BY "maximumSalary" ASC;