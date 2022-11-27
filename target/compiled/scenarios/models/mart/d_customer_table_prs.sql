

with w_cust as (
    select *
    from "postgres"."abu"."stg_customer_prs"
)
select c.customerid
     , c.customername
     , c.insertedat
from w_cust c