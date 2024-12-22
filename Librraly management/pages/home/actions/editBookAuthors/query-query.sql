UPDATE public.bookauthors
SET
 book_id = {{ui.publicAuthorTable2.editedRow.data.book_id}},
 author_id = {{ui.publicAuthorTable2.editedRow.data.author_id}}
WHERE authors_id = {{ui.publicAuthorTable2.editedRow.data.authors_id}};