show databases;
use employees;
show tables;

SELECT * 
FROM employees
WHERE
first_name in (
'Irena', 'Vidya', 'Maya'
);
-- 709

SELECT * 
FROM employees
WHERE
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
;
-- 709. It matches

SELECT * 
FROM employees
WHERE
(
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
) AND
gender = 'M'
;
-- 441

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
;

SELECT *
FROM employees
WHERE 
last_name LIKE 'E%'
OR 
last_name LIKE '%E'
;

SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
;

SELECT *
FROM employees
WHERE last_name LIKE '%e'
;
-- 1000 employees whos last name
-- ends with e

SELECT *
FROM employees
WHERE 
hire_date LIKE '199%'
;
-- 1000 employees hired in the 90's

SELECT *
FROM employees
WHERE 
birth_date LIKE '%12-25'
;
-- 842 Employees born on christmas


SELECT *
FROM employees
WHERE 
hire_date LIKE '199%'
AND
birth_date LIKE '%12-25'
;
-- 362 employees hired in the 90's
-- and born on christmas

SELECT *
FROM employees
WHERE
last_name LIKE '%q%'
;
-- 1000 employees have a 'q' in
-- their name

SELECT *
FROM employees
WHERE 
last_name like '%q%'
AND
last_name NOT LIKE '%qu%'
;
-- 547 employees with 'q' in their
-- last name but not 'qu'








