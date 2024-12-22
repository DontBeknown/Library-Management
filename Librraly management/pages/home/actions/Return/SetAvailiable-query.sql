UPDATE public.bookcopies
SET is_available = TRUE
WHERE book_copy_id = {{ui.publicborrowingtablePopupform.value.book_copy_id}};