SELECT 
  c.category_name,
  COALESCE(SUM(CASE WHEN b.book_copy_id IS NOT NULL THEN 1 ELSE 0 END), 0) AS total_borrows_per_category
FROM 
  public.category c
LEFT JOIN 
  public.subcategory sc ON c.category_id = sc.category_id
LEFT JOIN 
  public.books bk ON sc.subcategory_id = bk.subcategory_id
LEFT JOIN 
  public.bookcopies bc ON bk.book_id = bc.book_id
LEFT JOIN 
  public.borrowing b ON bc.book_copy_id = b.book_copy_id
GROUP BY 
  c.category_name
ORDER BY 
  total_borrows_per_category DESC;