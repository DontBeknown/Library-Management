INSERT INTO public.bookcopies (book_copy_id, book_id, is_available, acquisition_type, acquisition_date, source, cost, description)
VALUES (DEFAULT, ?, TRUE, ?, ?, ?, ?, ?);