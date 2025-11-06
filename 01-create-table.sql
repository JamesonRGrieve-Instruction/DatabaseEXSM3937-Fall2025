-- database: ./my-database.db
DROP TABLE IF EXISTS user_sections;

DROP TABLE IF EXISTS section;

DROP TABLE IF EXISTS course;

DROP TABLE IF EXISTS role;

DROP TABLE IF EXISTS user;

-- Create the user table.
CREATE TABLE IF NOT EXISTS
    user (
        id INTEGER,
        first_name TEXT,
        last_name TEXT,
        date_of_birth DATE
    );

CREATE TABLE IF NOT EXISTS
    role (id INTEGER, name TEXT);

CREATE TABLE IF NOT EXISTS
    course (
        id INTEGER,
        code TEXT,
        name TEXT,
        start_date DATE,
        end_date DATE
    );

CREATE TABLE IF NOT EXISTS
    section (
        id INTEGER,
        beginning_time TEXT,
        duration_minutes INTEGER,
        name TEXT,
        course_id INTEGER
    );

CREATE TABLE IF NOT EXISTS
    user_sections (
        id INTEGER,
        user_id INTEGER,
        role_id INTEGER,
        section_id INTEGER
    );

-- Show the names of all tables in the database.
SELECT
    name
from
    sqlite_master;
