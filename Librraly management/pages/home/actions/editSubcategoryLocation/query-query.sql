UPDATE public.subcategorylocation
SET 
 subcategory_id = {{ui.publicSubcategorylocationTable.editedRow.data.subcategory_id}},
 shelf_id = {{ui.publicSubcategorylocationTable.editedRow.data.shelf_id}}
WHERE subcatergorylocate_id  = {{ui.publicSubcategorylocationTable.editedRow.data.subcatergorylocate_id }}; 