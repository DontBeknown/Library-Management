SELECT b.book_id, b.title, b.publisher_id, b.publication_year, b.isbn, 
       sc.subcategory_name, c.category_name, p.publisher_name, p.address as publisher_address
FROM public.books b
JOIN public.subcategory sc ON b.subcategory_id = sc.subcategory_id
JOIN public.category c ON sc.category_id = c.category_id
JOIN public.publisher p ON b.publisher_id = p.publisher_id
WHERE LOWER(b.title) LIKE LOWER('%' || {{ui.titleSearch.value}} || '%')
AND LOWER(c.category_name) LIKE LOWER('%' || {{ui.categorySearch.value}} || '%')
AND LOWER(sc.subcategory_name) LIKE LOWER('%' || {{ui.subcategorySearch.value}} || '%')
AND LOWER(p.publisher_name) LIKE LOWER('%' || {{ui.PublishNameSearch.value}} || '%')