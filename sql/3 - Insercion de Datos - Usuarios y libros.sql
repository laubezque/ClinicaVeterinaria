DECLARE
OID_DICK INTEGER;
OID_CLARKE INTEGER;
OID_LESSING INTEGER;
OID_LEM INTEGER;
OID_BRADBURY INTEGER;
OID_ASIMOV INTEGER;
OID_HERBERT INTEGER;
OID_SAGAN INTEGER;
OID_GIBSON INTEGER;
OID_SIMMONS INTEGER;
OID_CARD INTEGER;
OID_ADAMS INTEGER;
OID_SIMAK INTEGER;
OID_NIVEN INTEGER;
OID_FORWARD INTEGER;
OID_STAPLEDON INTEGER;
OID_VERNE INTEGER;
OID_BRESTER INTEGER;
OID_VANCE INTEGER;
OID_ORWELL INTEGER;
OID_WELLS INTEGER;
OID_BESTER INTEGER;
OID_STOKER INTEGER;
OID_FOLLET INTEGER;
OID_GORDON INTEGER;
OID_LORCA INTEGER;
OID_SARAMAGO INTEGER;
OID_TOOLE INTEGER;

OID_ANDROIDE INTEGER;
OID_ODISEA INTEGER;
OID_CENTINELA INTEGER;
OID_CRONICAS INTEGER;
OID_SOLARIS INTEGER;
OID_FUNDACION INTEGER;
OID_ROBOT INTEGER;
OID_CANOPUS INTEGER;
OID_DUNE INTEGER;
OID_RAMA INTEGER;
OID_FIASCO INTEGER;
OID_FAHRENHEIT INTEGER;
OID_CONTACT INTEGER;
OID_VALIS INTEGER;
OID_NEUROMANTE INTEGER;
OID_HYPERION INTEGER;
OID_ENDER INTEGER;
OID_DIOSES INTEGER;
OID_CIBERIADA INTEGER;
OID_INFANCIA INTEGER;
OID_AUTOESTOPISTA INTEGER;
OID_TRANSITO INTEGER;
OID_MUNDOANILLO INTEGER;
OID_INVENCIBLE INTEGER;
OID_DRAGON INTEGER;
OID_UBIK INTEGER;
OID_SIRIO INTEGER;
OID_20000 INTEGER;
OID_ETERNIDAD INTEGER;
OID_ESTRELLAS INTEGER;
OID_TSCHAI INTEGER;
OID_DIARIOS INTEGER;
OID_1984 INTEGER;
OID_CASTILLO INTEGER;
OID_MAQUINA INTEGER;
OID_GUERRA INTEGER;
OID_CANTICOS INTEGER;
OID_FABULAS INTEGER;
OID_FERIA INTEGER;
OID_PAJA INTEGER;
OID_MUERTOS INTEGER;
OID_LUNA INTEGER;
OID_ISLA INTEGER;
OID_VUELTA INTEGER;
OID_GRANT INTEGER;
OID_DRAC INTEGER;
OID_PILARES INTEGER;
OID_CAIDA INTEGER;
OID_INVIERNO INTEGER;
OID_UMBRAL INTEGER;
OID_MEDICO INTEGER;
OID_NY INTEGER;
OID_CEGUERA INTEGER;
OID_MUERTE INTEGER;
OID_CONJURA INTEGER;

OID_JUAN INTEGER;
OID_JOSE INTEGER;
OID_MATILDE INTEGER;
OID_LUISA INTEGER;

OID_SEVILLA INTEGER;
OID_DOS_HERMANAS INTEGER;
NUM_SEVILLA INTEGER;
NUM_DOS_HERMANAS INTEGER;

OID_PRESTAMO_1 INTEGER;
OID_PRESTAMO_2 INTEGER;
OID_PRESTAMO_3 INTEGER;
OID_PRESTAMO_4 INTEGER;
OID_PRESTAMO_5 INTEGER;
OID_PRESTAMO_6 INTEGER;
OID_PRESTAMO_7 INTEGER;
OID_PRESTAMO_8 INTEGER;

