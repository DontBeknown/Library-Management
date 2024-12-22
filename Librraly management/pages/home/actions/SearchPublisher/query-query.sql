SELECT * FROM public.publisher
WHERE LOWER(publisher_name) LIKE '%' || LOWER({{ui.publisherSearchBar.value}}) || '%'