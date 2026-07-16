-- Script 4: obtener las unidades totales del continente americano
-- (incluye North America y South America)
SELECT SUM(unit_sales) AS total_units_america
FROM sales
WHERE continent LIKE '%America%';
