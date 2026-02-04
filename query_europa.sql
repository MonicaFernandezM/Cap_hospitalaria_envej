CREATE DATABASE health_database;

USE health_database;

CREATE TABLE europa_panel AS
SELECT
g.country,
g.year,
g.health_exp_pc,
d.hospital_discharges,
a.avg_length_stay,
b.beds_per_100k
FROM gasto g
INNER JOIN demanda d
ON g.country = d.country AND g.year = d.year
INNER JOIN estancia a
ON g.country = a.country AND g.year = a.year
INNER JOIN capacidad b
ON g.country = b.country AND g.year = b.year; 
 
-- 1. A partir de 2020 se observa un cambio en la demanda hospitalaria en Europa.
SELECT
  CASE
    WHEN year < 2020 THEN 'Pre-2020'
    ELSE 'Post-2020'
  END AS periodo,
ROUND(AVG(hospital_discharges), 0) AS avg_demand
FROM demanda_hospitalaria 
GROUP BY periodo;

-- 2. Los países con mayor gasto sanitario por habitante presentan estancias medias 
-- hospitalarias más cortas
SELECT
country,
ROUND(AVG(health_exp_pc), 0) AS gasto_medio,
ROUND(AVG(avg_length_stay),0) AS estancia_media
FROM europa_panel
GROUP BY country
ORDER BY gasto_medio DESC;

SELECT
  CASE
    WHEN health_exp_pc > 5000 THEN 'Gasto alto'
    WHEN health_exp_pc BETWEEN 2000 AND 5000 THEN 'Gasto medio'
    ELSE 'Gasto bajo'
  END AS grupo_gasto,
ROUND(AVG(avg_length_stay),0) AS estancia_media
FROM europa_panel
GROUP BY grupo_gasto
ORDER BY estancia_media DESC;

-- No se confirma, paises con gasto alto la media de estancia es de 21 días
-- paises con gasto medio, la estancia media es de 20 dias
-- y paises con gasto bajo, la estancia media es de 19 dias

-- 3. Capacidad y covid (capacidad+demanda)
-- Los países con menor capacidad hospitalaria sufrieron una mayor caída relativa 
-- en la demanda durante 2020.


SELECT
  country,
  camas_media,
  altas_2019,
  altas_2020,
  ROUND(
    (altas_2020 - altas_2019) / altas_2019 * 100,1) AS altas_cambio_2020
FROM (SELECT
      country,
      ROUND(AVG(CASE WHEN year = 2019 THEN hospital_discharges END)) AS altas_2019,
      ROUND(AVG(CASE WHEN year = 2020 THEN hospital_discharges END)) AS altas_2020,
      ROUND(AVG(beds_per_100k)) AS camas_media
    FROM europa_panel
    GROUP BY country
    HAVING altas_2019 IS NOT NULL
       AND altas_2020 IS NOT NULL) t
ORDER BY altas_cambio_2020;

-- La hipótesis se cumple parcialmente: en general, los países con menor capacidad 
-- hospitalaria muestran caídas más acusadas en las altas durante 2020, 
-- aunque no es una relación perfecta y existen excepciones.

-- 4. Saturacion del sistema (estancia + demanda)
-- Países con estancias medias más largas presentan mayores niveles de demanda hospitalaria.

SELECT
  country,
  ROUND(AVG(avg_length_stay),0) AS estancia_media,
  ROUND(AVG(hospital_discharges)) AS demanda_media
FROM europa_panel
GROUP BY country
ORDER BY estancia_media DESC;
  
SELECT
  CASE
    WHEN avg_length_stay >= 20 THEN 'Estancia alta'
    WHEN avg_length_stay BETWEEN 12 AND 19 THEN 'Estancia media'
    ELSE 'Estancia baja'
  END AS grupo_estancia,

  ROUND(AVG(hospital_discharges)) AS demanda_media,
  COUNT(*) AS paises
FROM europa_panel
GROUP BY grupo_estancia
ORDER BY demanda_media DESC;

-- Sí, la hipótesis se cumple parcialmente.
-- Los países clasificados con estancias hospitalarias altas presentan, en promedio, 
-- una demanda hospitalaria mayor que los países con estancias bajas o medias.
-- Una mayor duración de los ingresos hospitalarios se asocia con una mayor presión 
-- asistencial en el sistema sanitario.
  