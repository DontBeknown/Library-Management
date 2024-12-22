SELECT ba.* , a.author_name
FROM public.bookauthors AS ba
JOIN public.author AS a ON ba.author_id = a.author_id
WHERE book_id = ? AND author_name LIKE '%' || ? || '%';