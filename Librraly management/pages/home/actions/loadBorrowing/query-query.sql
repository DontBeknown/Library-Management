SELECT bw.*, bs.*, bk.*, u.*, st.*, u.name AS borrower_name, st.name AS staff_name, 
bw.borrow_date + INTERVAL '1 day' * {{state.DeadlineDay}} AS returning_deadline
FROM public.borrowing AS bw
JOIN public.bookcopies AS bs ON bw.book_copy_id = bs.book_copy_id
JOIN public.books AS bk ON bs.book_id = bk.book_id
JOIN public.users AS u ON bw.user_id = u.user_id
LEFT JOIN public.staff AS st ON bw.staff_id = st.staff_id
WHERE LOWER(u.name) LIKE LOWER('%' || {{ui.nameBorrowSearchBar.value}} || '%')
AND LOWER(bk.title) LIKE LOWER('%' || {{ui.BorrowTitleSearchBar.value}} || '%')
AND (LOWER(st.name) LIKE LOWER('%' || {{ui.BorrowStaaffSearchBar.value}} || '%') OR {{ui.BorrowStaaffSearchBar.value}} IS NULL OR {{ui.BorrowStaaffSearchBar.value}} = '')