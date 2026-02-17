USE library_lib;
SELECT COUNT(*) AS total_books
FROM books;
SELECT COUNT(author_id) AS total_authors_used
FROM books;
SELECT category_id,COUNT(*) AS total_books
FROM books
GROUP BY category_id;
SELECT category_id,COUNT(*) AS total_books
FROM books
GROUP BY category_id
HAVING COUNT(*) > 1;
SELECT ROUND(AVG(published_year), 2) AS avg_year
FROM books;
SELECT COUNT(DISTINCT category_id) AS unique_categories
FROM books;
SELECT author_id,category_id,COUNT(*) AS total_books
FROM books
GROUP BY author_id, category_id;