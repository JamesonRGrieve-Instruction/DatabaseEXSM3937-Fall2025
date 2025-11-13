-- database: ./my-database.db
-- INSERT INTO
--     section (beginning_time, duration_minutes, name, course_id)
-- VALUES
--     ('21:00', 120, 'FA2025-02', 1),
--     ('21:00', 120, 'WI2026-01', 1);
-- IF we had user_sections with no section, LEFT JOIN would show them.
-- We have sections with no user_sections, so RIGHT JOIN shows those (as nulls).ALTER
-- INNER JOIN hides both.
SELECT
    course.code,
    course.name,
    section.name
FROM
    user_sections
    LEFT JOIN section ON section.id = user_sections.section_id
    INNER JOIN course ON course.id = section.course_id;
