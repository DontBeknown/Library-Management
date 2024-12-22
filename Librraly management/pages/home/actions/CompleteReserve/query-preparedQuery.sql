UPDATE public.reserve
SET status = 'Complete', staff_id = ?
WHERE reserve_id = ?;