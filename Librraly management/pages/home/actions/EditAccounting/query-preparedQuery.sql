UPDATE public.accounting
SET
  transaction_date = ?,
  amount = ?,
  type = ?,
  category = ?,
  description = ?,
  staff_id = ?
WHERE transaction_id = ?;