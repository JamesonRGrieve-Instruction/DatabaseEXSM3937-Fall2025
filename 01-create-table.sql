-- database: ./my-database.db
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS user_sections;

DROP TABLE IF EXISTS section;

DROP TABLE IF EXISTS course;

DROP TABLE IF EXISTS role;

DROP TABLE IF EXISTS user;

-- Create the user table.
CREATE TABLE IF NOT EXISTS
    user (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT,
        last_name TEXT,
        date_of_birth DATE
    );

CREATE TABLE IF NOT EXISTS
    role (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);

CREATE TABLE IF NOT EXISTS
    course (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        code TEXT,
        name TEXT,
        start_date DATE,
        end_date DATE
    );

CREATE TABLE IF NOT EXISTS
    section (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        beginning_time TEXT,
        duration_minutes INTEGER,
        name TEXT,
        course_id INTEGER,
        FOREIGN KEY (course_id) REFERENCES course (id)
    );

CREATE TABLE IF NOT EXISTS
    user_sections (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        role_id INTEGER,
        section_id INTEGER,
        FOREIGN KEY (user_id) REFERENCES user (id),
        FOREIGN KEY (role_id) REFERENCES role (id),
        FOREIGN KEY (section_id) REFERENCES section (id)
    );

-- Show the names of all tables in the database.
SELECT
    name
from
    sqlite_master;
