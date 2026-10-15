SELECT students.name AS student_name
from students
where students.id in (
    SELECT enrollments.student_id
    from enrollments
)
ORDER BY student_name ASC;