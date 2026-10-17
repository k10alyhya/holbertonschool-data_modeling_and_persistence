SELECT courses.title AS course_name , instructors.name AS instructor_name
from courses
left join instructors ON instructors.id = courses.instructor_id
ORDER BY course_name ASC, instructor_name ASC;
