{% snapshot d_customer_snapshot_trs %}

{{
    config(
      target_schema='abu',
      unique_key='customerid',

      strategy='timestamp',
      updated_at='insertedat',
    )
}}

with w_cust as (
    select *
    from {{ source('abu', 'stg_customer_trs') }}
)
select c.customerid
     , c.customername
     , c.insertedat
from w_cust c

{% endsnapshot %}
