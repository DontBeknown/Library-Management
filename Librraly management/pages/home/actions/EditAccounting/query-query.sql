UPDATE public.accounting
SET
  transaction_date = {{ui.AccountingTable.editedRow.data.transaction_date}},
  amount = {{ui.AccountingTable.editedRow.data.amount}},
  type = {{ui.AccountingTable.editedRow.data.type}},
  category = {{ui.AccountingTable.editedRow.data.category}},
  description = {{ui.AccountingTable.editedRow.data.description}},
  staff_id = {{ui.AccountingTable.editedRow.data.staff_id}}
WHERE transaction_id = {{ui.AccountingTable.editedRow.data.transaction_id}};