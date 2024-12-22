UPDATE public.category
SET 
 category_name = {{ui.publicCategoryTable.editedRow.data.category_name}}
WHERE category_id  = {{ui.publicCategoryTable.editedRow.data.category_id }}; 