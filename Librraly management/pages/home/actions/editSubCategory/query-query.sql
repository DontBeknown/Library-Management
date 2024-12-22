UPDATE public.subcategory
SET 
 subcategory_name = {{ui.SubcategoryTable.editedRow.data.subcategory_name}},
 category_id = {{ui.SubcategoryTable.editedRow.data.category_id}}
WHERE subcategory_id  = {{ui.SubcategoryTable.editedRow.data.subcategory_id}}; 