/*
    @author Kenneth Cruz 
    @version 0.01
    @date 2023-07-22
    @since 2023-07-22
*/


USE IIDDBDsmartwatch; 

/*
TRUNCATE TABLE Cycling;
TRUNCATE TABLE Watersport;
TRUNCATE TABLE Athletics;
TRUNCATE TABLE CombatSport;
TRUNCATE TABLE EnduranceSport;
TRUNCATE TABLE Workout;
TRUNCATE TABLE User;
TRUNCATE TABLE Device;
*/


-- ------------------------------
--              Device         -- 
-- ------------------------------

INSERT INTO Device (tex_brand, tex_model, dec_screen_size)
VALUES ('Samsung', 'Galaxy Watch 4', 1.4);

INSERT INTO Device (tex_brand, tex_model, dec_screen_size)
VALUES ('Xiaomi', 'Mi Watch Revolve', 1.39);

INSERT INTO Device (tex_brand, tex_model, dec_screen_size)
VALUES ('Huawei', 'Watch GT 2 Pro', 1.39);

INSERT INTO Device (tex_brand, tex_model, dec_screen_size)
VALUES ('Apple', 'Apple Watch Series 6', 1.78);

INSERT INTO Device (tex_brand, tex_model, dec_screen_size)
VALUES ('Garmin', 'Forerunner 945', 1.2);

INSERT INTO Device (tex_brand, tex_model, dec_screen_size) VALUES 
    ('Fitbit', 'Versa 3', 1.58),
    ('Polar', 'Vantage M', 1.3),
    ('Amazfit', 'GTR 3', 1.39)
;


-- ------------------------------
--              user           -- 
-- ------------------------------

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height)
VALUES ('Juan Perez', 'M', 75.5, 180);

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height)
VALUES ('Maria Lopez', 'F', 62.3, 165);

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height)
VALUES ('Carlos Ramirez', 'M', 80.0, 175);

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height)
VALUES ('Ana Gomez', 'F', 55.2, 160);

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height)
VALUES ('Pedro Sanchez', 'M', 70.1, 175);

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height)
VALUES ('Laura Ramirez', 'F', 60.7, 170);

INSERT INTO User (tex_name, enu_sex, dec_weight, dec_height) VALUES
    ('John Doe', 'M', 70.5, 175),
    ('Jane Smith', 'F', 62.0, 165),
    ('Michael Johnson', 'M', 80.2, 180),
    ('Emily Davis', 'F', 55.3, 160),
    ('Laura Williams', 'F', 57.2, 160),
    ('Daniel Johnson', 'M', 85.7, 185),
    ('Sophia Brown', 'F', 62.5, 170),
    ('James Miller', 'M', 76.9, 178)  
;

-- ------------------------------
--           DeviceUser      -- 
-- ------------------------------

INSERT INTO DeviceUser (id_device_fk, id_user_fk)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 1),
    (4, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (5, 7),
    (6, 5),
    (8, 6),
    (7, 8), 
    (2, 2),
    (3, 3),
    (5, 6)
;


-- ------------------------------
--            Sport           -- 
-- ------------------------------

INSERT INTO Sport (tex_name, tex_description, jso_image) VALUES
    ('Cycling', 'Outdoor cycling activity', '{"url": "https://example.com/cycling.jpg"}'),
    ('Running', 'Running on a track', '{"url": "https://example.com/running.jpg"}'),
    ('Swimming', 'Indoor swimming in a pool', '{"url": "https://example.com/swimming.jpg"}'),
    ('Boxing', 'Boxing training in a gym', '{"url": "https://example.com/boxing.jpg"}'),
    ('Crossfit', 'Crossfit training in a gym', '{"url": "https://example.com/crossfit.jpg"}'),
    ('Kick Boxing', 'Kick Boxing training in a gym', '{"url": "https://example.com/kick-boxing.jpg"}')
;


-- ------------------------------
--              Workout        -- 
-- ------------------------------

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (1, 140, 550, '01:15:30');

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (2, 125, 480, '00:58:45');

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (3, 150, 600, '01:30:15');

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (4, 130, 520, '01:10:20');

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (5, 138, 600, '01:25:30');

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (6, 125, 480, '00:58:45');

-- Workout para la persona con id 1 (Juan Perez)
INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (1, 145, 580, '01:20:15');

-- Workout para la persona con id 2 (Maria Lopez)
INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (2, 130, 520, '01:10:30');

-- Workout para la persona con id 3 (Carlos Ramirez)
INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time)
VALUES (3, 150, 600, '01:30:00');

