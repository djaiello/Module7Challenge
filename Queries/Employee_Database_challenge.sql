-- ***********************************************************
-- Deliverable 1: The Number of Retiring Employees by Title
-- ***********************************************************

-- Create table with retirement age employees and their titles
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       ti.title,
	   ti.from_date,
	   ti.to_date
INTO retire_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retire_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retire_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Create table with a count of each title for retirees
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;


-- ******************************************************************
-- Deliverable 2: The Employees Eligible for the Mentorship Program
-- ******************************************************************

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentor_eligible
FROM employees AS e
LEFT JOIN dept_employees AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND
		(de.to_date = '9999-01-01')
ORDER BY e.emp_no, ti.to_date DESC;

SELECT * FROM mentor_eligible;

