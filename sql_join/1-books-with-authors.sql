SELECT books.title, authors.name as author_name
from books
inner join authors
on books.author_id = authors.id
ORDER BY title ASC;
