UPDATE public.staff
SET 
 name = {{ui.publicstafftableForm.value.name}},
 surname = {{ui.publicstafftableForm.value.surname}},
 role_id = {{ui.publicstafftableForm.value.role_id}},
 email = {{ui.publicstafftableForm.value.email}},
 phone = {{ui.publicstafftableForm.value.phone}},
 username = {{ui.publicstafftableForm.value.username}},
 password = {{ui.publicstafftableForm.value.password}},
 hire_date = {{ui.publicstafftableForm.value.hire_date}}
WHERE staff_id = {{ui.publicstafftableForm.value.staff_id}};