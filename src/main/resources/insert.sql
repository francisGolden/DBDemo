PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

INSERT INTO courses ( course_id, course_name, credits ) VALUES
    (1, 'Introduction to Database Systems', 4),
    (2, 'Data Structures and Algorithms', 4),
    (3, 'Linear Algebra', 3);

INSERT INTO students ( id, name, email, age, course_id) VALUES
    (1, 'Alice Smith', 'alice@example.com', 20, 1),
    (2, 'Bob Jones', 'bob@example.com', 22, 2),
    (3, 'Charlie Brown', 'charlie@example.com', 19, 1),
    (4, 'Diana Prince', 'diana@example.com', 21, 3),
    (5, 'Eve Davis', 'eve@example.com', 20, 2);