UPDATE public.bookcopies
SET is_available = FALSE
WHERE book_copy_id = ?;