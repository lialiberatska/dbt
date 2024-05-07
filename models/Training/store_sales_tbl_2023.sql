{{ config(materialized='table') }}
with store_sales_tbl_2023 as
(
select SS_STORE_SK, SS_QUANTITY, SS_SALES_PRICE, SS_NET_PROFIT from Prod.STORE_SALES_2023
)
select * from store_sales_tbl_2023