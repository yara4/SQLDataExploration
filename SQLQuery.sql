
-- Show the whole table
Select * From Sales..Store_sales

-- Show specific columns of the table
Select Row_ID, Order_ID, Order_Date, Customer_ID, Customer_Name, Segment, City , Region, Product_ID ,
Category , Product_Name, Sales, Quantity, Discount, Profit From Sales .. Store_sales

-- Total sales by Customer 
Select Customer_Name, SUM (Sales) as CustomerSales From Sales .. Store_sales 
Group by Customer_Name

-- Show maximum sales by customer
Select Customer_Name, Max(Sales) as MaxSales From Sales .. Store_sales
Group By Customer_Name
order by MaxSales desc

-- Show maximum sales by Product name
Select Product_Name, Max(Sales) as MaxSales From Sales .. Store_sales
Group By Product_Name
order by MaxSales desc

-- Show all the details of specific Product name (which has maximum sales)
select * from sales..Store_sales
where Product_Name = 'Cisco TelePresence System EX90 Videoconferencing Unit'

-- Show maximum sales by Region
Select Region, max(Sales) as RegionSales From Sales .. Store_sales
Group by Region
order by RegionSales desc

-- Show maximum sales by Year of Order
Select Year(Order_Date) as OrderYear, Max(Sales) as MaxSales From Sales .. Store_sales
Group By YEAR(Order_Date)
order by MaxSales desc

-- Filter sales by year 2024
select order_date , sales from Sales.. Store_sales
where YEAR(Order_Date) = 2024


-- Show profit by Category
SELECT category, SUM(profit) AS total_profit
FROM Sales.. store_Sales
GROUP BY category
ORDER BY total_profit;

-- Create condition statement by using CASE Expression
select Product_Name , sales
	 , CASE	when sales >= 10000 then 'High Value Product'
			when sales >= 5000 and Sales < 10000 then 'Medium Value Product'
			when sales < 5000 then 'Low Value Product'
		else 'No value'
	end as 'Valuable product'
from sales..Store_sales
order by Product_Name



