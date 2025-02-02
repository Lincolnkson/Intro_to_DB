USE alx_book_store;

SHOW TABLES

INSERT INTO customers (address, customer_name, email)
VALUES ('123 Happiness Ave.', 'Cole Baidoo', 'cbaidoo@sandtech.com')

-- customer_id = 1
-- customer_name = Cole Baidoo
-- email = cbaidoo@sandtech.com
-- -- address = 123 Happiness Ave.

-- SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_DEFAULT, COLUMN_KEY 
-- FROM INFORMATION_SCHEMA.COLUMNS 
-- WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'customers';