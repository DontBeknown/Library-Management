SELECT ba.authors_id, b.book_id, b.title, b.publisher_id, b.publication_year, b.subcategory_id, b.isbn, a.author_id, a.author_name
FROM public.bookauthors ba
JOIN public.books b ON ba.book_id = b.book_id
JOIN public.author a ON ba.author_id = a.author_id
WHERE b.book_id = ?