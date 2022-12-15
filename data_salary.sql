SELECT * FROM job_salary.ds_salaries;

SELECT * FROM ds_salaries;
ALTER TABLE ds_salaries RENAME COLUMN MyUnknownColumn TO employee_id;
SELECT * FROM ds_salaries;
DESCRIBE ds_salaries;
SELECT * FROM ds_salaries WHERE employee_id IS NULL;
SELECT * FROM ds_salaries WHERE work_year IS NULL;
SELECT * FROM ds_salaries WHERE experience_level IS NULL;
SELECT * FROM ds_salaries WHERE employment_type IS NULL;
SELECT * FROM ds_salaries WHERE job_title IS NULL;
SELECT * FROM ds_salaries WHERE salary IS NULL;
SELECT * FROM ds_salaries WHERE salary_currency IS NULL;
SELECT * FROM ds_salaries WHERE salary_in_usd IS NULL;
SELECT * FROM ds_salaries WHERE employee_residence IS NULL;
SELECT * FROM ds_salaries WHERE remote_ratio IS NULL;
SELECT * FROM ds_salaries WHERE company_location IS NULL;
SELECT * FROM ds_salaries WHERE company_size IS NULL;
SELECT COUNT(*) as number_of_rows FROM ds_salaries;
SELECT * FROM ds_salaries
SELECT job_title, COUNT(job_title) as count
FROM ds_salaries
GROUP BY job_title
ORDER BY count DESC
LIMIT 5;
SELECT experience_level, count(experience_level) as count
FROM ds_salaries
GROUP BY experience_level;

SELECT * FROM ds_salaries

SELECT experience_level, ROUND(avg(salary_in_usd),2) as salary_in_usd_avg
FROM ds_salaries
GROUP BY experience_level;

SELECT remote_ratio, count(remote_ratio) as count
FROM ds_salaries
GROUP BY remote_ratio
ORDER BY count DESC;

SELECT work_year, ROUND(avg(salary_in_usd),2) as salary_in_usd_avg
FROM ds_salaries
GROUP BY work_year;

SELECT employment_type, COUNT(employment_type) as count
FROM ds_salaries
GROUP BY employment_type;

SELECT employment_type, ROUND(avg(salary_in_usd),2) as salary_in_usd_avg
FROM ds_salaries
GROUP BY employment_type
ORDER BY salary_in_usd_avg DESC;











