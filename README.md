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

Se realizaron:
- Comparaciones 2013-2019 vs 2020-2024.
- Rankings de países por gasto, camas y estancias.
- Evolución temporal de indicadores clave.
- Cruces entre gasto ↔ estancia ↔ demanda ↔ capacidad.
- Análisis específico para España.

# Resultados Principales

Impacto del COVID-19\
\
En 2020 se observa una caída generalizada en las altas hospitalarias en muchos países, probablemente asociada a:
* Cancelación de procedimientos no urgentes.
* Saturación del sistema.
* Prioridad a casos COVID.

Gasto sanitario y resistencia al impacto COVID\ 
\
El análisis muestra que los países con mayor gasto sanitario por habitante tienden a registrar caídas menos pronunciadas en la actividad hospitalaria durante 2020, lo que sugiere una mayor capacidad de absorción del impacto de la pandemia.
\
Aunque la relación no es perfecta, el patrón general apunta a que una mayor inversión sanitaria podría contribuir a una respuesta más resiliente ante crisis externas.
\
Capacidad hospitalaria y shock pandémico
\
Los países con menor número de camas hospitalarias por habitante experimentaron, en promedio, descensos relativos más intensos en la demanda hospitalaria en 2020.
\
Esto indica que la capacidad previa del sistema sanitario puede haber condicionado la respuesta ante la pandemia, aunque se observan excepciones entre países.

España: envejecimiento poblacional y presión hospitalaria

Entre 2013 y 2024 se observa que:
* La proporción de población mayor de 65 años aumenta de forma continua.
* Las hospitalizaciones por habitante presentan una caída abrupta en 2020.
* Tras la pandemia, la actividad hospitalaria se recupera progresivamente, aunque no siempre alcanza los niveles previos.

Estos resultados sugieren que el envejecimiento poblacional podría ejercer una presión creciente sobre el sistema sanitario español en el largo plazo, mientras que eventos extremos como el COVID-19 alteran temporalmente esta relación.

# Conclusiones

* El COVID-19 supuso un shock estructural en los sistemas sanitarios europeos.
* El gasto sanitario parece estar asociado a una mayor resiliencia frente a crisis.
* La capacidad hospitalaria condiciona la magnitud del impacto ante shocks externos.
* En España, el envejecimiento poblacional incrementa la presión futura sobre el sistema sanitario.

# Limitaciones del análisis:

Este proyecto presenta varias limitaciones que deben tenerse en cuenta al interpretar los resultados:
* El análisis se basa en datos agregados a nivel país, lo que puede ocultar diferencias regionales dentro de cada sistema sanitario.
* Algunas variables clave (como capacidad hospitalaria, gasto sanitario o estancias medias) no recogen aspectos cualitativos como la organización hospitalaria o la disponibilidad real de personal sanitario.
* La relación observada entre variables es de carácter descriptivo, por lo que no permite establecer causalidad directa.
* La pandemia de COVID-19 fue un evento excepcional que afectó simultáneamente a múltiples dimensiones del sistema sanitario, lo que dificulta aislar el efecto específico de cada factor.
* El análisis del envejecimiento poblacional se limita al caso de España y no se dispone de información comparable para el resto de países europeos.


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
