UPDATE public.bookcopies
SET 
 book_id = ?,
 is_available = ?,
 acquisition_type = ?,
 acquisition_date = ?,
 source = ?,
 cost = ?,
 description = ?
WHERE book_copy_id = ?; 