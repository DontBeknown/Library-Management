UPDATE public.books
SET 
  title = {{ui.publicBooksForm.value.title}},
  publisher_id = {{ui.publicBooksForm.value.publisher_id}},
  publication_year = {{ui.publicBooksForm.value.publication_year}},
  subcategory_id = {{ui.publicBooksForm.value.subcategory_id}},
  isbn = {{ui.publicBooksForm.value.isbn}} 
WHERE book_id = {{ui.publicBooksForm.value.book_id}};