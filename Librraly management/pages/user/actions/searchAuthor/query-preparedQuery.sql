SELECT a.author_name, b.title AS book_titles , b.isbn
FROM public.author AS a
JOIN public.bookauthors AS ba ON a.author_id = ba.author_id
JOIN public.books AS b ON ba.book_id = b.book_id
WHERE LOWER(a.author_name) LIKE '%' || LOWER(?) || '%'