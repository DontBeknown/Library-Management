SELECT r.*, bs.*, bk.*, u.*
FROM public.reserve AS r
JOIN public.bookcopies AS bs ON r.book_copy_id = bs.book_copy_id
JOIN public.books AS bk ON bs.book_id = bk.book_id
JOIN public.users AS u ON r.user_id = u.user_id
WHERE r.staff_id = {{state.staff_id}}