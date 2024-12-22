UPDATE public.borrowingfine
SET status = ?,
    fine_date = ?
WHERE fine_id = ?;