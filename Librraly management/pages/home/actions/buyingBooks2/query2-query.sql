INSERT INTO public.accounting (transaction_id,transaction_date, amount, type, category, description, staff_id)
VALUES (DEFAULT, {{ui.newCopiesForm2.value.acquisition_date}}, {{ui.newCopiesForm2.value.cost}}, '"expense"', 'Buy book', {{ui.newCopiesForm2.value.description}}, {{ui.newCopiesForm2.value.staff_id}});