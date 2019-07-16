---trabajadores
INSERT INTO TRABAJADORES (NUMEROTELEFONO,PASS,FECHANAC,NOMBRE,APELLIDOS,DIRECCION, EMAIL,HORASTRABAJO,SUELDO,ESGESTOR,DNI,OIDTRABAJADOR)
    VALUES(123456739,'patATA123',TO_DATE('13/07/1988','DD,MM,YYYY'),'Manuel','Molina','Primero de mayo',
    'manuel@gmail.com',36,10000,'s','12345678X',0);
/  
INSERT INTO TRABAJADORES (NUMEROTELEFONO,PASS,FECHANAC,NOMBRE,APELLIDOS,DIRECCION, EMAIL,HORASTRABAJO,SUELDO,ESGESTOR,DNI,OIDTRABAJADOR)
    VALUES(123456789,'patATA123',TO_DATE('13/02/1988','DD,MM,YYYY'),'Conchi','Marquez','Puerta de Jerez',
    'conchi@gmail.com',36,10000,'n','12345678X',1);
/    
INSERT INTO TRABAJADORES (NUMEROTELEFONO,PASS,FECHANAC,NOMBRE,APELLIDOS,DIRECCION, EMAIL,HORASTRABAJO,SUELDO,ESGESTOR,DNI,OIDTRABAJADOR)
    VALUES(123256789,'patATA123',TO_DATE('14/02/1988','DD,MM,YYYY'),'Maria','Sanchez','Pino Montano',
    'mari@gmail.com',36,10000,'n','12345678W',2);
/
INSERT INTO TRABAJADORES (NUMEROTELEFONO,PASS,FECHANAC,NOMBRE,APELLIDOS,DIRECCION, EMAIL,HORASTRABAJO,SUELDO,ESGESTOR,DNI,OIDTRABAJADOR)
    VALUES(123456889,'patATA123',TO_DATE('13/02/1988','DD,MM,YYYY'),'Conchi','Marquez','Puerta de Jerez',
    'conchi@gmail.com',36,10000,'n','12345678X',3);
/   
---clientes

INSERT INTO CLIENTES (DNI,FECHANAC,NUMEROTELEFONO,PASS,DIRECCION,EMAIL,NOMBRE,APELLIDOS)
    VALUES ('99999999D',TO_DATE('13/07/1978','DD,MM,YYYY'),601222777,'manuelB123','Calle Amor','manolo@gmail.com'
        ,'Manuel','Beza');
/       
 
INSERT INTO CLIENTES (DNI,FECHANAC,NUMEROTELEFONO,PASS,DIRECCION,EMAIL,NOMBRE,APELLIDOS)
    VALUES ('77777777D',TO_DATE('12/07/1988','DD,MM,YYYY'),601223877,'sosB123','Avenida de Sevilla','maika@gmail.com'
        ,'Maika','Gonzalez');
/
INSERT INTO CLIENTES (DNI,FECHANAC,NUMEROTELEFONO,PASS,DIRECCION,EMAIL,NOMBRE,APELLIDOS)
    VALUES('66666666D',TO_DATE('11/07/1988','DD,MM,YYYY'),601333757,'carmenC123','Generalife','carmela@gmail.com'
        ,'Carmen','Gonzalez');
/
---pacientes

INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000000',TO_DATE('14/02/2019','DD,MM,YYYY'),'marron','persa','gato','99999999D');
/
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000001',TO_DATE('14/03/2019','DD,MM,YYYY'),'blanco','persa','gato','99999999D');
/    
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000002',TO_DATE('14/02/2018','DD,MM,YYYY'),'blanco','chucho','perro','99999999D');
/
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000003',TO_DATE('10/05/2015','DD,MM,YYYY'),'blanco','normal','cobaya','99999999D');
/
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000004',TO_DATE('14/11/2019','DD,MM,YYYY'),'negro','pug','perro','77777777D');
/
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000005',TO_DATE('12/02/2001','DD,MM,YYYY'),'verde','asiatico','loro','77777777D');
/
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000006',TO_DATE('14/02/2008','DD,MM,YYYY'),'verde','galapagos','tortuga','77777777D');
/
INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000007',TO_DATE('24/12/2004','DD,MM,YYYY'),'gris','ruso','hamster','66666666D');

INSERT INTO PACIENTES(IDPACIENTE,FECHANAC,COLORPELO,RAZA,ESPECIE,DNI)
    VALUES('000000008',TO_DATE('24/12/2004','DD,MM,YYYY'),'marron','comun','conejo','66666666D');


--peticiones de cita

INSERT INTO PETICIONCITAS(OIDPETCITA,DNI,MOTIVO,FECHAINICIO,IDPACIENTE,TIPOCITA)
    VALUES(0,'99999999D','estornuda',TO_DATE('24/06/2019','DD,MM,YYYY'),'000000002','consulta');
/
INSERT INTO PETICIONCITAS(OIDPETCITA,DNI,MOTIVO,FECHAINICIO,IDPACIENTE,TIPOCITA)
    VALUES(1,'77777777D','fiebre',TO_DATE('14/06/2019','DD,MM,YYYY'),'000000004','consulta');
/
INSERT INTO PETICIONCITAS(OIDPETCITA,DNI,MOTIVO,FECHAINICIO,IDPACIENTE,TIPOCITA)
    VALUES(2,'77777777D','garrapatas',TO_DATE('20/06/2019','DD,MM,YYYY'),'000000005','consulta');
/
INSERT INTO PETICIONCITAS(OIDPETCITA,DNI,MOTIVO,FECHAINICIO,IDPACIENTE,TIPOCITA)
    VALUES(3,'66666666D','pelo alborotado',TO_DATE('09/06/2019','DD,MM,YYYY'),'000000008','peluqueria');
/

--- citas

INSERT INTO CITAS(OIDCITA, DNI, OIDGESTOR, FECHAINICIO, HORAINICIO,DURACIONMIN,COSTE)
    VALUES(0,'77777777D',1,TO_DATE('10/06/2019','DD,MM,YYYY'),'10:30',30,20);
/
INSERT INTO CITAS(OIDCITA, DNI, OIDGESTOR, FECHAINICIO, HORAINICIO,DURACIONMIN,COSTE)
    VALUES(1,'77777777D',1,TO_DATE('11/06/2019','DD,MM,YYYY'),'12:30',30,40);
/    
INSERT INTO CITAS(OIDCITA, DNI, OIDGESTOR, FECHAINICIO, HORAINICIO,DURACIONMIN,COSTE)
    VALUES(2,'66666666D',1,TO_DATE('11/06/2019','DD,MM,YYYY'),'10:30',60,100);
/
INSERT INTO CITAS(OIDCITA, DNI, OIDGESTOR, FECHAINICIO, HORAINICIO,DURACIONMIN,COSTE)
    VALUES(3,'99999999D',1,TO_DATE('15/06/2019','DD,MM,YYYY'),'17:30',25,20);
/