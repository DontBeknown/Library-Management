SELECT is_available FROM public.bookcopies
WHERE book_copy_id = {{ui.userReserveForm.value.book_copy_id}}