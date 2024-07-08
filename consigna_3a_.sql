

USE netflix;

CREATE TABLE IF NOT EXISTS oscar (
    id_oscar   int NOT NULL,
    id_inf   int DEFAULT NULL,
    id_res   int DEFAULT NULL,
    id_content   int DEFAULT NULL,
    title_oscar   varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    year_ceremony   int DEFAULT NULL,
    category   varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    name   varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    winner   tinyint DEFAULT NULL,
    directed_by   varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    based_on   varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    starring   varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    distributed_by   varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    budget   varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    budget_x_million   double DEFAULT NULL,
    box_office   varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
    box_office_x_million   double DEFAULT NULL,
    imdb   double DEFAULT NULL,
    metascore   int DEFAULT NULL,
    rotten_tomatoes   int DEFAULT NULL
);



/* Aplicar en caso de que reciba el error 1366: SET sql_mode=''; */
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\oscar.csv'
INTO TABLE oscar
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;