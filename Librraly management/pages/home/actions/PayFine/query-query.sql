UPDATE public.borrowingfine
SET status = {{ui.PayForm.value.status}},
    fine_date = {{ui.PayForm.value.fine_date}}
WHERE fine_id = {{ui.PayForm.value.fine_id}};