OID_GENERO_CF INTEGER; 
OID_GENERO_NN INTEGER;
OID_GENERO_NH INTEGER;
OID_GENERO_NG INTEGER;
OID_GENERO_INF INTEGER;
OID_GENERO_TER INTEGER;
OID_GENERO_ENS INTEGER;
OID_GENERO_BIO INTEGER;
OID_GENERO_POE INTEGER;
OID_GENERO_HUM INTEGER;
OID_GENERO_AUTO INTEGER;
OID_GENERO_OTRO INTEGER;

BEGIN

INSERTAR_GENERO('Ciencia Ficci�n');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_CF FROM DUAL;
INSERTAR_GENERO('Novela Negra');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_NN FROM DUAL;
INSERTAR_GENERO('Novela Hist�rica');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_NH FROM DUAL;
INSERTAR_GENERO('Novela Gr�fica');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_NG FROM DUAL;
INSERTAR_GENERO('Infantil');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_INF FROM DUAL;
INSERTAR_GENERO('Terror');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_TER FROM DUAL;
INSERTAR_GENERO('Ensayo');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_ENS FROM DUAL;
INSERTAR_GENERO('Biograf�as');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_BIO FROM DUAL;
INSERTAR_GENERO('Poes�a');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_POE FROM DUAL;
INSERTAR_GENERO('Humor');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_HUM FROM DUAL;
INSERTAR_GENERO('Autoayuda');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_AUTO FROM DUAL;
INSERTAR_GENERO('Otro');
SELECT SEC_GENEROS_OID.CURRVAL INTO OID_GENERO_OTRO FROM DUAL;
COMMIT;

