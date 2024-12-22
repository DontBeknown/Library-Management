SELECT r.*, bs.*, bk.*, u.*, st.*, u.name AS reserver_name, st.name AS staff_name
FROM public.reserve AS r
JOIN public.bookcopies AS bs ON r.book_copy_id = bs.book_copy_id
JOIN public.books AS bk ON bs.book_id = bk.book_id
JOIN public.users AS u ON r.user_id = u.user_id
LEFT JOIN public.staff AS st ON r.staff_id = st.staff_id
WHERE LOWER(u.name) LIKE LOWER('%' || {{ui.ReserveNameSearchBar.value}} || '%')
AND LOWER(bk.title) LIKE LOWER('%' || {{ui.ReserveTitleSearchBar.value}} || '%')
AND (LOWER(st.name) LIKE LOWER('%' || {{ui.ReserveStaaffSearchBar.value}} || '%') OR {{ui.ReserveStaaffSearchBar.value}} IS NULL OR {{ui.ReserveStaaffSearchBar.value}} = '')