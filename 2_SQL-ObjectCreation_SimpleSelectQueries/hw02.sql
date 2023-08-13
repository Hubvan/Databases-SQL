CREATE DATABASE IF NOT EXISTS homework_2;
USE homework_2;

-- 1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.
DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE,
    count_product INT
);

INSERT INTO sales (order_date, count_product)
VALUES
		("2023-08-01", 156),
        ("2023-08-02", 180),
        ("2023-08-03", 21),
        ("2023-08-04", 124),
        ("2023-08-05", 341);

/*2.  Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
меньше 100  -    Маленький заказ
от 100 до 300 - Средний заказ
больше 300  -     Большой заказ*/

SELECT 	id "id заказа",
/*order_date,
        count_product,*/
        CASE 
			WHEN count_product < 100 THEN "Маленький заказ"
            WHEN count_product BETWEEN	100 and 300 THEN "Средний заказ"
            WHEN count_product > 300 THEN "Большой заказ"
		ELSE "ОШИБКА" END "Тип заказа"
FROM sales;