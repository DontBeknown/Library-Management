UPDATE public.bookcopies
SET 
 book_id = {{ui.BookCopiesTable.editedRow.data.book_id}},
 is_available = {{ui.BookCopiesTable.editedRow.data.is_available}},
 acquisition_type = {{ui.BookCopiesTable.editedRow.data.acquisition_type}},
 acquisition_date = {{ui.BookCopiesTable.editedRow.data.acquisition_date}},
 source = {{ui.BookCopiesTable.editedRow.data.source}},
 cost = {{ui.BookCopiesTable.editedRow.data.cost}},
 description = {{ui.BookCopiesTable.editedRow.data.description}}
WHERE book_copy_id = {{ui.BookCopiesTable.editedRow.data.book_copy_id}}; 