
      insert into "postgres"."abu"."d_customer_incremental_prs" ("customerid", "customername", "insertedat")
    (
        select "customerid", "customername", "insertedat"
        from "d_customer_incremental_prs__dbt_tmp173510504796"
    )


  