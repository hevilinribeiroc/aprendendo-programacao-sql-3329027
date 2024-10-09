-- Da tabela invoice, remova o invoices cujo o InvoiceID corresponda ao valor 33
DELETE FROM invoices
WHERE InvoiceID = 33;

-- Da tabela invoices, remova todos os invoices cujo o Total seja menor do que 1
DELETE FROM invoices
WHERE Total < 1;