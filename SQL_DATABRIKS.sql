-- Databricks notebook source
SELECt * FROM hive_metastore.silver_olist.vendedor LIMIT 2

-- COMMAND ----------

SELECt p.*, DATEDIFF(dtEstimativaEntrega,dtEntregue)  FROM SILVER_OLIST.PEDIDO p

-- COMMAND ----------

SELECT a, b, dense_rank() OVER (PARTITION BY 1 ORDER BY b) FROM VALUES ('A1', 2), ('A1', 1), ('A2', 3), ('A1', 1), ('A3',4), ('A3',5) tab(a, b);
