SELECT instructors.name AS instructor_name, courses.title AS course_title
from instructors
left join courses on instructors.id = courses.instructor_id
ORDER BY instructor_name ASC, course_title ASC;
