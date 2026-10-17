SELECT students.name AS student_name
from students
where students.id in (
    SELECT registrations.student_id
    from registrations
)
ORDER BY student_name ASC;