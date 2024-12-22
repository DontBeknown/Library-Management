SELECT 
    b.borrow_id AS borrowing_borrow_id,
    b.user_id,
    b.book_copy_id,
    b.borrow_date,
    b.return_date,
    b.staff_id,
    bf.fine_id,
    bf.borrow_id AS borrowingfine_borrow_id,
    bf.fine_date,
    bf.amount,
    bf.status,
    bf.description,
    b.borrow_date + INTERVAL '1 day' * {{state.DeadlineDay}} AS returning_deadline
FROM 
    public.borrowing b
LEFT JOIN 
    public.borrowingfine bf 
ON 
    b.borrow_id = bf.borrow_id
WHERE 
    b.user_id = {{ui.publicUsersTable.clickedRow.data.user_id}};