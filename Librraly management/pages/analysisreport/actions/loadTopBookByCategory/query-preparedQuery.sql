WITH BorrowCounts AS (
    SELECT 
        sc.category_id,
        b.book_id,
        b.title AS book_title,  
        COUNT(br.borrow_id) AS borrow_times  
    FROM 
        public.books b
        LEFT JOIN public.bookcopies bc ON b.book_id = bc.book_id
        LEFT JOIN public.borrowing br ON br.book_copy_id = bc.book_copy_id
        JOIN public.subcategory sc ON b.subcategory_id = sc.subcategory_id
    GROUP BY 
        sc.category_id, b.book_id, b.title  
),
RankedBorrows AS (
    SELECT 
        bc.category_id,
        bc.book_id,
        bc.book_title, 
        bc.borrow_times,
        RANK() OVER (PARTITION BY bc.category_id ORDER BY bc.borrow_times DESC) AS rank
    FROM 
        BorrowCounts bc
),
CategoriesWithBorrows AS (
    SELECT 
        c.category_id,
        c.category_name,
        rb.book_id,
        rb.book_title,  
        COALESCE(rb.borrow_times, 0) AS borrow_times,
        rb.rank
    FROM 
        public.category c
        LEFT JOIN RankedBorrows rb ON c.category_id = rb.category_id
)
SELECT 
    cw.category_name,
    cw.book_id AS most_borrowed_book_id,
    cw.book_title AS most_borrowed_book_title,  
    cw.borrow_times
FROM 
    CategoriesWithBorrows cw
WHERE 
    (cw.rank = 1 OR cw.rank IS NULL)  
    AND cw.borrow_times > 0  
ORDER BY 
    cw.category_name, cw.borrow_times DESC;