INSERTAR_AUTOR('Philip K.','Dick'); 
INSERTAR_LIBRO('�Sue�an los androides con ovejas el�ctricas?', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_DICK FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ANDROIDE FROM DUAL;
INSERTAR_AUTORIA(OID_DICK,OID_ANDROIDE);

INSERTAR_LIBRO('Valis', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_VALIS FROM DUAL;
INSERTAR_AUTORIA(OID_DICK,OID_VALIS);

INSERTAR_LIBRO('Ubik', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_UBIK FROM DUAL;
INSERTAR_AUTORIA(OID_DICK,OID_UBIK);

INSERTAR_LIBRO('El hombre del castillo', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CASTILLO FROM DUAL;
INSERTAR_AUTORIA(OID_DICK,OID_CASTILLO);

INSERTAR_AUTOR('Arthur C.','Clarke');
INSERTAR_LIBRO('2001 Una odisea espacial', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_CLARKE FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ODISEA FROM DUAL;
INSERTAR_AUTORIA(OID_CLARKE,OID_ODISEA);

INSERTAR_LIBRO('El centinela', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CENTINELA FROM DUAL;
INSERTAR_AUTORIA(OID_CLARKE,OID_CENTINELA);

INSERTAR_LIBRO('Cita con Rama', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_RAMA FROM DUAL;
INSERTAR_AUTORIA(OID_CLARKE,OID_RAMA);

INSERTAR_LIBRO('El fin de la infancia', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_INFANCIA FROM DUAL;
INSERTAR_AUTORIA(OID_CLARKE,OID_INFANCIA);

INSERTAR_LIBRO('C�nticos de la lejana Tierra', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CANTICOS FROM DUAL;
INSERTAR_AUTORIA(OID_CLARKE,OID_CANTICOS);

INSERTAR_AUTOR('Doris','Lessing');
INSERTAR_LIBRO('Canopus in Argos', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_LESSING FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CANOPUS FROM DUAL;
INSERTAR_AUTORIA(OID_LESSING,OID_CANOPUS);

INSERTAR_AUTOR('Stanislav','Lem');
INSERTAR_LIBRO('Solaris', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_LEM FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_SOLARIS FROM DUAL;
INSERTAR_AUTORIA(OID_LEM,OID_SOLARIS);

INSERTAR_LIBRO('Fiasco', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_FIASCO FROM DUAL;
INSERTAR_AUTORIA(OID_LEM,OID_FIASCO);

INSERTAR_LIBRO('Ciberiada', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CIBERIADA FROM DUAL;
INSERTAR_AUTORIA(OID_LEM,OID_CIBERIADA);

INSERTAR_LIBRO('Diarios de las estrellas', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_DIARIOS FROM DUAL;
INSERTAR_AUTORIA(OID_LEM,OID_DIARIOS);

INSERTAR_LIBRO('F�bulas de robots', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_FABULAS FROM DUAL;
INSERTAR_AUTORIA(OID_LEM,OID_FABULAS);

INSERTAR_AUTOR('Ray','Bradbury');
INSERTAR_LIBRO('Las cr�nicas marcianas', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_BRADBURY FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CRONICAS FROM DUAL;
INSERTAR_AUTORIA(OID_BRADBURY,OID_CRONICAS);

INSERTAR_LIBRO('Fahrenheit 451',OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_FAHRENHEIT FROM DUAL;
INSERTAR_AUTORIA(OID_BRADBURY,OID_FAHRENHEIT);

INSERTAR_LIBRO('La feria de las tinieblas', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_FERIA FROM DUAL;
INSERTAR_AUTORIA(OID_BRADBURY,OID_FERIA);

INSERTAR_AUTOR('Isaac','Asimov');
INSERTAR_LIBRO('Fundaci�n', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_ASIMOV FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_FUNDACION FROM DUAL;
INSERTAR_AUTORIA(OID_ASIMOV,OID_FUNDACION);

INSERTAR_LIBRO('Yo, Robot', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ROBOT FROM DUAL;
INSERTAR_AUTORIA(OID_ASIMOV,OID_ROBOT);

INSERTAR_LIBRO('Los propios dioses', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_DIOSES FROM DUAL;
INSERTAR_AUTORIA(OID_ASIMOV,OID_DIOSES);

INSERTAR_LIBRO('El fin de la eternidad', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ETERNIDAD FROM DUAL;
INSERTAR_AUTORIA(OID_ASIMOV,OID_ETERNIDAD);

INSERTAR_AUTOR('Julio','Verne');
INSERTAR_LIBRO('20000 leguas de viaje submarino', OID_GENERO_OTRO);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_VERNE FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_20000 FROM DUAL;
INSERTAR_AUTORIA(OID_VERNE,OID_20000);

INSERTAR_LIBRO('De la Tierra a la Luna', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_LUNA FROM DUAL;
INSERTAR_AUTORIA(OID_VERNE,OID_LUNA);

INSERTAR_LIBRO('La isla Misteriosa', OID_GENERO_OTRO);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ISLA FROM DUAL;
INSERTAR_AUTORIA(OID_VERNE,OID_ISLA);

INSERTAR_LIBRO('La vuelta al mundo en 80 d�as', OID_GENERO_OTRO);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_VUELTA FROM DUAL;
INSERTAR_AUTORIA(OID_VERNE,OID_VUELTA);

INSERTAR_LIBRO('Los hijos del capit�n Grant', OID_GENERO_OTRO);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_GRANT FROM DUAL;
INSERTAR_AUTORIA(OID_VERNE,OID_GRANT);

INSERTAR_AUTOR('George','Orwell');
INSERTAR_LIBRO('1984', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_ORWELL FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_1984 FROM DUAL;
INSERTAR_AUTORIA(OID_ORWELL,OID_1984);

INSERTAR_AUTOR('Herbert G.','Wells');
INSERTAR_LIBRO('La m�quina del tiempo', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_WELLS FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_MAQUINA FROM DUAL;
INSERTAR_AUTORIA(OID_WELLS,OID_MAQUINA);

INSERTAR_LIBRO('La guerra de los mundos', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_GUERRA FROM DUAL;
INSERTAR_AUTORIA(OID_WELLS,OID_GUERRA);

INSERTAR_AUTOR('Alfred','Bester');
INSERTAR_LIBRO('La estrellas de mi destino', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_BESTER FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ESTRELLAS FROM DUAL;
INSERTAR_AUTORIA(OID_BESTER,OID_ESTRELLAS);

INSERTAR_AUTOR('Fran','Herbert');
INSERTAR_LIBRO('Dune', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_HERBERT FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_DUNE FROM DUAL;
INSERTAR_AUTORIA(OID_HERBERT,OID_DUNE);

INSERTAR_AUTOR('Douglas','Adams');
INSERTAR_LIBRO('La gu�a del autoestopista gal�ctico', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_ADAMS FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_AUTOESTOPISTA FROM DUAL;
INSERTAR_AUTORIA(OID_ADAMS,OID_AUTOESTOPISTA);

INSERTAR_AUTOR('Jack','Vance');
INSERTAR_LIBRO('Ciclo de Tschai', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_VANCE FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_TSCHAI FROM DUAL;
INSERTAR_AUTORIA(OID_VANCE,OID_TSCHAI);

INSERTAR_AUTOR('Olaf','Stapledon');
INSERTAR_LIBRO('Sirio', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_STAPLEDON FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_SIRIO FROM DUAL;
INSERTAR_AUTORIA(OID_STAPLEDON,OID_SIRIO);

INSERTAR_AUTOR('Robert L.','Forward');
INSERTAR_LIBRO('Huevo de drag�n', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_FORWARD FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_DRAGON FROM DUAL;
INSERTAR_AUTORIA(OID_FORWARD,OID_DRAGON);

INSERTAR_AUTOR('Larry','Niven');
INSERTAR_LIBRO('Mundoanillo', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_NIVEN FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_MUNDOANILLO FROM DUAL;
INSERTAR_AUTORIA(OID_NIVEN,OID_MUNDOANILLO);

INSERTAR_LIBRO('La paja en el ojo de dios', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_PAJA FROM DUAL;
INSERTAR_AUTORIA(OID_NIVEN,OID_PAJA);

INSERTAR_AUTOR('Clifford D.','Simak');
INSERTAR_LIBRO('Estaci�n de tr�nsito', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_SIMAK FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_TRANSITO FROM DUAL;
INSERTAR_AUTORIA(OID_SIMAK,OID_TRANSITO);

INSERTAR_AUTOR('Carl','Sagan');
INSERTAR_LIBRO('Contact', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_SAGAN FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CONTACT FROM DUAL;
INSERTAR_AUTORIA(OID_SAGAN,OID_CONTACT);

INSERTAR_AUTOR('William','Gibson');
INSERTAR_LIBRO('Neuromante', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_GIBSON FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_NEUROMANTE FROM DUAL;
INSERTAR_AUTORIA(OID_GIBSON,OID_NEUROMANTE);

INSERTAR_AUTOR('Dan','Simmons');
INSERTAR_LIBRO('Hyperi�n', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_SIMMONS FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_HYPERION FROM DUAL;
INSERTAR_AUTORIA(OID_SIMMONS,OID_HYPERION);

INSERTAR_AUTOR('Orson S.','Card');
INSERTAR_LIBRO('El juego de Ender', OID_GENERO_CF);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_CARD FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_ENDER FROM DUAL;
INSERTAR_AUTORIA(OID_CARD,OID_ENDER);

INSERTAR_LIBRO('La voz de los muertos', OID_GENERO_CF);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_MUERTOS FROM DUAL;
INSERTAR_AUTORIA(OID_CARD,OID_MUERTOS);

INSERTAR_AUTOR('Bram', 'Stoker');
INSERTAR_LIBRO('Dr�cula', OID_GENERO_TER);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_STOKER FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_DRAC FROM DUAL;
INSERTAR_AUTORIA(OID_STOKER,OID_DRAC);

INSERTAR_AUTOR('Ken', 'Follet');
INSERTAR_LIBRO('Los pilares de la tierra', OID_GENERO_NH);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_FOLLET FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_PILARES FROM DUAL;
INSERTAR_AUTORIA(OID_FOLLET,OID_PILARES);

INSERTAR_LIBRO('La ca�da de los gigantes', OID_GENERO_NH);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CAIDA FROM DUAL;
INSERTAR_AUTORIA(OID_FOLLET,OID_CAIDA);

INSERTAR_LIBRO('El invierno del mundo', OID_GENERO_NH);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_INVIERNO FROM DUAL;
INSERTAR_AUTORIA(OID_FOLLET,OID_INVIERNO);

INSERTAR_LIBRO('El umbral de la eternidad', OID_GENERO_NH);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_UMBRAL FROM DUAL;
INSERTAR_AUTORIA(OID_FOLLET,OID_UMBRAL);
COMMIT;

INSERTAR_AUTOR('Federico', 'Garc�a Lorca');
INSERTAR_LIBRO('Poeta en Nueva York', OID_GENERO_POE);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_LORCA FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_NY FROM DUAL;
INSERTAR_AUTORIA(OID_LORCA,OID_NY);

INSERTAR_AUTOR('Jos�', 'Saramago');
INSERTAR_LIBRO('Ensayo sobre la ceguera', OID_GENERO_ENS);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_SARAMAGO FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CEGUERA FROM DUAL;
INSERTAR_AUTORIA(OID_SARAMAGO,OID_CEGUERA);

INSERTAR_LIBRO('Las intermitencias de la muerte', OID_GENERO_TER);
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_MUERTE FROM DUAL;
INSERTAR_AUTORIA(OID_SARAMAGO,OID_MUERTE);

INSERTAR_AUTOR('Noah', 'Gordon');
INSERTAR_LIBRO('El m�dico', OID_GENERO_NH);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_GORDON FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_MEDICO FROM DUAL;
INSERTAR_AUTORIA(OID_SARAMAGO,OID_CEGUERA);

INSERTAR_AUTOR('John K.', 'Toole');
INSERTAR_LIBRO('La Conjura de los necios', OID_GENERO_HUM);
SELECT SEC_AUTORES_OID.CURRVAL INTO OID_TOOLE FROM DUAL;
SELECT SEC_LIBROS_OID.CURRVAL INTO OID_CONJURA FROM DUAL;
INSERTAR_AUTORIA(OID_TOOLE,OID_CONJURA);
COMMIT;


INSERTAR_MUNICIPIO('Dos Hermanas',41);
SELECT SEC_MUNICIPIOS_OID.CURRVAL INTO OID_DOS_HERMANAS FROM DUAL;
INSERTAR_MUNICIPIO('Sevilla',41);
SELECT SEC_MUNICIPIOS_OID.CURRVAL INTO OID_SEVILLA FROM DUAL;
COMMIT;

INSERTAR_USUARIO('11111111A','Juan','P�rez Mart�n','Avenida de la Buhaira, 1',OID_SEVILLA, '1/1/1980', 'juan@us.es', 'qwerty', 'PAS' );
OID_JUAN := SEC_USUARIOS_OID.CURRVAL;
INSERTAR_USUARIO('11111112B','Josefa','L�pez Consuegra','Avenida de la Palmera, 24',OID_SEVILLA, '1/1/1980', 'josefa@us.es', '123456', 'PDI' );
OID_JOSE := SEC_USUARIOS_OID.CURRVAL;
INSERTAR_USUARIO('11111113C','Matilde','Arjona G�mez','Plaza de la Constituci�n, 3',OID_DOS_HERMANAS, '1/1/1980', 'matilde@us.es', 'matilde', 'ALUMNO' );
OID_MATILDE := SEC_USUARIOS_OID.CURRVAL;
INSERTAR_USUARIO('11111114D','Luisa','Garc�a Mar�n','Calle Santa Mar�a Magdalena, 11',OID_DOS_HERMANAS,'1/1/1980', 'luisa@us.es', 'qwerty', 'PDI' );
OID_LUISA := SEC_USUARIOS_OID.CURRVAL;
COMMIT;

INSERTAR_GENERO_USUARIO(OID_GENERO_CF, '11111111A');
INSERTAR_GENERO_USUARIO(OID_GENERO_NN, '11111111A');
INSERTAR_GENERO_USUARIO(OID_GENERO_NH, '11111111A');
INSERTAR_GENERO_USUARIO(OID_GENERO_NG, '11111112B');
INSERTAR_GENERO_USUARIO(OID_GENERO_INF, '11111113C');
INSERTAR_GENERO_USUARIO(OID_GENERO_TER, '11111113C');
INSERTAR_GENERO_USUARIO(OID_GENERO_ENS, '11111113C');
INSERTAR_GENERO_USUARIO(OID_GENERO_NH, '11111114D');
INSERTAR_GENERO_USUARIO(OID_GENERO_OTRO, '11111114D');
COMMIT;


INSERTAR_PRESTAMO('10012017','10072017',OID_ANDROIDE,OID_JUAN);
COMMIT;
OID_PRESTAMO_1 := SEC_PRESTAMOS_OID.CURRVAL;
--INSERTAR_DEVOLUCION('14022014',OID_PRESTAMO_1);
INSERTAR_PRESTAMO('24022014','27022014',OID_ANDROIDE,OID_JUAN);
INSERTAR_PRESTAMO('24022014','27022014',OID_ROBOT,OID_JUAN);

INSERTAR_PRESTAMO('11022014','14022014',OID_ODISEA,OID_JOSE);
COMMIT;
OID_PRESTAMO_2 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_RENOVACION('14022014','21022014',OID_PRESTAMO_2);
INSERTAR_RENOVACION('21022014','27022014',OID_PRESTAMO_2);

INSERTAR_PRESTAMO('24022014','27022014',OID_CENTINELA,OID_JUAN);
COMMIT;
OID_PRESTAMO_3 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_DEVOLUCION('27022014',OID_PRESTAMO_3);

INSERTAR_PRESTAMO('11022014','14022014',OID_CANOPUS,OID_MATILDE);
COMMIT;
OID_PRESTAMO_4 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_RENOVACION('14022014','21022014',OID_PRESTAMO_4);
INSERTAR_DEVOLUCION('21022014',OID_PRESTAMO_4);
INSERTAR_PRESTAMO('10022014','14022014',OID_ROBOT,OID_MATILDE);
COMMIT;
OID_PRESTAMO_5 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_DEVOLUCION('14022014',OID_PRESTAMO_5);

INSERTAR_PRESTAMO('03032014','07032014',OID_CANOPUS,OID_LUISA);
INSERTAR_PRESTAMO('10022014','14022014',OID_CRONICAS,OID_LUISA);
COMMIT;
OID_PRESTAMO_6 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_DEVOLUCION('14022014',OID_PRESTAMO_6);
INSERTAR_PRESTAMO('24022014','27022014',OID_CRONICAS,OID_LUISA);

INSERTAR_PRESTAMO('10022014','14022014',OID_FUNDACION,OID_MATILDE);
COMMIT;
OID_PRESTAMO_7 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_DEVOLUCION('21022014',OID_PRESTAMO_7);

INSERTAR_PRESTAMO('17022014','21022014',OID_FUNDACION,OID_LUISA);
COMMIT;
OID_PRESTAMO_8 := SEC_PRESTAMOS_OID.CURRVAL;
INSERTAR_DEVOLUCION('21022014',OID_PRESTAMO_8);

INSERTAR_PRESTAMO('24032014','27032014',OID_FUNDACION,OID_MATILDE);

COMMIT;

END;