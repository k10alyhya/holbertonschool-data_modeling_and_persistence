SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON course_id = courses.id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT AVG(assignments_count)
    from (
        SELECT assignments.course_id, COUNT(*) as assignments_count
        from assignments
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;
