UPDATE public.reserve
SET status = 'Complete', staff_id = {{ui.CompleteReseve.value.staff_id}}
WHERE reserve_id = {{ ui.CompleteReseve.value.reserve_id }};