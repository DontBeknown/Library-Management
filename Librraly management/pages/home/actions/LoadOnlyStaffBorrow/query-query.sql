SELECT bw.*, bs.*, bk.*, u.*,
bw.borrow_date + INTERVAL '1 day' * {{state.DeadlineDay}} AS returning_deadline
FROM public.borrowing AS bw
JOIN public.bookcopies AS bs ON bw.book_copy_id = bs.book_copy_id
JOIN public.books AS bk ON bs.book_id = bk.book_id
JOIN public.users AS u ON bw.user_id = u.user_id
WHERE bw.staff_id = {{state.staff_id}}