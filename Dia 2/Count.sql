-- Databricks notebook source
select count (*)
       
from silver.pizza_query.pedido

-- COMMAND ----------

select count(*)
from silver.pizza_query.pedido
where flKetchup is not null

-- COMMAND ----------

select descUF,
count(*) AS qtdePedidos
from silver.pizza_query.pedido

where descUF != 'São Paulo'

group by descUF
having >= 75 --(Tendo um limite minimo)
order by qtdePedidos desc --(Descendente)

limit 5

-- COMMAND ----------

select

-- COMMAND ----------

select descUF,
       flKetchup,
       count(*)

from silver.pizza_query.pedido

group by descUF, flKetchup
order by descUF, flKetchup
