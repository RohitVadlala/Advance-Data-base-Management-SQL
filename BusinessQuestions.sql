
--Business Questions 

-- 1. Top 20 highest valued real estate properties from all towns. 
select TOP(20)  DT.Town,sum(SaleAmount)
from [FactRealEstate] FE
inner join Dim_Town DT
on FE.Town_id = DT.Town_id
group by DT.Town
order by sum(SaleAmount) desc;


-- 2. Top 20 lowest assessed valued real estate properties across all years 
select TOP(20) DLY.List_Year, sum(AssessedValue)
from [FactRealEstate] FE
inner join Dim_LYear DLY
on FE.List_Year_Id = DLY.year_id
group by DLY.List_Year
order by sum([AssessedValue]);



