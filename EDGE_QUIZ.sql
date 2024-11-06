use student2;
CREATE TABLE attendence (
    serial_no INT NOT NULL,
    course_code INT NOT NULL,
    course_title VARCHAR(20),
    class_time DATETIME,
    PRIMARY KEY (serial_no)
);

INSERT INTO attendence (serial_no, course_code, course_title, class_time)
VALUES
    (1, 101, 'C', '2024-11-01 11:00:00'),
    (2, 102, 'C++', '2024-11-01 12:00:00'),
    (3, 103, 'Java', '2024-11-01 01:00:00'),
    (4, 104, 'Python', '2024-11-02 11:00:00'),
    (5, 105, 'DBMS', '2024-11-02 12:00:00'),
    (6, 106, 'C', '2024-11-02 01:00:00'),
    (7, 107, 'DLD', '2024-11-03 11:00:00'),
    (8, 108, 'Algorithm', '2024-11-03 12:00:00'),
    (9, 109, 'SE', '2024-11-03 01:00:00'),
    (10, 110, 'ML', '2024-11-04 11:00:00');

CREATE TABLE faculty_member (
    serial_no INT NOT NULL,
    member_name VARCHAR(20),
    dept VARCHAR(20),
    room_number INT,
    PRIMARY KEY (serial_no)
);

INSERT INTO faculty_member (serial_no, member_name, dept, room_number)
VALUES
    (1, 'A', 'CSE', 201),
    (2, 'B', 'CSE', 202),
    (3, 'C', 'CSE', 203),
    (4, 'D', 'CSE', 204),
    (5, 'E', 'EEE', 301),
    (6, 'F', 'EEE', 302),
    (7, 'G', 'EEE', 303),
    (8, 'H', 'ECE', 401),
    (9, 'I', 'ECE', 402),
    (10, 'J', 'ECE', 403);

SELECT *
FROM attendence
LEFT JOIN faculty_member
ON attendence.serial_no = faculty_member.serial_no;


SELECT 
    serial_no, 
    course_code, 
    course_title, 
    class_time, 
    NULL AS member_name, 
    NULL AS dept, 
    NULL AS room_number
FROM 
    attendence

UNION

SELECT 
    serial_no, 
    NULL AS course_code, 
    NULL AS course_title, 
    NULL AS class_time, 
    member_name, 
    dept, 
    room_number
FROM 
    faculty_member;
    
    -- Display all values in attendance table
SELECT * FROM attendence;

-- Display all values in faculty_member table that are common with attendance table based on `serial_no`
SELECT * FROM faculty_member
WHERE serial_no IN (SELECT serial_no FROM attendance);




