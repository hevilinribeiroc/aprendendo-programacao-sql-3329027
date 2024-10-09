-- Construa uma consulta para a tabela "invoice_items" que retorne apenas as colunas InvoiceId, TrackId e UnitPrice.
select InvoiceId, TrackId, UnitPrice
from invoice_items;

-- Inclua nessa consulta mais três colunas, cada uma como resultado de uma operação aritmética diferente
select InvoiceId, TrackId, UnitPrice, UnitPrice*1.3, UnitPrice + 2.11, (UnitPrice + 2.11)%2
from invoice_items;

-- Incremente essa consulta utilizando a cláusula WHERE, a qual restringirá o resultado apenas para linhas cujo o InvoiceId seja maior do que 20 e menor ou igual a 30
select InvoiceId, TrackId, UnitPrice, UnitPrice*1.3, UnitPrice + 2.11, (UnitPrice + 2.11)%2
from invoice_items
where InvoiceId > 20 and InvoiceId <= 30;
