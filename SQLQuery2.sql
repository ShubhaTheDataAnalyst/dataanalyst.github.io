select * 
from PROJECT..['Sample - Superstore Dataset$'];

select * 
from PROJECT..['Sample - Superstore Dataset$'_xlnm#_FilterDatabase];

select count([Row ID])
from PROJECT..['Sample - Superstore Dataset$']

select count([Row ID])
from PROJECT..['Sample - Superstore Dataset$'_xlnm#_FilterDatabase];

--state have high revenue
select [State],max([Sales]) as Total_sales
from PROJECT..['Sample - Superstore Dataset$']
group by [State]
order by max([sales]) desc;

--state with low profit margin
select [State],min([Profit]) as Min_Profit
from PROJECT..['Sample - Superstore Dataset$']
group by [State]
order by min([Profit]) asc;

--region with highest order volume
select [Region],count([Order ID]) as Max_order
from PROJECT..['Sample - Superstore Dataset$']
group by [Region]
order by count([Order ID]) desc;

--higher discount reduce profit
select max([Discount]) as max_discount,min([Profit]) as min_profit
from PROJECT..['Sample - Superstore Dataset$']
order by max([discount]),min([Profit]);

--category most sensitive to discount
select [Category],max([Discount]) as max_discount
from PROJECT..['Sample - Superstore Dataset$']
group by [Category]
order by max([discount]) desc;

--optimal discount range
select min([Discount]) as min_discount
from PROJECT..['Sample - Superstore Dataset$']
order by min([discount]) desc;