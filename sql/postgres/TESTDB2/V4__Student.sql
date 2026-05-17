-- ✅ Create table: students
CREATE TABLE IF NOT EXISTS students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ✅ Create table: courses
CREATE TABLE IF NOT EXISTS courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ✅ Create table: enrollments (many-to-many)
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    
    CONSTRAINT fk_student
      FOREIGN KEY(student_id) REFERENCES students(student_id)
      ON DELETE CASCADE,

    CONSTRAINT fk_course
      FOREIGN KEY(course_id) REFERENCES courses(course_id)
      ON DELETE CASCADE,

    CONSTRAINT unique_enrollment UNIQUE(student_id, course_id)
);

-- ✅ Sample Data Insert
INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES
('Arun', 'Kumar', 'arun@example.com', '2000-05-10'),
('Priya', 'Sharma', 'priya@example.com', '2001-08-15');

INSERT INTO courses (course_name, course_code)
VALUES
('Mathematics', 'MATH101'),
('Computer Science', 'CS101');

INSERT INTO enrollments (student_id, course_id)
VALUES
(1, 1),
(1, 2),
(2, 2);