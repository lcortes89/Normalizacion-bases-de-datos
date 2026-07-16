# Ejercicio 3: SQL - Sales

## Descripción del ejercicio

Este ejercicio trabaja sobre una tabla `sales` (ventas de productos por categoría, subcategoría, país y continente) cargada en una base de datos MySQL corriendo en Docker. El objetivo es escribir 4 scripts SQL de consulta sobre esa tabla.

## Base de datos

MySQL 8, levantada en Docker:

```bash
docker run --name mysql-sales -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=sales_db -p 3306:3306 -d mysql:8
```

Tabla `sales` creada y poblada con el script proporcionado: `sales_create_table_and_insert_data_script.sql` (20 filas de ventas).

## Scripts SQL

**1. Todos los datos de food_category y food_subcategory** — [`01_food_category_subcategory.sql`](01_food_category_subcategory.sql)
```sql
SELECT food_category, food_subcategory
FROM sales;
```

**2. Subcategorías que empiezan por la letra "C"** — [`02_subcategorias_letra_c.sql`](02_subcategorias_letra_c.sql)
```sql
SELECT food_subcategory
FROM sales
WHERE food_subcategory LIKE 'C%';
```
Resultado: Carrots, Cheese, Croissants, Chicken, Chips, Chocolate.

**3. Cantidad total de unidades vendidas** — [`03_total_unidades_vendidas.sql`](03_total_unidades_vendidas.sql)
```sql
SELECT SUM(unit_sales) AS total_unit_sales
FROM sales;
```
Resultado: **3885**.

**4. Unidades totales del continente americano** — [`04_total_unidades_america.sql`](04_total_unidades_america.sql)
```sql
SELECT SUM(unit_sales) AS total_units_america
FROM sales
WHERE continent LIKE '%America%';
```
Incluye North America y South America. Resultado: **1785**.

## Archivos de este ejercicio

```
ejercicio-3-sql-sales/
├── README.md
├── sales_create_table_and_insert_data_script.sql
├── 01_food_category_subcategory.sql
├── 02_subcategorias_letra_c.sql
├── 03_total_unidades_vendidas.sql
└── 04_total_unidades_america.sql
```

## Recursos

- [W3Schools SQL](https://www.w3schools.com/sql/)

## Autora

Luisa María Cortés
