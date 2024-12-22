UPDATE public.role
SET 
 role_name = {{ui.publicRoleTable.editedRow.data.role_name}},
 salary = {{ui.publicRoleTable.editedRow.data.salary}}
WHERE role_id = {{ui.publicRoleTable.editedRow.data.role_id}};