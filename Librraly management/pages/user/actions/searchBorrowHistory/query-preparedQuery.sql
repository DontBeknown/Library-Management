SELECT 
    b.borrow_id,
    b.staff_id,
    bc.book_copy_id,
    bk.title,
    bk.isbn,
    b.borrow_date,
    b.borrow_date + INTERVAL '1 day' * ? AS returning_deadline,
    b.return_date,
    bf.fine_id,
    bf.fine_date,
    bf.amount,
    bf.status,
    bf.description AS fine_description
FROM 
    public.borrowing b
INNER JOIN 
    public.bookcopies bc ON b.book_copy_id = bc.book_copy_id
INNER JOIN 
    public.books bk ON bc.book_id = bk.book_id
LEFT JOIN 
    public.borrowingfine bf ON b.borrow_id = bf.borrow_id
WHERE 
    b.user_id = ? AND bk.title LIKE '%' || ? || '%';