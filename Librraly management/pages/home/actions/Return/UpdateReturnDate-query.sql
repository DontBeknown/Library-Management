UPDATE public.borrowing
SET return_date = {{ui.publicborrowingtablePopupform.value.Return_Date}},
staff_id = {{state.staff_id}}
WHERE book_copy_id = {{ui.publicborrowingtablePopupform.value.book_copy_id}};