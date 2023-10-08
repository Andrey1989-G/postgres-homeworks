-- SQL-команды для создания таблиц

-- DROP TABLE orders
-- DROP TABLE customers
-- DROP TABLE employees

-- клиенты
CREATE TABLE customers (
  customer_id VARCHAR(50) PRIMARY KEY,
  company_name VARCHAR(100) NOT NULL,
  contact_name VARCHAR(50) NOT NULL
);

--сотрудники
CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  title VARCHAR(100),
  birth_date VARCHAR(50),
  notes TEXT
);

--заказы. связь и с сотрудниками и с клиентами
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    --название/ тип / REFERENCES / название таблицы / (название строки) / NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    employee_id VARCHAR(50) NOT NULL,
    order_date VARCHAR(50) NOT NULL,
    ship_city VARCHAR(50) NOT NULL
);
