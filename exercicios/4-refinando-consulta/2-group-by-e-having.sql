-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente

SELECT
customers.CustomerId AS id_cliente,
customers.FirstName AS nome,
sum(invoices.Total) AS totalGasto
FROM
invoices
inner join customers on invoices.customerId = customers.customerId
GROUP BY
id_cliente;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30

SELECT
customers.CustomerId AS id_cliente,
customers.FirstName AS nome,
sum(invoices.Total) AS totalGasto
FROM
invoices
inner join customers on invoices.customerId = customers.customerId
GROUP BY id_cliente
HAVING sum(invoices.Total) >=40;


-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente

SELECT
customers.CustomerId AS id_cliente,
customers.FirstName AS nome,
sum(invoices.Total) AS totalGasto,
max(invoices.Total) AS maiorCompra
FROM
invoices
inner join customers on invoices.customerId = customers.customerId
GROUP BY id_cliente
HAVING sum(invoices.Total) >=40;
