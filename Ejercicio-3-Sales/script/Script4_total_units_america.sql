SELECT SUM(unit_sales) 
AS total_units_america
FROM sales_db.sales
WHERE continent LIKE '%America%';
