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
	•	Instalación
	•	Uso
	•	Fuentes de Datos
	•	Preguntas e Hipótesis
	•	Metodología
	•	Análisis
	•	Resultados
	•	Conclusiones
	•	Contribución



    - [Instalación](#instalación)
    - [Uso](#uso)
    - [Dataset](#dataset)
    - [Preguntas de Investigación](#preguntas-de-investigación)
    - [Análisis](#análisis)
    - [Resultados](#resultados)
    - [Contribución](#contribución)




## Instalación 
1. Clonar el repositorio: \
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
	•	Eurostat:
	•	Camas hospitalarias
	•	Estancia media (ALOS)
	•	Altas hospitalarias (DISCH)
	•	Gasto sanitario per cápita
	•	Instituto Nacional de Estadística (INE):
	•	Población total
	•	Población mayor de 65 años (España)
	•	Ministerio de Sanidad (España):
	•	Número anual de altas hospitalarias
    (Ministerio de Sanidad)

⸻

❓ Preguntas e Hipótesis

🌍 Europa
	1.	A partir de 2020 se observa un cambio significativo en la demanda hospitalaria en Europa.
	2.	Los países con mayor gasto sanitario por habitante presentan estancias medias hospitalarias más cortas.
	3.	Los países con menor capacidad hospitalaria sufrieron una mayor caída relativa en la demanda durante 2020.
	4.	Los países con estancias medias más largas presentan mayores niveles de demanda hospitalaria (saturación del sistema).

⸻

🇪🇸 España
	5.	La tasa de hospitalizaciones por habitante cambió significativamente tras 2020.
	6.	El aumento de la población mayor de 65 años se asocia con un incremento de la presión hospitalaria.

⸻

🧪 Metodología

El proyecto incluye:
	•	Limpieza y normalización de datos.
	•	Conversión de formatos wide → long.
	•	Eliminación de agregados europeos (EU27, EA19…).
	•	Cálculo de indicadores:
	•	Altas por 1.000 habitantes.
	•	% población ≥65 años.
	•	Creación de panel europeo país-año.
	•	Carga en MySQL.
	•	Contraste de hipótesis mediante:
	•	Agrupaciones pre/post-COVID.
	•	Comparaciones entre países.
	•	Visualizaciones.

⸻

📈 Análisis

Se realizaron:
	•	Comparaciones 2013-2019 vs 2020-2024.
	•	Rankings de países por gasto, camas y estancias.
	•	Evolución temporal de indicadores clave.
	•	Cruces entre gasto ↔ estancia ↔ demanda ↔ capacidad.
	•	Análisis específico para España.

⸻

📊 Resultados Principales

🔹 Impacto del COVID-19

En 2020 se observa una caída generalizada en las altas hospitalarias en muchos países, probablemente asociada a:
	•	Cancelación de procedimientos no urgentes.
	•	Saturación del sistema.
	•	Prioridad a casos COVID.

⸻

🔹 Gasto vs Estancia

Los países con mayor gasto per cápita tienden a mostrar estancias medias más cortas, lo que sugiere sistemas más eficientes.

⸻

🔹 Capacidad y Shock Pandemia

Los países con menor número de camas por habitante experimentaron mayores descensos relativos en la demanda, indicando posibles restricciones de acceso.

⸻

🔹 España

Entre 2013 y 2024:
	•	La población mayor de 65 años aumenta de forma constante.
	•	Las hospitalizaciones por habitante muestran un descenso fuerte en 2020.
	•	Tras la pandemia se recuperan progresivamente, aunque no siempre alcanzan los niveles previos.

⸻

🧠 Conclusiones
	•	El COVID-19 supuso un shock estructural en los sistemas sanitarios europeos.
	•	El gasto sanitario parece estar asociado a mayor eficiencia.
	•	La capacidad hospitalaria condiciona la respuesta ante crisis.
	•	El envejecimiento poblacional incrementa la presión futura sobre el sistema.

⸻

🤝 Contribución

Las contribuciones son bienvenidas:
	1.	Fork del repositorio
	2.	Crear una rama
	3.	Añadir mejoras
	4.	Pull Request
