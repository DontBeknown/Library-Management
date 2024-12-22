WITH DayNames AS (
  SELECT unnest(ARRAY['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']) AS day_name
),
BorrowingCounts AS (
  SELECT
    TO_CHAR(borrow_date, 'Day') AS day_name,
    COUNT(*) AS total_borrowings
  FROM
    public.borrowing
  GROUP BY
    TO_CHAR(borrow_date, 'Day')
)
SELECT
  dn.day_name,
  COALESCE(bc.total_borrowings, 0) AS total_borrowings
FROM
  DayNames dn
LEFT JOIN BorrowingCounts bc ON trim(dn.day_name) = trim(bc.day_name)
ORDER BY
  CASE dn.day_name
    WHEN 'Monday' THEN 1
    WHEN 'Tuesday' THEN 2
    WHEN 'Wednesday' THEN 3
    WHEN 'Thursday' THEN 4
    WHEN 'Friday' THEN 5
    WHEN 'Saturday' THEN 6
    WHEN 'Sunday' THEN 7
  END;