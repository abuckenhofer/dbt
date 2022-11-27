
      update "postgres"."abu"."d_customer_snapshot_prs"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "d_customer_snapshot_prs__dbt_tmp173519383306" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "postgres"."abu"."d_customer_snapshot_prs".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "postgres"."abu"."d_customer_snapshot_prs".dbt_valid_to is null;

    insert into "postgres"."abu"."d_customer_snapshot_prs" ("customerid", "customername", "insertedat", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."customerid",DBT_INTERNAL_SOURCE."customername",DBT_INTERNAL_SOURCE."insertedat",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "d_customer_snapshot_prs__dbt_tmp173519383306" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  