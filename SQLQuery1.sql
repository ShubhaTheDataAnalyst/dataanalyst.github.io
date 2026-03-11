--Checking database properly load or not

SELECT * 
FROM PROJECT..['Sample - Superstore Dataset$'];


--Total_sales

Select sum(Sales) as Total_sales
from project..['Sample - Superstore Dataset$'];

--Sales By Resion
select Region,sum(sales) as Total_sales
from PROJECT..['Sample - Superstore Dataset$']
group by Region;

--Finding Top Product
select category,sum(sales) as Total_sales
from PROJECT..['Sample - Superstore Dataset$']
group by category
order by sum(sales) desc;

--total quantity by category
Select Category,count(Quantity) as 'Total Quantity'
from PROJECT..['Sample - Superstore Dataset$']
group by category;

--total quantity by category and rregion
Select Category,Region,count(Quantity) as 'Total Quantity'
from PROJECT..['Sample - Superstore Dataset$']
group by category,region;

--region generates highest sales and highest profit
select Region,sum(sales) as Total_sales,
sum(profit) as Total_profit
from PROJECT..['Sample - Superstore Dataset$']
group by Region
order by sum(sales), sum(profit) asc;

--product category for most profitable
select Category,
sum(profit) as Total_profit
from PROJECT..['Sample - Superstore Dataset$']
group by Category
order by sum(profit) desc;

--region with high sales and low profit
select Region,max(sales) as Max_sales,
min(profit) as Min_profit
from PROJECT..['Sample - Superstore Dataset$']
group by Region;

--top customer by revenue
select [Customer Name],sum(sales) as Sales
from PROJECT..['Sample - Superstore Dataset$']
group by [Customer Name]
order by sum(sales) desc;

-- Segment(consumer,corporate,home office) max profit
select Segment,max(profit) as Max_profit
from PROJECT..['Sample - Superstore Dataset$']
group by Segment;

--top customer purchase
select [Customer Name],count([Customer ID]) as Frequency_purchase
from PROJECT..['Sample - Superstore Dataset$']
group by [Customer Name]
order by count([Customer ID]) desc;


--subcategories generates the highest profit
select [Sub-Category],max(Profit) as Max_profit
from PROJECT..['Sample - Superstore Dataset$']
group by [Sub-Category];

--high sales but negative profit
select max(sales) as Max_sales,min(profit) as Min_profit
from PROJECT..['Sample - Superstore Dataset$']
where Profit like'-%';

--product should be discontinued or promoted
select [Sub-Category], max(sales) as Max_sales,min(sales) as Min_Sales
from PROJECT..['Sample - Superstore Dataset$']
group by [Sub-Category]
order by Max_sales,Min_Sales desc;