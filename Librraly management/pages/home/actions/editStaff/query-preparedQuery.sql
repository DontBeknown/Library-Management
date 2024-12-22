UPDATE public.staff
SET 
 name = ?,
 surname = ?,
 role_id = ?,
 email = ?,
 phone = ?,
 username = ?,
 password = ?,
 hire_date = ?
WHERE staff_id = ?;