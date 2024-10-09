-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT CustomerID, FirstName, LastName, Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT CustomerID, FirstName, UPPER(LastName), Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT CustomerID, LOWER(FirstName), UPPER(LastName), Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome

SELECT CustomerID, LOWER(FirstName), UPPER(LastName), Address, FirstName || ' ' || LastName AS NomeCompleto
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT CustomerID, 
LOWER(FirstName), 
UPPER(LastName), 
REPLACE(Address, 'Av.', 'Avenida'),
FirstName || ' ' || LastName AS NomeCompleto
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT DISTINCT
CustomerId as id,
SUBSTR(FirstName,1,3) as apelido,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
LOWER(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address, 'Av.', 'Avenida') as endereco
FROM customers
WHERE 
Country LIKE 'Bra%';

SELECT DISTINCT
CustomerId as id,
SUBSTR(FirstName,1,3) as apelido,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
LOWER(FirstName || ' ' || LastName) as nome_completo,
REPLACE(Address, 'Av.', 'Avenida') as endereco
FROM customers
WHERE 
Country LIKE '%sil';