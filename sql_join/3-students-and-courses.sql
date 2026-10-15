SELECT students.name as student_name , courses.title as course_title
from enrollments
inner join students
on students.id = enrollments.student_id
inner join courses
on courses.id = enrollments.course_id
ORDER BY student_name ASC , course_title ASC;
