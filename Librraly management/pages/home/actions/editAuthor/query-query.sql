UPDATE public.author
SET 
 author_name = {{ui.publicAuthorTable.editedRow.data.author_name}}
WHERE author_id   = {{ui.publicAuthorTable.editedRow.data.author_id }}; 