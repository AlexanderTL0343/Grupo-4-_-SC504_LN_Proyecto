create user ProyectoLenguajes identified by 123;
Grant Resource to ProyectoLenguajes;
Grant create session to ProyectoLenguajes;
Grant Connect to ProyectoLenguajes;

DROP USER ProyectoLenguajes CASCADE;

Create role CreacionObjetos not identified;

GRANT CREATE Table TO CreacionObjetos
GRANT CREATE VIEW TO CreacionObjetos;
GRANT CREATE PROCEDURE TO CreacionObjetos;
GRANT CREATE TRIGGER TO CreacionObjetos;
GRANT CREATE SEQUENCE TO CreacionObjetos;


Grant CreacionObjetos to ProyectoLenguajes;
Grant CreacionObjetos to ProyectoAdmin;