SELECT 
    r.reserve_id,
    r.user_id,
    r.book_copy_id,
    r.reserve_date,
    r.status,
    r.staff_id,
    bc.is_available,
    bc.acquisition_type,
    bc.acquisition_date,
    bc.source,
    bc.cost,
    bc.description,
    b.title,
    b.publisher_id,
    b.publication_year,
    b.subcategory_id,
    b.isbn
FROM public.reserve AS r
INNER JOIN public.bookcopies AS bc ON r.book_copy_id = bc.book_copy_id
INNER JOIN public.books AS b ON bc.book_id = b.book_id
WHERE r.user_id = {{state.LoginUserId}} AND b.title LIKE '%' || {{ui.reserveHistorySearch.value}} || '%';