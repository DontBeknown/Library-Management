SELECT * FROM public.users
WHERE name LIKE '%' || ? || '%'