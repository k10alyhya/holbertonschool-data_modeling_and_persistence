SELECT courses.title AS course_title, students.name AS student_name
from courses
left join enrollments
on courses.id = enrollments.course_id
LEFT join students 
on students.id = enrollments.student_id
ORDER BY course_title ASC, student_name;