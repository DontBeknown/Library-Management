SELECT s.staff_id, s.name, s.surname, s.role_id, s.email, s.phone, s.username, s.hire_date, s.password, r.role_name, r.salary
FROM public.staff s
JOIN public.role r ON s.role_id = r.role_id
WHERE s.name LIKE '%' || {{ui.staffNameSearchBar.value}} || '%'