
  create view "postgres"."abu"."d_customer_view_trs__dbt_tmp" as (
    

with w_cust as (
    select *
    from "postgres"."abu"."stg_customer_trs"
)
select c.customerid
     , c.customername
     , c.insertedat
from w_cust c
  );