INSERT INTO Workout (id_user_fk, dec_avg_heart_rate, dec_calories_burned, tim_training_time) VALUES
    (1, 130, 350, '00:45:00'),
    (1, 140, 420, '00:50:00'),
    (2, 125, 300, '00:40:00'),
    (3, 150, 400, '00:55:00'),
    (3, 145, 380, '00:52:00'),
    (4, 120, 320, '00:42:00'),
    (4, 135, 370, '00:48:00'),
    (5, 125, 400, '00:40:00'),
    (5, 130, 420, '00:45:00'),
    (6, 140, 480, '00:55:00'),
    (6, 135, 450, '00:50:00'),
    (7, 120, 380, '00:42:00'),
    (8, 115, 350, '00:38:00'),
    (8, 150, 550, '01:10:00')
;


-- ------------------------------
--              Metric        -- 
-- ------------------------------

INSERT INTO Metric (tex_name, enu_unit_measurement)
VALUES
    ('max altitude', 'm'),
    ('laps', 'count'),
    ('total strokes', 'count'),
    ('total steps', 'count' ), -- 4
    ('total punches', 'count' ), -- 5
    ('intensity punches', 'count' ), -- 6
    ('distance', 'km' ), -- 7
    ('avg speed', 'km/h' ) -- 8
;

-- ------------------------------
--           SportMetric      -- 
-- ------------------------------
INSERT INTO SportMetric (id_sport_fk, id_metric_fk, id_workout_fk, dec_value)
VALUES
    -- Cycling metrics
    (1, 1, 1, 350.12),
    (1, 7, 1, 50.12),
    (1, 8, 1, 76),

    (1, 1, 2, 1850),
    (1, 7, 2, 10.5),
    (1, 8, 2, 15.3 ),

    (1, 1, 3, 22000),
    (1, 7, 3, 8.7),
    (1, 8, 3, 12.5),

    (1, 1, 4, 85000),
    (1, 7, 4, 28.5),
    (1, 8, 4, 20.5),

    (1, 1, 5, 4200),
    (1, 7, 5, 30.1),
    (1, 8, 5, 19.8),

    -- Running metrics
    (2, 4, 6, 18987),
    (2, 7, 6, 12.5),
    (2, 8, 6, 14.3),

    (2, 4, 7, 21542),
    (2, 7, 7, 15.8),
    (2, 8, 7, 16.7),

    (2, 4, 8, 17765),
    (2, 7, 8, 11.2),
    (2, 8, 8, 13.4),

    (2, 4, 9, 19876),
    (2, 7, 9, 13.2),
    (2, 8, 9, 15.1),

    (2, 4, 10, 23105),
    (2, 7, 10, 16.5),
    (2, 8, 10, 17.8),

    (2, 4, 21, 22500),
    (2, 7, 21, 12.5),
    (2, 8, 21, 15.5),

    (2, 4, 22, 19800),
    (2, 7, 22, 11.2),
    (2, 8, 22, 14.8),

    (2, 4, 23, 24000),
    (2, 7, 23, 13.7),
    (2, 8, 23, 16.2),

    -- Swimming metrics
    (3, 2, 11, 35),
    (3, 3, 11, 870),
    (3, 7, 11, 2000),
    (3, 8, 11, 1.8),

    (3, 2, 12, 28),
    (3, 3, 12, 720),
    (3, 7, 12, 1500),
    (3, 8, 12, 1.5),

    (3, 2, 13, 42),
    (3, 3, 13, 980),
    (3, 7, 13, 2500),
    (3, 8, 13, 2.2),

    (3, 2, 14, 30),
    (3, 3, 14, 800),
    (3, 7, 14, 1800),
    (3, 8, 14, 1.6),

    (3, 2, 15, 38),
    (3, 3, 15, 920),
    (3, 7, 15, 2200),
    (3, 8, 15, 2.0),


    -- Boxing metrics
    (4, 5, 16, 220),
    (4, 6, 16, 4),

    (4, 5, 17, 180),
    (4, 6, 17, 3),

    (4, 5, 18, 250),
    (4, 6, 18, 5),

    (4, 5, 19, 190),
    (4, 6, 19, 2),

    (4, 5, 20, 205),
    (4, 6, 20, 4)

/*
    -- Crossfit metrics
    (5, 1, 21, 310.25),
    (5, 2, 22, 30),
    (5, 4, 23, 17200),
    (5, 6, , 63500), -- los Workouts deben ser otros
    (5, 3, , 3120),

    -- Kick Boxing metrics
    (6, 1, , 250.5),
    (6, 5, , 80),
    (6, 4, , 11000),
    (6, 6, , 42000),
    (6, 3, , 2560)
*/
;