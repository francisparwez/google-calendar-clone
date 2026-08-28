-- Delete the database if it already exists.
-- WARNING: This deletes everything inside the database.

DROP DATABASE IF EXISTS calendar;

-- Create the database again.

CREATE DATABASE calendar CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Select the database.

USE calendar;

-- Create the appointments table.

CREATE TABLE appointments (
    id INT(11) NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    instructor_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- Verify the structure.

DESCRIBE appointments;