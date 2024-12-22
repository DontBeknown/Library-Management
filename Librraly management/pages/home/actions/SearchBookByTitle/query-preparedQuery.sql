SELECT b.*, p.publisher_name
FROM public.books b
INNER JOIN public.publisher p ON b.publisher_id = p.publisher_id
WHERE LOWER(title) LIKE '%' || LOWER(?) || '%';

