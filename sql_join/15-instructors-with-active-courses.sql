SELECT instructors.name AS instructor_name
from instructors

where instructors.id in (
    SELECT courses.instructor_id
    from courses

            where courses.id in (
                SELECT registrations.course_id
                FROM registrations
                        )
)
ORDER BY instructor_name ASC;
