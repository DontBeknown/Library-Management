SELECT bc.*, b.title, b.isbn, sc.subcategory_name, c.category_name, p.publisher_name, p.address
FROM public.bookcopies AS bc
JOIN public.books AS b ON bc.book_id = b.book_id
JOIN public.subcategory AS sc ON b.subcategory_id = sc.subcategory_id
JOIN public.category AS c ON sc.category_id = c.category_id
JOIN public.publisher AS p ON b.publisher_id = p.publisher_id
WHERE LOWER(b.title) LIKE LOWER('%' || {{ui.titleSearch2.value}} || '%')
AND LOWER(c.category_name) LIKE LOWER('%' || {{ui.categorySearch2.value}} || '%')
AND LOWER(sc.subcategory_name) LIKE LOWER('%' || {{ui.subcategorySearch2.value}} || '%')
AND LOWER(p.publisher_name) LIKE LOWER('%' || {{ui.PublishNameSearch2.value}} || '%')