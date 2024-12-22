SELECT * FROM public.author
WHERE author_name LIKE '%' || {{ui.authorSearchBar.value}} || '%';