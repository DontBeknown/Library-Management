UPDATE public.bookcopies
SET is_available = FALSE
WHERE book_copy_id = {{ui.publicborrowingtableForm.value.book_copy_id}};