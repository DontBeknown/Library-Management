SELECT s.*, r.*, r.role_id AS your_role_id
FROM public.staff s
JOIN public.role r ON s.role_id = r.role_id
WHERE s.staff_id = ?
LIMIT 1;