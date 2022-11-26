# Pewlett-Hackard Employee Analysis Module Challenge

## Overview of the analysis:
After building an employee database for Pewlett Hackard and using it to identify those employees that are approaching retirement, we were given two new assignments. The first is to determine the number of retiring employees per title to give management an idea of what levels in the organizational hierarchy will be affected. while the second is to identify employees who are eligible to participate in a mentorship program. This report represents the results and analysis of that assignment.


## Results:
### Deliverable 1: The Number of Retiring Employees by Title

- Retirement-Eligible Employee Historical Titles Table:
        https://github.com/djaiello/Module7Challenge/blob/main/Data/retirement_titles.csv

- Retirement-Eligible Employee Most Recent Title Table:
        https://github.com/djaiello/Module7Challenge/blob/main/Data/unique_titles.csv

- Retirement-Eligible Title Count Table:
        https://github.com/djaiello/Module7Challenge/blob/main/Data/retiring_titles.csv

### Deliverable 2: The Employees Eligible for the Mentorship Program

- Mentorship Program Eligible Employee Table:
        https://github.com/djaiello/Module7Challenge/blob/main/Data/mentorship_eligibilty.csv


### Reference: SQL Queries

  - https://github.com/djaiello/Module7Challenge/blob/main/Queries/Employee_Database_challenge.sql


## Summary:

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

   With the "silver tsunami" of Baby-Boomers retiring, we identifyed over 72K active employees soon to reach retirement age.  Of those, almost 26K are senior engineers, almost 25K are senior staff, over 9K are engineers, ~7.5K are general staff, ~3.6K are technical leaders, over 1K are assistant engineers, and 2 managers.  Pewlett Hackard is going to have to start mentoring current staff or hire from the outside to fill those positions as they open.  In addition, they will have to hire new employees to backfill the lower postions as manyu move up into more senior roles.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

   Looking at our Retirement-Eligible Title Count Table, we can see an abundance of employees at every level, with the exception of managers that could mentor the next generation of Pewlett Hackard.  Our results only identified 1550 employees that would be eligible for mentorship. So with almost 25K Senior engineers and senior staff getting ready to retire, we have plenty of employees to mentor the next generation.

3. Provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami.    

   In looking at the database structure, two additional tables
