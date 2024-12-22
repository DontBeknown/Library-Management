SELECT bc.*, b.*, sc.*, c.*
FROM public.bookcopies AS bc
JOIN public.books AS b ON bc.book_id = b.book_id
JOIN public.subcategory AS sc ON b.subcategory_id = sc.subcategory_id
JOIN public.category AS c ON sc.category_id = c.category_id
WHERE b.title LIKE '%' || ? || '%'