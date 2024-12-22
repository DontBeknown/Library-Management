UPDATE public.location
SET 
 floor = {{ui.publicLocationTable.editedRow.data.floor}},
 section = {{ui.publicLocationTable.editedRow.data.section}}
WHERE shelf_id  = {{ui.publicLocationTable.editedRow.data.shelf_id }}; 