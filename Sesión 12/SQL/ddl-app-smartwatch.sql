/*
    @author Kenneth Cruz 
    @version 0.03
    @date 2023-07-22
    @since 2023-07-26
*/

DROP DATABASE IF EXISTS IIDDBDsmartwatch;

CREATE DATABASE IIDDBDsmartwatch CHARACTER SET utf8; 

USE IIDDBDsmartwatch; 


CREATE TABLE Device(
    id SERIAL PRIMARY KEY,
    tex_brand VARCHAR(60) NOT NULL UNIQUE COMMENT "Nombre",
    tex_model VARCHAR(60) NOT NULL UNIQUE COMMENT "Modelo",
    dec_screen_size DECIMAL NOT NULL COMMENT "Tamaño de la pantalla",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró el dispositivo"
)COMMENT "Información sobre el dispositivo";


CREATE TABLE User(
    id SERIAL PRIMARY KEY,
    tex_name VARCHAR(60) NOT NULL COMMENT "Nombre",
    enu_sex ENUM('M', 'F', 'O') NOT NULL COMMENT "Masculino, Femenino, Otro",
    dec_weight DECIMAL NOT NULL COMMENT "Peso",
    dec_height DECIMAL NOT NULL COMMENT "Altura",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró un usuario"
)COMMENT "Información sobre la usera";


CREATE TABLE DeviceUser(
    id SERIAL PRIMARY KEY,
    id_device_fk BIGINT UNSIGNED NOT NULL COMMENT "Referencia hacia la entidad Device",
    id_user_fk BIGINT UNSIGNED NOT NULL COMMENT "Referencia hacia la entidad User",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró",

    UNIQUE(id_device_fk, id_user_fk),

    FOREIGN KEY (id_device_fk) REFERENCES Device(id) ON DELETE CASCADE,
    FOREIGN KEY (id_user_fk) REFERENCES User(id) ON DELETE CASCADE
)COMMENT "Relación N:M entre la tabla Device y User";


CREATE TABLE Sport(
    id SERIAL PRIMARY KEY,
    tex_name VARCHAR(60) NOT NULL COMMENT "Nombre",
    tex_description VARCHAR(500) NOT NULL COMMENT "Descripción",
    jso_image JSON NOT NULL COMMENT "URL de imágenes",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró el deporte"
)COMMENT "Información sobre los deportes";


CREATE TABLE Workout(
    id SERIAL PRIMARY KEY,
    id_user_fk BIGINT UNSIGNED NOT NULL COMMENT "Referencia hacia la entidad user",
    dec_avg_heart_rate DECIMAL NOT NULL COMMENT "Frecuencia cardíaca promedio",
    dec_calories_burned DECIMAL NOT NULL COMMENT "Calorías quemadas",
    tim_training_time TIME NOT NULL COMMENT "Tiempo total de entrenamiento",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró el workout",

    FOREIGN KEY (id_user_fk) REFERENCES User(id) ON DELETE CASCADE
)COMMENT "Información sobre el workout";


CREATE TABLE Metric(
    id SERIAL PRIMARY KEY,
    tex_name VARCHAR(60) NOT NULL COMMENT "Nombre",
    enu_unit_measurement ENUM('lb', 'kg', 'km', 'm', 'min', 'h', 'km/h', 'count') NOT NULL COMMENT "Unidad de medida",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró la métrica"
)COMMENT "Información sobre las Métricas";


CREATE TABLE SportMetric(
    id SERIAL PRIMARY KEY,
    id_sport_fk BIGINT UNSIGNED NOT NULL COMMENT "Referencia hacia la entidad Device",
    id_metric_fk BIGINT UNSIGNED NOT NULL COMMENT "Referencia hacia la entidad User",
    id_workout_fk BIGINT UNSIGNED NOT NULL COMMENT "Referencia hacia la entidad Workout",
    dec_value DECIMAL NOT NULL COMMENT "Valor de la métrica",
    tim_date TIMESTAMP DEFAULT NOW() NOT NULL COMMENT "Fecha en el que se registró",

    FOREIGN KEY (id_sport_fk) REFERENCES Sport(id) ON DELETE CASCADE,
    FOREIGN KEY (id_metric_fk) REFERENCES Metric(id) ON DELETE CASCADE,
    FOREIGN KEY (id_workout_fk) REFERENCES Workout(id) ON DELETE CASCADE
)COMMENT "Relación N:M entre la tabla Device y User";