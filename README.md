# 2.-project_sql-data-base-building

# Contexto de Fondo e Introducción al proyecto.

Hace algunos años, un icónico videoclub cerró sus puertas. Sin embargo, la historia no terminó allí. El equipo detrás de este negocio ha decidido reabrirlo y traer de vuelta la magia de las noches de cine. La reapertura de este videoclub implica un gran desafío, ya que deben tomar decisiones cruciales para garantizar su éxito.

Lo que se nos pide en este proyecto nace de la necesidad de acceder a los antiguos datos recogidos por el videoclub y crear así una base de datos, la cual contendrá información sobre las películas, clientes recurrentes, tendencias de alquiler, y otros muchos datos relevantes que le permitirán al videoclub tomar decisiones adecuadas en este momento tan desafiante. 

Utilizando archivos CSV como punto de partida, nos enfrentaremos a la tarea de limpiar, para luego transformar estos datos en una base de datos eficiente que le ayude al videoclub a garantizar su éxito en esta nueva etapa.


# Pasos a seguir.

- # Paso 1: Exploración y Limpieza de Datos

En el primer paso de nuestro proyecto, nos sumergimos en la exploración y limpieza de datos. A lo largo de esta fase, analizaremos los datos e identificaremos posibles inconsistencias para asegurarnos que los datos sean coherentes y estén listos para su posterior uso. 

Partimos de siete archivos CSV que contienen datos relacionados con un videoclub. Estos archivos abarcaban una gran variedad de información, incluyendo listas de películas, registros de actores o inventarios de películas.

Nuestra primera tarea consiste en realizar una exploración exhaustiva de estos archivos utilizando el módulo Pandas de Python. Este proceso nos permite conocer la naturaleza de los datos, detectar posibles errores o inconsistencias en los datos y eliminar información redundante o no relevante que se procederá a eliminar. 

En resumen, el enfoque inicial de nuestro proyecto es explorar los datos contenidos en los archivos CSV, garantizando que estén preparados para ser transformados en una base de datos sólida y lista para su uso en la toma de decisiones y análisis posteriores.

- # Paso 2: Construcción de la Base de Datos

Una vez que los datos han sido limpiados, pasamos a la construcción de la base de datos mediante la interfaz gráfica MySQL Workbench. Aquí diseñamos y creamos la estructura de la base de datos, definiendo las tablas y sus relaciones. Este proceso es esencial para garantizar la organización y accesibilidad de los datos.

![](https://github.com/karmelealonso/2.-project_sql/blob/main/imágenes/esquema_datos_MySQL.png)

- # Paso 3: Realizar 5 queries sobre la Base de Datos

El último paso de nuestro proyecto implica la realización de algunas consultas sobre la base de datos. En nuestro caso, además de obtener información, identificar patrones y tendencias con el fin de tomar decisiones; queremos comprobar el buen funcionamiento de la Base de Datos recién creada. 

# Contenido del repositorio. 

- notebook: contiene dos archivos jupyter notebook.
- archivos_sql: contiene dos archivos sql con la Base de datos construida y las 5 consultas realizadas posteriormente. 
- data y data_clean: contienen los archivos CSV  iniciales o los limpios, respectivamente.
- imágenes: contiene una imagen con el diagrama_EER de la base de datos y las tablas con los resultad de las queries.


**Para obtener información más detallada sobre el procedimiento y los pasos que se han seguido, te invito a consultar los documentos disponibles en el repositorio.**