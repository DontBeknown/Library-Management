SELECT reserve_id
  FROM public.reserve
  WHERE book_copy_id = {{ui.publicborrowingtablePopupform.value.book_copy_id}} AND status = 'Pending' -- Assuming you want to update inactive records only
  ORDER BY reserve_date ASC  -- Ensure we're selecting the oldest reserve_date
  LIMIT 1