

with w_cust as (
    select *
    from "postgres"."abu"."stg_customer_trs"
    
    -- filter for an incremental run to get new data
    

    --where insertedat > (select max(insertedat) from "postgres"."abu"."d_customer_incremental_trs")

    

)
select c.customerid
     , c.customername
     , c.insertedat
from w_cust c