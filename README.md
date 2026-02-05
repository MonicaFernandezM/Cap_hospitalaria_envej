# Cap_hospitalaria_envej

## Description
Este proyecto analiza la evolución del sistema sanitario en Europa y España entre 2013 y 2024, con especial atención al impacto del COVID-19.

Se estudian relaciones entre:
	•	Capacidad hospitalaria (camas por habitante)
	•	Demanda hospitalaria (altas / hospitalizaciones)
	•	Estancia media hospitalaria
	•	Gasto sanitario per cápita
	•	Envejecimiento de la población en España

El objetivo es evaluar cómo reaccionaron los sistemas sanitarios ante el shock de 2020 y si existen diferencias estructurales entre países.

## Tabla de Contenidos
- [Instalación](#instalación)
- [Uso](#uso)
- [Dataset](#dataset)
- [Preguntas de Investigación](#preguntas-de-investigación)
- [Metodología](#metodología)
- [Análisis](#análisis)
- [Resultados](#resultados)
- [Conclusiones](#conclusiones)
- [Limitaciones del Análisis](#limitaciones-del-análisis)
- [Trabajo Futuro](#trabajo-futuro)
- [Contribución](#contribución)

## Instalación 
1. Clonar el repositorio:\
git clone https://github.com/tu_usuario/tu_repo.git

2. Abrir el proyecto en Jupyter Notebook o VSCode.

3. Instalar dependencias:
pandas, numpy, matplotlib, seaborn, sqlalchemy, pymysql, requests

4. Ejecutar los notebook en orden.

## Uso 

Ejecutar los notebooks de limpieza y transformación.
* Cargar las tablas finales en MySQL.
* Ejecutar consultas SQL para contrastar hipótesis.
* Visualizar resultados mediante gráficos en Python.


# Dataset

Los datos proceden de:
Eurostat:
* Camas hospitalarias
* Estancia media (ALOS)
* Altas hospitalarias (DISCH)
* Gasto sanitario por habitantes 
Instituto Nacional de Estadística (INE):
* Población total
* Población mayor de 65 años (España)
Ministerio de Sanidad (España):
* Número anual de altas hospitalarias (Ministerio de Sanidad)

# Preguntas de investigación

Europa:
1.	A partir de 2020 se observa un cambio significativo en la demanda hospitalaria en Europa.
2. Los países con menor capacidad hospitalaria previa sufrieron una mayor caída relativa en la demanda hospitalaria durante 2020.
3. Los países con mayor gasto sanitario por habitante amortiguaron mejor la caída de la actividad hospitalaria en 2020.

España:
4.	El aumento de la población mayor de 65 años se asocia con un incremento de la presión hospitalaria.

# Metodología

El proyecto incluye:
* Limpieza y normalización de datos.
* Conversión de formatos wide → long.
* Eliminación de agregados europeos (EU27, EA19…).
* Cálculo de indicadores:
	- Altas por 1.000 habitantes.
	- % población ≥65 años.
	- Creación de panel europeo país-año.
	- Carga en MySQL.
	- Contraste de hipótesis mediante:\
		- Agrupaciones pre/post-COVID.
		- Comparaciones entre países.
		- Visualizaciones.


# Análisis

* Comparación antes y después de 2020.
* Comparación entre países europeos.
* Evolución temporal de los principales indicadores.
* Relación entre gasto, capacidad y estancias.
* Caso específico de España.

# Resultados Principales

Evolución de la capacidad hospitalaria en Europa (2013–2024)\
\
Durante el periodo 2013–2024, la capacidad hospitalaria en Europa, medida como camas por cada 100.000 habitantes, se mantiene relativamente estable en la mayoría de países, con variaciones moderadas entre años.
\
En contraste, la demanda hospitalaria muestra cambios más marcados, especialmente en torno a 2020. Esto indica que la evolución de la actividad hospitalaria no siempre ha ido acompañada por un crecimiento proporcional de los recursos disponibles.
\

Gasto sanitario y resistencia al impacto COVID\ 
\
El análisis muestra que los países con mayor gasto sanitario por habitante tienden a registrar descensos menos pronunciados en la actividad hospitalaria durante 2020.

Aunque la relación no es homogénea entre países, el patrón general sugiere que un mayor nivel de gasto podría estar asociado a una mayor capacidad de adaptación ante situaciones de presión extraordinaria.
\
COVID-19 y actividad hospitalaria en Europa
\
En 2020 se observa una caída generalizada en las altas hospitalarias en muchos países europeos, posiblemente relacionada con:
* Cancelación de procedimientos no urgentes.
* Reorganización hospitalaria para atender pacientes COVID.
* Prioridad de ingresos urgentes frente a actividad programada.
\
España: envejecimiento poblacional y presión hospitalaria
\
Entre 2013 y 2024 se observa que:
* La proporción de población mayor de 65 años aumenta de forma continuada.
* Las hospitalizaciones por habitante muestran una caída marcada en 2020.
* Tras la pandemia, la actividad hospitalaria se recupera gradualmente.

# Conclusiones

* Entre 2013 y 2024, la evolución de la demanda hospitalaria en Europa muestra cambios importantes a partir de 2020, mientras que la capacidad hospitalaria (medida en camas por habitante) presenta una evolución mucho más gradual y estable en el tiempo.
* Los países con mayor gasto sanitario por habitante tendieron a experimentar caídas menos intensas en la actividad hospitalaria durante la pandemia, lo que sugiere una mayor capacidad de adaptación ante una crisis sanitaria.
* La capacidad hospitalaria estructural es un elemento relevante para entender cómo funcionan los sistemas sanitarios europeos a lo largo del tiempo, aunque por sí sola no explica completamente las diferencias observadas entre países.
* En España, el envejecimiento progresivo de la población se asocia con una presión creciente sobre el sistema sanitario, interrumpida temporalmente en 2020 por el impacto excepcional del COVID-19.

# Limitaciones del análisis:

Los datos están agregados a nivel país, por lo que pueden ocultar diferencias regionales dentro de cada sistema sanitario.
* Algunas variables (como camas hospitalarias, gasto sanitario o estancias medias) no recogen aspectos cualitativos como la organización hospitalaria o la disponibilidad real de personal.
* El análisis es descriptivo: se estudian asociaciones entre variables, pero no se puede afirmar que una cause a la otra.
* La pandemia fue un evento excepcional que afectó a muchos factores al mismo tiempo, lo que hace difícil aislar el efecto de cada uno.
* El análisis del envejecimiento poblacional solo se realiza para España, ya que no se dispone de datos comparables para todos los países europeos.


# Trabajo futuro

Como líneas de investigación futuras, sería interesante:
* Incorporar datos regionales para analizar desigualdades dentro de los países.
* Añadir información sobre personal sanitario, unidades de cuidados intensivos o recursos tecnológicos.
* Aplicar modelos econométricos o de regresión para cuantificar relaciones causales.
* Analizar la evolución posterior a 2024 para evaluar los efectos a medio plazo de la pandemia.
* Extender el análisis demográfico al conjunto de países europeos si los datos estuvieran disponibles.

# Contribución

Las contribuciones son bienvenidas:
	1.	Fork del repositorio
	2.	Crear una rama
	3.	Añadir mejoras
	4.	Pull Request
