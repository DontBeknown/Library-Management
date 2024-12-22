SELECT 
  bk.title,
  COUNT(b.borrow_id) AS total_borrows
FROM 
  public.borrowing b
JOIN 
  public.bookcopies bc ON b.book_copy_id = bc.book_copy_id
JOIN 
  public.books bk ON bc.book_id = bk.book_id
GROUP BY 
  bk.title
ORDER BY 
  total_borrows DESC
LIMIT 1; -- Assuming you want the most borrowed book only