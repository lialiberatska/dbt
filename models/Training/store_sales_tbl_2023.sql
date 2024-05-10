{{ config(materialized='table') }}
with store_sales_tbl_2023 as
(
select SS_STORE_SK, SS_QUANTITY, SS_SALES_PRICE, SS_NET_PROFIT from {{ source('Snowflake', 'Store_Sales_2023')}}
)
select * from store_sales_tbl_2023