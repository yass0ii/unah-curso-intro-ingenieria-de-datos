# Problema: Diseño de base de datos para una aplicación de Smartwatch para diferentes deportes y métricas

Una *empresa de desarrollo de aplicaciones para smartwatches* necesita diseñar una **base de datos** para una nueva aplicación que registre datos de diferentes deportes. La aplicación debe ser compatible con múltiples modelos de smartwatches de diferentes marcas como *Samsung, Xiaomi, Huawei, entre otras*.

Los deportes que se desean incluir inicialmente en la aplicación son ciclismo, atletismo, natación y boxeo. Cada deporte tiene diferentes métricas que se deben registrar y almacenar en la base de datos. Algunas de las métricas específicas para cada deporte son las siguientes:

### Ciclismo:

- Distancia recorrida (en kilómetros)
- Tiempo de recorrido (en minutos)
- Velocidad promedio (en km/h)
- Altitud máxima alcanzada (en metros)
- Calorías quemadas
- Ruta GPS (trayectoria del recorrido)

### Atletismo:

- Distancia recorrida (en kilómetros)
- Tiempo de recorrido (en minutos)
- Ritmo promedio (en minutos por kilómetro)
- Número de pasos dados
- Frecuencia cardíaca promedio
- Ruta GPS (trayectoria del recorrido)

### Natación:

- Distancia nadada (en metros)
- Tiempo de natación (en minutos)
- Estilo de natación (libre, braza, mariposa, espalda)
- Número de vueltas
- Calorías quemadas
- Frecuencia cardíaca promedio

### Boxeo:

- Número total de golpes lanzados
- Número de golpes acertados
- Número de golpes recibidos
- Intensidad de golpes (leve, moderada, fuerte)
- Calorías quemadas
- Frecuencia cardíaca promedio


**Además**, la aplicación debe ser capaz de almacenar datos de múltiples usuarios que utilizan diferentes modelos de smartwatches. Cada usuario debe poder registrar datos de varios deportes y mantener un historial de sus actividades.

Se requiere el diseño de una base de datos que permita almacenar todos estos datos de manera eficiente, asegurando la integridad y la consistencia de la información. El diseño debe ser lo suficientemente flexible para admitir nuevos deportes y métricas en futuras actualizaciones de la aplicación.