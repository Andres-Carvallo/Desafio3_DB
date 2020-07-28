DESAFIO3_DB

Caso 1 MODELO FISICO

*  CREATE DATABASE desafio3;
    RETURN => CREATE DATABASE
    andres=# \c desafio3;
    |RETURN => You are now connected to database "desafio3" as user "andres".

* CREATE TABLE curso(
        id SERIAL PRIMARY KEY,
        nombre VARCHAR(50)
        );

SELECT * FROM curso; =>  id | nombre 
                        ----+--------
                        (0 rows)

* CREATE TABLE alumno(
        id SERIAL PRIMARY KEY,
        rut VARCHAR(15),
        nombre VARCHAR(50),
        curso_id INT REFERENCES curso(id)
        );

SELECT * FROM alumno; =>  id | rut | nombre | curso_id 
                         ----+-----+--------+----------
                         (0 rows)

* CREATE TABLE departamento(
        id SERIAL PRIMARY KEY,
        nombre VARCHAR
        );

SELECT * FROM departamento; =>
                                id | nombre 
                                ----+--------
                                (0 rows)


* CREATE TABLE profesor(
        id SERIAL PRIMARY KEY,
        nombre VARCHAR(50),
        departamento_id INT REFERENCES departamento(id)
        );

 SELECT * FROM profesor; =>
                            id | nombre | departamento_id 
                            ----+--------+-----------------
                            (0 rows)

* CREATE TABLE prueba(
        id SERIAL PRIMARY KEY,
        puntaje INT,
        nota INT,
        alumno_id INT REFERENCES alumno(id),
        profesor_id INT REFERENCES profesor(id)
        );

SELECT * FROM prueba; =>  id | puntaje | nota | alumno_id | profesor_id 
                         ----+---------+------+-----------+-------------
                         (0 rows)
