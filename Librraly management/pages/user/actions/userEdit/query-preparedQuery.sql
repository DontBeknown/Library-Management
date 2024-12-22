UPDATE public.users
SET 
    name = ?,
    surname = ?, -- Fixed typo here from 'surename' to 'surname'
    username = ?,
    password = ?,
    email = ?,
    phone = ?
WHERE user_id = ?;