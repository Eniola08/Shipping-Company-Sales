SELECT *
  FROM [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]

-- The total sales made by corporate segment in which the shipmode is first class
select sum(sales) as total_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
where Segment = 'Corporate' and Ship_Mode = 'First Class'

--The numbers of time transactions was made and total sales
select count(*) as nos_of_transactions , sum(sales) as total_structured_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-] 

--All the orders that occurred in 2015
select Ship_Mode, Segment, Order_Date, Sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
where Order_Date BETWEEN '2015-01-01' AND '2015-12-31';

--Average sales made from Home office 
select avg(sales) as avg_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
where Segment = 'Home Office'

--Numbers of times Corporate used Standard Class in the year 2013
select count(*) as nos_of_transactions
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-] 
where Segment = 'Corporate' and Ship_Mode = 'Standard Class' and Order_Date between '2013-01-01' and '2013-12-31'

--Total sales made by each Ship mode 
select Ship_Mode, sum(Sales) as total_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
group by Ship_Mode
order by total_sales desc

--Total Average made by each segment
select Segment, avg(Sales) as avg_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
group by Segment

--Total sales in 2015
select sum(Sales) as sales_made_in_2015
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
where Order_Date BETWEEN '2015-01-01' AND '2015-12-31';

--Total numbers of consumers
select count(Segment) as Consumers
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
where Segment = 'Consumer'

--Which Segment have the highest sales
select Segment, sum(sales) as Total_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
group by Segment
order by Segment desc

--Ship Mode used the most in the ordering goods
select Ship_Mode, count(Ship_Mode) as nos_of_times
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
group by Ship_Mode
order by Ship_Mode desc

--Total sales made each year and which year have the most sales    
select Year(Order_Date) as YEAR, sum(Sales) as Total_sales
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
group by Year(Order_Date)
order by Total_sales desc

-- Ship Mode mostly used
select Ship_Mode, count(Segment) as shipmode_mostly_used
from [Stuctured Sales Data-].[dbo].[Structured-Sales-Data-]
group by Ship_Mode
order by shipmode_mostly_used desc


















































































































			  


