DESAFIO3_DB

Caso 1 MODELO FISICO

*   CREATE DATABASE desafio3;
    RETURN => CREATE DATABASE
    andres=# \c desafio3;
    |RETURN => You are now connected to database "desafio3" as user "andres".

*   CREATE TABLE departamento(
                    Id SERIAL,
                    nombre_del_depto VARCHAR,
                    PRIMARY KEY (id)
                    );

SELECT * FROM departamento; =>  id | nombre_del_depto 
                               ----+------------------
                               (0 rows)


*    CREATE TABLE trabajador(
                    rut VARCHAR(15) PRIMARY KEY,
                    nombre VARCHAR(50),
                    direccion VARCHAR(50),
                    id_departamento INT REFERENCES departamento(id)
                    );

SELECT * FROM trabajador; =>   rut | nombre | direccion | id_departamento 
                                 -----+--------+-----------+-----------------
                                 (0 rows)

*   CREATE TABLE liquidacion(
                    id SERIAL,
                    url VARCHAR,
                    rut VARCHAR(15) REFERENCES trabajador(rut)
                    );

SELECT * FROM liquidacion; =>        id | url | rut 
                                   ---+-----+-----
                                   (0 rows)




