-- Test singular: debe devolver CERO filas para pasar.
select *
from {{ ref('stg_alertas') }}
where puntuacion_sospecha < 0
   or puntuacion_sospecha > 500