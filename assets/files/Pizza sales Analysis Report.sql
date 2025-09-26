SELECT * FROM pizza_db.pizza_sales;

update pizza_sales set order_date = date_format(str_to_date(order_date, '%d-%m-%Y'), '%Y-%m-%d');

/* KPI's Requirement:
1) Total Revenue: The sum of the total price of all pizza orders. */

select sum(total_price) as Total_Revenue from pizza_db.pizza_sales;

-- 2) Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.

select sum(total_price) / count(distinct order_id) as Avg_Order_Value from pizza_db.pizza_sales;

-- 3) Total Pizzas Sold: The sum of the quantities of all pizzas sold

select sum(quantity) as Total_Pizza_Sold from pizza_db.pizza_sales;

-- 4) Total Orders: The total number of orders placed

select count(distinct order_id) as Total_Orders from pizza_db.pizza_sales;

-- 5) Average Pizzas Per Order: The average number of pizzas sold per order, calculated by dividing the total number of pizzas sold by the total number of orders

select cast(sum(quantity) / count(distinct order_id) as decimal(10, 2)) as Avg_Pizzas_Per_Order from pizza_db.pizza_sales;

-- CHARTS REQUIREMENT:
-- 1) Hourly Trend For Total Pizzas Sold:

select hour(order_time) as Order_Hour, sum(quantity) as Total_Pizzas_Sold from pizza_db.pizza_sales
group by hour(order_time)
order by hour(order_time);

-- 2) Weekly Trend For Total Orders:

select weekofyear(order_date) as Week_Number, year(order_date) as Order_Year, count(distinct order_id) as Total_Orders
from pizza_sales
group by weekofyear(order_date), year(order_date)
order by weekofyear(order_date), year(order_date);

-- 3) Percentage Of Sales By Pizza Category:

select pizza_category, cast(sum(total_price) as decimal(10, 2)) as Total_Sales, cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10, 2)) as PCT from pizza_sales
group by pizza_category;

-- select sum(total_price) as TP from pizza_sales where pizza_category = 'Classic';

-- 4) Percentage Of Sales By Pizza Size:

select pizza_size, cast(sum(total_price) as decimal(10, 2)) as Total_Sales, cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10, 2)) as PCT_S from pizza_sales
group by pizza_size
order by PCT_S desc;

-- 5) Total Pizzas Sold by Pizza Category:

select pizza_category, sum(quantity) as Total_Pizzas_Sold_Category from pizza_sales
group by pizza_category
order by Total_Pizzas_Sold_Category desc;

-- 6) Top 5 Pizzas by Revenue:

select pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc
limit 5;

-- 7) Bottom 5 Pizzas by Revenue:

select pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue
limit 5;

-- 8) Top 5 Pizzas by Total Quantity:

select pizza_name, sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity desc
limit 5;

-- 9) Bottom 5 Pizzas by Total Quantity:

select pizza_name, sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity
limit 5;

-- 10) Top 5 Pizzas by Total Orders:

select pizza_name, count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders desc
limit 5;

-- 11) Bottom 5 Pizzas by Total Orders:

select pizza_name, count(distinct order_id) as Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders
limit 5;