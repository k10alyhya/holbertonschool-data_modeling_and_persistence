SELECT authors.name as author_name, books.title
from authors
left join books
on authors.id = books.author_id
ORDER BY author_name ASC, title ASC;
