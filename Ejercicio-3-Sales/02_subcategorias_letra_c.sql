-- Script 2: obtener solo las subcategorías que empiezan por la letra "C"
SELECT food_subcategory
FROM sales
WHERE food_subcategory LIKE 'C%';
