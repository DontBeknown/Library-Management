SELECT a.*, s.name AS staff_name, s.surname, s.role_id, s.email, s.phone , a.description AS account_description
FROM public.accounting a
INNER JOIN public.staff s ON a.staff_id = s.staff_id
WHERE LOWER(s.name) LIKE '%' || LOWER({{ui.accountingStaffSearchBar.value}}) || '%'