/*
1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
2. Выведите название, производителя и цену для товаров, количество которых превышает 2
3. Выведите весь ассортимент товаров марки “Samsung”
*/

create database homework1;
use homework1;
create table mobile_phones (
id  int primary key auto_increment,
product_name varchar(30) not NULL,
manufacturer varchar(30) not NULL,
product_count DOUBLE NULL,
price DOUBLE NULL 
);

INSERT mobile_phones(product_name, manufacturer, product_count, price) 
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

/* 
2. Напишите SELECT-запрос, который dыведит название, производителя и цену для товаров, количество которых превышает 2
*/
SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2; 

/*
3. Выведите весь ассортимент товаров марки “Samsung”
*/

SELECT *
FROM mobile_phones
WHERE manufacturer = 'Samsung';