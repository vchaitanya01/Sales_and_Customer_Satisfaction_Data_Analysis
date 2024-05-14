-- Get before sales value of below 200 as lower margin, above 300 as higher margin and others are middle margin

select cast(Sales_Before as int) Sales_Before,
case 
when Sales_Before<200 then 'Lower Margin'
when Sales_Before>300 then 'Higher Margin'
else 'Middle Margin'
end as Margin_level
from Tb01 

-- Get Before Customer Satisfaction like if below  40 average, above 40 and below 60 is good and more th 60 is very good

select cast(Customer_Satisfaction_Before as int) Customer_Satisfaction_Before,
case 
when Customer_Satisfaction_Before < 40 then 'Average'
when Customer_Satisfaction_Before > 40 and Customer_Satisfaction_Before < 60 then 'Good'
else  'Very Good'
end as Satisfaction_level
from Tb01

-- Get After sales value of below 200 as lower margin, above 300 as higher margin and others are middle margin

select cast(Sales_After as int) Sales_After,
case 
when Sales_After<200 then 'Lower Margin'
when Sales_After>300 then 'Higher Margin'
else 'Middle Margin'
end as Margin_level
from Tb01 

-- Get After Customer Satisfaction like if below  40 average, above 40 and below 60 is good and more th 60 is very good

select cast(Customer_Satisfaction_After as int) Customer_Satisfaction_After,
case 
when Customer_Satisfaction_After < 40 then 'Average'
when Customer_Satisfaction_After > 40 and Customer_Satisfaction_After < 60 then 'Good'
else  'Very Good'
end as Satisfaction_level
from Tb01

-- Get before sales as Good sales turnover if the sum of sales is greater than 200000 otherwise its a Bad sales turnover

select sum(cast(Sales_Before as int)) Total_Sales,
case
when  sum(cast(Sales_Before as int)) > 200000 then 'Good Sales Turnover'
else 'Average Sales Turnover'
end as sales_turnover
from Tb01

/* Get before customer satisfaction if the sum of its as Good Customer Satisfaction is greater than 300000 
otherwise its a Average Customer Satisfaction */

select sum(cast(Customer_Satisfaction_Before as int)) Total_Satisfaction_rate,
case
when  sum(cast(Customer_Satisfaction_Before as int)) > 300000 then 'Good Customer Satisfaction'
else 'Average Customer Satisfaction'
end as Sales_Satisfaction
from Tb01



-- Get After sales as Good sales turnover if the sum of sales is greater than 200000 otherwise its a Bad sales turnover

select sum(cast(Sales_After as int)) Total_Sales,
case
when  sum(cast(Sales_After as int)) > 200000 then 'Good Sales Turnover'
else 'Average Sales Turnover'
end as sales_turnover
from Tb01

/* Get After customer satisfaction if the sum of its as Good Customer Satisfaction is greater than 300000 
otherwise its a Average Customer Satisfaction */

select sum(cast(Customer_Satisfaction_After as int)) Total_Satisfaction_rate,
case
when  sum(cast(Customer_Satisfaction_After as int)) > 300000 then 'Good Customer Satisfaction'
else 'Average Customer Satisfaction'
end as Sales_Satisfaction
from Tb01

-- Get sales progress difference between before sales and after sales with their respective group

select [group],cast(Sales_Before as int) Sales_Before, 
cast(Sales_After as int) Sales_After,
cast((Sales_Before) - (Sales_After) as int) Difference,
case
when Sales_After>Sales_Before then 'Good Progress'
else 'No Progess'
end as progress
from Tb01 

-- Get Customer Satisfaction progress difference between before and after Customer Satisfaction with their respective group

select [group],cast(Customer_Satisfaction_Before as int) Customer_Satisfaction_Before, 
cast(Customer_Satisfaction_After as int) Customer_Satisfaction_After,
cast((Customer_Satisfaction_Before) - (Customer_Satisfaction_After) as int) Difference,
case
when Customer_Satisfaction_After>Customer_Satisfaction_Before then 'Good Progress'
else 'No Progess'
end as progress
from Tb01 








