/*

UPDATE account
SET last_login = CURRENT_TIMESTAMP;

UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login;

UPDATE account_job
SET hire_date = account.created_on FROM account 
WHERE account_job.user_id = accoount.user_id;

DELETE FROM job
WHERE job_name = 'Dancer'
RETURNING job_name, job_id;

DELETE FROM job
WHERE job_name = 'Doctor'
RETURNING job_name, job_id;

ALTER TABLE information
RENAME TO new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people;

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

ALTER TABLE new_info
DROP COLUMN IF EXISTS people;

DELETE FROM employees
WHERE emp_id = 2;

UPDATE employees
SET emp_id = 2
WHERE emp_id = 3;

CREATE VIEW customer_info AS 
SELECT username, email, created_on FROM account
INNER JOIN account_job ON account_job.user_id = account.user_id;

CREATE OR REPLACE VIEW customer_info AS 
SELECT username, email, created_on, last_login FROM account
INNER JOIN account_job ON account_job.user_id = account.user_id;

*/

SELECT * FROM customer_info



