select A1.sell_date, 
    count(distinct A1.product) as num_sold,
    stuff(
        (
            select distinct ',' + A2.product 
            from Activities A2 
            where A2.sell_date = A1.sell_date
            FOR XML PATH (''))
        , 1, 1, '') as products
from Activities as A1 
group by A1.sell_date
order by A1.sell_date asc