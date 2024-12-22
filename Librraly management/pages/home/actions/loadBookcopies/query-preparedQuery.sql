SELECT b.*, bc.* 
FROM public.books AS b
JOIN public.bookcopies AS bc ON b.book_id = bc.book_id
WHERE b.title LIKE '%' || ? || '%';