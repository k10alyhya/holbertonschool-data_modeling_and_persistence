SELECT courses.title AS course_title, COUNT(registrations.course_id) AS registrations_count
FROM courses
LEFT JOIN registrations ON registrations.course_id = courses.id
GROUP BY courses.id
ORDER BY registrations_count DESC, course_title ASC;
