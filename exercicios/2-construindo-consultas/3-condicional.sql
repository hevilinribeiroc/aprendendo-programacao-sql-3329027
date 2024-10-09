-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
State AS Estados_Brasil
FROM customers
WHERE Country LIKE 'Brazil';

SELECT DISTINCT
Country AS País,
State AS Estado, 
CASE
    WHEN State = 'SP' THEN 'São Paulo'
    WHEN State = 'RJ' THEN 'Rio de Janeiro'
    WHEN State = 'DF' THEN 'Distrito Federal'
END AS Estado
FROM 
customers
WHERE 
Country Like 'Brazil';
