USE `TravelPlanner`;

DELETE FROM TP_P_PREFERENCIAS WHERE nombre = 'Naturaleza';
DELETE FROM TP_P_PREFERENCIAS WHERE nombre = 'Cultura';

DROP TABLE IF EXISTS TP_P_PREFERENCIAS; 

DELETE FROM TP_R_LOCALIZACION_CATEGORIA WHERE id_localizacion = (SELECT id FROM TP_P_LOCALIZACIONES WHERE nombre = 'La Giralda') AND id_categoria = (SELECT id FROM TP_P_CATEGORIAS WHERE nombre = 'Cultura');

DROP TABLE IF EXISTS TP_R_LOCALIZACION_CATEGORIA; 

DELETE FROM TP_P_CATEGORIAS WHERE nombre = 'Naturaleza';
DELETE FROM TP_P_CATEGORIAS WHERE nombre = 'Cultura';
DELETE FROM TP_P_CATEGORIAS WHERE nombre = 'Ocio';
DELETE FROM TP_P_CATEGORIAS WHERE nombre = 'Infantil';

DROP TABLE IF EXISTS TP_P_CATEGORIAS; 

DELETE FROM TP_P_LOCALIZACIONES WHERE nombre = 'La Giralda';

DROP TABLE IF EXISTS TP_P_LOCALIZACIONES; 

DELETE FROM TP_P_CIUDADES WHERE nombre = 'Sevilla';

DROP TABLE IF EXISTS TP_P_CIUDADES; 

DELETE FROM TP_P_PAISES WHERE nombre = 'España';

DROP TABLE IF EXISTS TP_P_PAISES; 

DELETE FROM TP_D_USUARIOS WHERE user_name = 'mirromsan';
DELETE FROM TP_D_USUARIOS WHERE user_name = 'rubtavpic';

DROP TABLE IF EXISTS TP_D_USUARIOS; 


DELETE FROM TP_P_TIPOS_CUENTA WHERE nombre = 'Free';
DELETE FROM TP_P_TIPOS_CUENTA WHERE nombre = 'Premium';

DROP TABLE IF EXISTS TP_P_TIPOS_CUENTA; 

DROP DATABASE IF EXISTS TravelPlanner;







