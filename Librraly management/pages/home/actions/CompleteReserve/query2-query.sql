SELECT * FROM public.reserve 
WHERE reserve_id = {{ui.CompleteReseve.value.reserve_id}} AND status = 'Active';