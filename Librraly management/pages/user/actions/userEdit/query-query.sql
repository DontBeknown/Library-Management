UPDATE public.users
SET 
    name = {{ui.userEditFormInfo.value.name}},
    surname = {{ui.userEditFormInfo.value.surname}}, -- Fixed typo here from 'surename' to 'surname'
    username = {{ui.userEditFormInfo.value.username}},
    password = {{ui.userEditFormInfo.value.password}},
    email = {{ui.userEditFormInfo.value.email}},
    phone = {{ui.userEditFormInfo.value.phone}}
WHERE user_id = {{ui.userEditFormInfo.value.user_id}};