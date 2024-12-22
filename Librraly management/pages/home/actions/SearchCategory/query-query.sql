SELECT *
FROM public.category
WHERE category_name LIKE '%' || {{ui.SearchBarCategory.value}} || '%';