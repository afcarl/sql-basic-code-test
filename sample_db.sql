CREATE TABLE titles (
  title_id int
, title varchar(20)
);

INSERT INTO titles (title_id, title) VALUES
(1, 'CEO'),
(2, 'Data Scientist'),
(3, 'Data Analyst'),
(4, 'Human Resources'),
(5, 'Software Engineer'),
(6, 'ETL Engineer'),
(7, 'CTO');

CREATE TABLE emp_status (
  status_id int auto_increment primary key
, status varchar(25)
);

INSERT INTO emp_status (status) VALUES
('Full Time'), ('Part time'), ('Retired'), ('Contractor'), ('Intern'), ('Left company');

CREATE TABLE employees (
  employee_id int auto_increment primary key
, name varchar(20)
, title_id int
, status_id int
);

INSERT INTO employees (name, title_id, status_id) VALUES
('Alice Anderson',     1, 1),
('Bob Baker',          7, 1),
('Carol Carter',       2, 1),
('Denny Davenport',    4, 1),
('Erica Elfman',       3, 1),
('Fredrick Flannigan', 6, 1),
('Gabrella Gutierrez', 5, 6),
('Harry Henderson',    5, 1),
('Isabel Irwin',       5, 1),
('Joseph Jupyter',     3, 3),
('Kara Zorel',         3, 1),
('Liam Cantor',        6, 1),
('Michelle Matcha',    0, 4),
('Neville Neilsen',    2, 2),
('Olivia O\'hara',     6, 5),
('Paul Provenza',      5, 5);

CREATE TABLE parking (
  employee_id int
, slot varchar(64)
);

INSERT INTO parking (employee_id, slot) VALUES
(1, 'Reserved #1'),
(2, 'Reserved #2'),
(3, 'Main lot'),
(4, 'Lower garage #238'),
(5, 'Main lot'),
(6, 'Main lot'),
(8, 'Main lot'),
(11, 'Lower garage #211'),
(12, 'Lower garage #233'),
(13, 'Lower garage #258'),
(14, 'Main lot'),
(15, 'Main lot');

CREATE TABLE report_structure (
  report_id int auto_increment primary key
, employee_id int
, mgr_employee_id int
);

INSERT INTO report_structure (employee_id, mgr_employee_id) VALUES
(2,  1),
(3,  2),
(4,  1),
(5,  3),
(6,  9),
(7,  8),
(8,  2),
(9,  2),
(10, 3),
(11, 3),
(12, 8),
(13, 1),
(14, 4),
(15, 9),
(16, 9);

CREATE TABLE emp_salaries (
   salary_id int auto_increment primary key
 , employee_id int
 , salary float
);

INSERT INTO emp_salaries (employee_id, salary) VALUES
(1,  100000),
(2,   90000),
(3,   40000),
(4,   55000),
(5,   54500),
(6,   87700),
(7,   85000),
(8,   70000),
(9,   75000),
(10,  72000),
(11,  42500),
(12,  81000),
(13,  40000),
(14,  20000),
(15,  25000),
(16,  25000);

