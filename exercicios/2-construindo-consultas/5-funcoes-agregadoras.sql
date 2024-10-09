-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
BillingCountry as pais,
SUM(Total) as Soma_compras,
MIN(Total) as Menor_compra,
MAX(Total) as Maior_compra,
COUNT(Total) as Quantidade_compras,
ROUND(AVG(Total), 2) as Ticket_medio
FROM
invoices
WHERE
BillingCountry = 'Austria';