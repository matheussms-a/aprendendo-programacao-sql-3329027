-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras

SELECT CustomerId as id,
FirstName as nome,
LastName as sobrenome,
Address as endereço 
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, converta o sobrenome para letras maiúsculas

SELECT CustomerId as id,
FirstName as nome,
UPPER(LastName) as sobrenome,
Address as endereço 
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, converta o nome para letras minúsculas

SELECT CustomerId as id,
LOWER(FirstName) as nome,
LastName as sobrenome,
Address as endereço 
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome

SELECT CustomerId as id,
FirstName as nome,
LastName as sobrenome,
Address as endereço, 
CONCAT(FirstName,LastName),
FirstName || ' ' || LastName as Nome_Completo
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço

SELECT CustomerId as id,
FirstName as nome,
LastName as sobrenome,
REPLACE(Address, 'Av.', 'Avenida'), 
CONCAT(FirstName,LastName),
FirstName || ' ' || LastName as Nome_Completo
FROM customers
WHERE Country LIKE 'Brazil'

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais

SELECT CustomerId as id,
FirstName as nome,
LastName as sobrenome,
Address as endereço 
FROM customers
WHERE Country LIKE 'Bra%'
