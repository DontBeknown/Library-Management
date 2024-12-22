SELECT bf.*, bw.*, bs.*, bk.*, u.* , bf.description AS fine_description
FROM public.borrowingfine AS bf
JOIN public.borrowing AS bw ON bf.borrow_id = bw.borrow_id
JOIN public.bookcopies AS bs ON bw.book_copy_id = bs.book_copy_id
JOIN public.books AS bk ON bs.book_id = bk.book_id
JOIN public.users AS u ON bw.user_id = u.user_id
WHERE LOWER(u.name) LIKE LOWER('%' || ? || '%')
AND LOWER(bk.title) LIKE LOWER('%' || ? || '%')