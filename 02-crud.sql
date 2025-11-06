-- database: ./my-database.db
UPDATE user
SET
    first_name = 'Suzy'
WHERE
    user_id = 43
    AND section_id = 1;

-- INSERT INTO
--     user (first_name, last_name, date_of_birth)
-- VALUES
--     ('John', 'Doe', '1970-01-01');
-- INSERT INTO
--     user (first_name, last_name, date_of_birth)
-- VALUES
--     ('Jane', 'Doe', '1971-01-01');
-- INSERT INTO
--     user (first_name, last_name, date_of_birth)
-- VALUES
--     ('Bob', 'Smith', '1975-12-25');
-- INSERT INTO
--     role (name)
-- VALUES
--     ('instructor');
-- INSERT INTO
--     role (name)
-- VALUES
--     ('student');
-- INSERT INTO
--     course (code, name, start_date, end_date)
-- VALUES
--     (
--         'EXSM3931',
--         'Intro to Web Dev',
--         '2025-09-03',
--         '2025-09-30'
--     );
-- INSERT INTO
--     section (beginning_time, duration_minutes, name, course_id)
-- VALUES
--     ('21:00', 120, 'FA2025-01', 1)
-- INSERT INTO
--     user_sections (user_id, role_id, section_id)
-- VALUES
--     (43, 1, 1);
SELECT
    id,
    date_of_birth
FROM
    user;

SELECT
    id,
    date_of_birth
FROM
    user
WHERE
    last_name = 'Doe';

SELECT
    COUNT(DISTINCT last_name)
FROM
    user
WHERE
    last_name = 'Doe';
