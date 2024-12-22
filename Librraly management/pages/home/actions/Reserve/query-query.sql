SELECT * FROM public.borrowing 
WHERE book_copy_id = {{ui.ReserveForm.value.book_copy_id}} 
AND return_date IS NULL;