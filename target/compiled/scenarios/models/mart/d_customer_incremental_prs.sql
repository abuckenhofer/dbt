

with w_cust as (
    select *
    from "postgres"."abu"."stg_customer_prs"
    
    -- filter for an incremental run to get new data
    

    where insertedat > (select max(insertedat) from "postgres"."abu"."d_customer_incremental_prs")

    

)
select c.customerid
     , c.customername
     , c.insertedat
from w_cust c