-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros

SELECT * FROM customers;

SELECT DISTINCT
Country as pais,
State as estado
FROM customers
WHERE Country is 'Brazil';

SELECT DISTINCT
Country as pais,
State as estado,
CASE 
 WHEN State = 'SP' THEN 'São Paulo'
 WHEN State = 'RJ' THEN 'Rio de Janeiro'
 WHEN State = 'DF' THEN 'Distrito Federal'
 ELSE 'Estado desconhecido'
END AS estado
FROM customers
WHERE Country LIKE 'Brazil'
