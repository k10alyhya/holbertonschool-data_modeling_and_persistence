SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments ON course_id = courses.id
GROUP BY courses.id
HAVING COUNT(*) > (
    SELECT AVG(enrollments_count)
    from (
        SELECT enrollments.course_id, COUNT(*) as enrollments_count
        from enrollments
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;
