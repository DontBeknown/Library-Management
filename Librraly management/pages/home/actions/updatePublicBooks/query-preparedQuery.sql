UPDATE public.books
SET 
  title = ?,
  publisher_id = ?,
  publication_year = ?,
  subcategory_id = ?,
  isbn = ? 
WHERE book_id = ?;