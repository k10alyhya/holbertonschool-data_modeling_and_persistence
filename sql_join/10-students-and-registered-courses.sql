SELECT students.name as student_name, courses.title as course_title
FROM registrations 
inner join students ON 
registrations.student_id = students.id
inner JOIN courses ON 
registrations.course_id = courses.id
ORDER BY student_name ASC, course_title ASC;


