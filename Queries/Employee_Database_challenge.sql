--Retirement Titles
SELECT e.emp_no , e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;


--Unique Titles
SELECT DISTINCT ON (emp_no) emp_no , first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC , from_date DESC;


--Retiring Titles
SELECT title, count(emp_no) AS "Total Retiring"
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(emp_no) DESC;


--Mentorship  Eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;


--APPENDIX
-- Find out which dept and job title has highest retiring staff
SELECT ut.title, d.dept_name, count(ut.emp_no) AS "Total Retiring"
INTO dept_titles_retiring
FROM unique_titles AS ut
JOIN dept_emp AS de
ON (ut.emp_no = de.emp_no)
JOIN departments AS d
ON (de.dept_no = d.dept_no)
GROUP BY d.dept_name, ut.title
ORDER BY count(ut.emp_no) DESC;

-- Find total employees in the company
SELECT COUNT(emp_no) AS "Total Employees"
FROM (SELECT DISTINCT (emp_no) FROM employees) t;
