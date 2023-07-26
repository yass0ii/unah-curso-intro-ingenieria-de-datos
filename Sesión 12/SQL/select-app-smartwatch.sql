/*
    @author Kenneth Cruz 
    @version 0.01
    @date 2023-07-25
    @since 2023-07-25
*/

-- 1. ¿Cuál es la marca y modelo más utilizado de smartwatch entre los usuarios registrados en la aplicación?
SELECT 
    Device.tex_brand AS 'Brand',
    Device.tex_model AS 'Model',
    COUNT(DeviceUser.id_device_fk) AS 'Count'
FROM 
    DeviceUser
INNER JOIN 
    Device ON DeviceUser.id_device_fk = Device.id
GROUP BY 
     Device.tex_brand
ORDER BY 
    COUNT(DeviceUser.id_device_fk) DESC
;

-- 2. ¿Cuál es la duración promedio de los entrenamientos para cada deporte registrado en la aplicación?
SELECT 
    Sport.tex_name AS 'Sport',
    TIME_FORMAT(
        SEC_TO_TIME(
            AVG(TIME_TO_SEC(Workout.tim_training_time)) 
        ),
        '%H:%i:%s'
    ) 'Trainig time'
FROM
    Sport
INNER JOIN 
    SportMetric ON Sport.id = SportMetric.id_sport_fk
INNER JOIN 
    Workout ON SportMetric.id_workout_fk = Workout.id
GROUP BY 
    Sport.tex_name
;


-- 3. ¿Qué usuarios han mostrado un mayor progreso en términos de frecuencia cardíaca promedio y calorías quemadas a lo largo del tiempo?
SELECT 
    User.tex_name AS 'User', 
    ROUND(AVG(Workout.dec_calories_burned), 2) AS 'Calories burned',
    ROUND(AVG(Workout.dec_avg_heart_rate), 2) AS 'Heart rate'
FROM 
    User
INNER JOIN 
    Workout ON User.id = Workout.id_user_fk
GROUP BY 
    User.tex_name
ORDER BY 
    ROUND(AVG(Workout.dec_calories_burned), 2) DESC
;


-- 4. ¿Cuál es la distribución de género entre los usuarios registrados en la aplicación?
SELECT 
    (SELECT COUNT(*) FROM User WHERE enu_sex = 'M') AS 'Male',
    (SELECT COUNT(*) FROM User WHERE enu_sex = 'F') AS 'Female',
    (SELECT COUNT(*) FROM User WHERE enu_sex = 'O') AS 'Other'
;


-- 5. ¿Existe una correlación entre el peso y la altura de los usuarios y la frecuencia cardíaca promedio durante los entrenamientos?
SELECT 
    User.tex_name AS 'Name',
    User.dec_height AS 'Height', 
    User.dec_weight AS 'Weight', 
    Workout.dec_avg_heart_rate AS 'Heart rate'
FROM 
    User
INNER JOIN 
    Workout ON User.id = Workout.id_user_fk
ORDER BY    
    User.dec_weight DESC
;


-- 6. ¿Cuáles son los meses del año con mayor actividad física registrada en la aplicación?
SELECT 
    MONTHNAME(Workout.tim_date) AS 'Month',
    COUNT(MONTHNAME(Workout.tim_date)) AS 'Count'
FROM 
    Workout
GROUP BY 
    MONTHNAME(Workout.tim_date)
;

-- 7. ¿Cuál es la distancia recorrida más larga registrada en una sesión de atletismo? 
SELECT
    SportMetric.dec_value AS 'Distance', 
    Metric.enu_unit_measurement AS 'Unit', 
    Workout.tim_training_time AS 'Time'
FROM
    Sport
INNER JOIN 
    SportMetric ON Sport.id = SportMetric.id_sport_fk
INNER JOIN 
    Metric ON SportMetric.id_metric_fk = Metric.id 
INNER JOIN 
    Workout ON SportMetric.id_workout_fk = Workout.id 
WHERE 
    Sport.tex_name LIKE "Running" AND  
    Metric.tex_name LIKE "distance"
ORDER BY 
    SportMetric.dec_value DESC
;

-- 8. ¿Cuál es la métrica más correlacionada con la quema de calorías en los diferentes deportes? 
SELECT

FROM
    
INNER JOIN 
    ON . =
;

-- 9. ¿Cuál es la intensidad de golpes más comúnmente registrada en el boxeo?
SELECT

FROM
    
INNER JOIN 
    ON . =
;

-- 10. ¿Cuál es la frecuencia cardíaca promedio más alta registrada en los deportes de ciclismo y atletismo? 
SELECT

FROM
    
INNER JOIN 
    ON . =
;
