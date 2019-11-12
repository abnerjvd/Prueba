alter table empresa disable keys;
insert into empresa 
   (empresa_id,
    nombre,
    numero_identificacion,
    telefono_principal,
    correo_electronico_principal,
    provincia_id,
    canton_id,
    distrito_id)
 values
   (100,
    'Empresa Genérica',
    '1-123-123456',
    '555-5555',
    'correo@falso.com',
    1,
    101,
    101001);
alter table empresa enable keys;
alter table empresa auto_increment = 1000;


ALTER TABLE proyecto MODIFY fecha_final datetime null;

alter table proyecto disable keys;
insert into proyecto (
   proyecto_id,
   codigo_proyecto,
   nombre,
   fecha_inicio,
   fecha_final,
   fecha_limite,
   tipo,
   periodo_registro_id,
   proyecto_estado_id,
   sede_id,
   empresa_id)
values
   (100,
   'TEST-SP-0001',
   'Proyecto de Prueba',
   STR_TO_DATE('07/01/2019', '%d/%m/%Y'),
   null,
   STR_TO_DATE('01/01/2020', '%d/%m/%Y'),
   'empresa',
   9,
   100,
   100,
   100);
alter table proyecto enable keys;
alter table proyecto auto_increment = 800;



alter table persona disable keys;
insert into persona 
  (persona_id,
   numero_identificacion,
   nombre,
   primer_apellido,
   segundo_apellido,
   activo)
values
  (100,
   '1-1111-2222',
   'Juan',
   'Perez',
   'eras',
   true);
alter table persona enable keys;
alter table persona auto_increment = 1000;

alter table profesor disable keys;
insert into profesor (profesor_id,persona_id,activo) values (100, 100, true);
alter table profesor enable keys;
alter table profesor auto_increment = 1000;

alter table proyecto_comision disable keys;
insert into proyecto_comision 
  (proyecto_comision_id,
   fecha_inicio,
   fecha_final,
   profesor_id,
   proyecto_id,
   role_proyecto_id)
values
  (100,
   STR_TO_DATE('07/01/2019', '%d/%m/%Y'),
   STR_TO_DATE('07/01/2019', '%d/%m/%Y'),
   100,
   100,
   100);
alter table proyecto_comision enable keys;
alter table proyecto_comision auto_increment = 1000;

