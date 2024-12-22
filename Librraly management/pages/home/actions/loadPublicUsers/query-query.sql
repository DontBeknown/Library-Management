SELECT * FROM public.users
WHERE name LIKE '%' || {{ui.userNameSearchBar.value}} || '%'