import snowflake.snowpark.functions as F
def model (dbt,session):
  
  df_sql = session.sql("select * from prod.product")

  df_filter = df_sql.filter(F.col("REGION") == 'West')
  df_final=df_filter.group_by("STATE").agg(F.sum(F.col('GLOBAL_SALES')))

  return df_final