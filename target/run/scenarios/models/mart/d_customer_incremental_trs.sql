
      insert into "postgres"."abu"."d_customer_incremental_trs" ("customerid", "customername", "insertedat")
    (
        select "customerid", "customername", "insertedat"
        from "d_customer_incremental_trs__dbt_tmp173510674767"
    )


  