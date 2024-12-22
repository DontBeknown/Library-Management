UPDATE public.borrowing
SET return_date = ?,
staff_id = ?
WHERE book_copy_id = ?;