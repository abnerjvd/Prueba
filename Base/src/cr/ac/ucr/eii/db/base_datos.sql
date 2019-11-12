# Mauricio Zamora Hernández
# Trabajos Finales de Graduación
# EII

create database industrial;
use industrial;

create table pais (
   pais_id                  int             not null auto_increment comment "Llave primaria del país",
   codigo                   varchar(31)     not null                comment "Código del país",
   nombre                   varchar(255)    not null                comment "Nombre del país",
   constraint pais_pk primary key (pais_id),
   constraint pais_uq_codigo unique (codigo),
   constraint pais_uq_nombre unique (nombre)
) engine=innodb comment="Esta tabla contiene la información de países";

create table sede (
   sede_id                  int             not null auto_increment,
   nombre                   varchar(255)    not null,
   abreviatura              varchar(8)      not null,
   constraint sede_pk primary key (sede_id),
   constraint sede_uq_nombre unique (nombre)
) engine=innodb comment="";

create table provincia (
   provincia_id             int             not null auto_increment,
   nombre                   varchar(255)    not null,
   constraint provincia_pk primary key (provincia_id),
   constraint provincia_uq_nombre unique (nombre)
) engine=innodb comment="";

create table canton (
   canton_id                int             not null auto_increment,
   nombre                   varchar(255)    not null,
   provincia_id             int             not null,
   constraint canton_pk primary key (canton_id),
   constraint canton_uq_nombre unique (nombre, provincia_id),
   key canton_key_provincia_id (provincia_id),
   constraint canton_fk_provincia_id foreign key (provincia_id) references provincia (provincia_id) 
   on delete no action on update cascade
) engine=innodb comment="";

create table distrito (
   distrito_id              int             not null auto_increment,
   nombre                   varchar(255)    not null,
   canton_id                int             not null,
   constraint distrito_pk primary key (distrito_id),
   constraint distrito_uq_nombre unique (nombre,canton_id),
   key distrito_key_canton_id (canton_id),
   constraint distrito_fk_canton_id foreign key (canton_id) references canton (canton_id) 
   on delete no action on update cascade
) engine=innodb comment="";

create table empresa (
   empresa_id               int             not null auto_increment,
   nombre                   varchar(255)    not null,
   numero_identificacion    varchar(255)    not null,
   telefono_principal       varchar(32)     not null,
   correo_electronico_principal varchar(32) not null,
   provincia_id             int                 null,
   canton_id                int                 null,
   distrito_id              int                 null,
   constraint empresa_pk primary key (empresa_id),
   constraint empresa_uq_nombre unique (nombre),
   key empresa_key_provincia_id (provincia_id),
   constraint empresa_fk_provincia_id foreign key (provincia_id) references provincia (provincia_id) 
   on delete no action on update cascade,
   key empresa_key_canton_id (canton_id),
   constraint empresa_fk_canton_id foreign key (canton_id) references canton (canton_id) 
   on delete no action on update cascade,
   key empresa_key_distrito_id (distrito_id),
   constraint empresa_fk_distrito_id foreign key (distrito_id) references distrito (distrito_id) 
   on delete no action on update cascade
) engine=innodb comment="";

create table area_tematica (
   area_tematica_id         int             not null auto_increment,
   nombre                   varchar(255)    not null,
   constraint area_tematica_pk primary key (area_tematica_id),
   constraint area_tematica_uq_nombre unique (nombre)
) engine=innodb comment="";

create table grado_academico (
   grado_academico_id       int             not null auto_increment,
   nombre                   varchar(255)    not null,
   escala                   int             not null default 0 comment "Para usar como criterio de ordenamiento",
   abreviatura_femenina     varchar(8)      not null,
   abreviatura_masculino    varchar(8)      not null,
   constraint grado_academico_pk primary key (grado_academico_id),
   constraint grado_academico_uq_nombre unique (nombre)
) engine=innodb comment="Grado académico de las personas";

create table institucion_academica (
   institucion_academica_id int             not null auto_increment,
   nombre                   varchar(255)    not null,
   pais_id                  int             not null,
   constraint institucion_academica_pk primary key (institucion_academica_id),
   constraint institucion_academica_uq_nombre unique (nombre),
   key institucion_academica_key_pais (pais_id),
   constraint institucion_academica_fk_pais_id foreign key (pais_id) references pais (pais_id) 
   on delete no action on update cascade
) engine=innodb comment="";

create table persona (
   persona_id               int             not null auto_increment,
   numero_identificacion    varchar(255)    not null comment "Número de identificación a nivel legal",
   nombre                   varchar(255)    not null,
   primer_apellido          varchar(255)    not null,
   segundo_apellido         varchar(255)    not null,
   activo                   bit             not null,
   constraint persona_pk primary key (persona_id),
   constraint persona_uq_numero_identificacion unique (numero_identificacion)
) engine=innodb comment="Información básico de cualquier persona que tenga relación con la aplicación, podrían ser usuario, profesores, estudiantes, etc.";

create table persona_area_tematica (
   persona_area_tematica_id int             not null auto_increment,
   persona_id               int             not null,
   area_tematica_id         int             not null,
   constraint persona_area_tematica_pk primary key (persona_area_tematica_id),
   constraint persona_area_tematica_uq_control unique (persona_id, area_tematica_id),
   key persona_area_tematica_key_persona (persona_id),
   constraint persona_area_tematica_fk_persona_id foreign key (persona_id) references persona (persona_id) 
   on delete no action on update cascade,
   key persona_area_tematica_key_area_tematica (area_tematica_id),
   constraint persona_area_tematica_fk_area_tematica_id foreign key (area_tematica_id) references area_tematica (area_tematica_id) 
   on delete no action on update cascade
) engine=innodb comment="Información básico de cualquier persona que tenga relación con la aplicación, podrían ser usuario, profesores, estudiantes, etc.";

create table persona_grados_academicos (
   persona_grados_academicos_id int         not null auto_increment,
   grado_academico_id       int             not null,
   institucion_academica_id int             not null,
   anno                     numeric(4,0)    not null,
   observacion              varchar(255)        null comment "Información adicional al grado / título",
   constraint persona_grados_academicos_pk primary key (persona_grados_academicos_id),
   key persona_grados_academicos_key_grado_academico (grado_academico_id),
   constraint persona_grados_academicos_fk_grado_academico_id foreign key (grado_academico_id) references grado_academico (grado_academico_id) 
   on delete no action on update cascade,
   key persona_grados_academicos_key_institucion_academica (institucion_academica_id),
   constraint persona_grados_academicos_fk_institucion_academica_id foreign key (institucion_academica_id) references institucion_academica (institucion_academica_id) 
   on delete no action on update cascade
) engine=innodb comment="Información básico de cualquier persona que tenga relación con la aplicación, podrían ser usuario, profesores, estudiantes, etc.";

create table usuario (
   usuario_id               int             not null auto_increment,
   nombre_usuario           varchar(20)     not null,
   activo                   bit             not null,
   persona_id               int                 null,
   constraint usuario_pk primary key (usuario_id),
   constraint usuario_uq_persona_id unique (persona_id),
   constraint usuario_uq_nombre_usuario unique (nombre_usuario),
   key usuario_key_persona (persona_id),
   constraint usuario_fk_persona_id foreign key (persona_id) references persona (persona_id) 
   on delete no action on update cascade
) engine=innodb comment="Usuario para autenticación en el sistema";

create table role (
   role_id                  int             not null auto_increment,
   nombre                   varchar(255)    not null,
   constraint role_pk primary key (role_id),
   constraint role_uq_nombre unique (nombre)
) engine=innodb comment="Rol de nivel de seguridad";

create table role_elemento (
   role_elemento_id         int             not null auto_increment,
   nombre                   varchar(255)    not null,
   constraint role_elemento_pk primary key (role_elemento_id),
   constraint role_elemento_uq_nombre unique (nombre)
) engine=innodb comment="Cada elemento dentro del sistema que va ser controlado el acceso";

create table role_acceso (
   role_acceso_id           int             not null auto_increment,
   tipo_acceso              enum('lectura_escritura', 'lectura', 'escritura') not null,
   role_id                  int             not null,
   role_elemento_id         int             not null,
   constraint role_acceso_pk primary key (role_acceso_id),
   constraint role_acceso_uq_control unique (role_id, role_elemento_id)
) engine=innodb comment="Control de acceso a cada elemento según el rol";

create table usuario_role (
   usuario_role_id          int             not null auto_increment,
   usuario_id               int             not null,
   role_id                  int             not null,
   constraint usuario_role_pk primary key (usuario_role_id),

   constraint usuario_role_uq_control unique (role_id, usuario_id)
) engine=innodb comment="Define el rol(es) que puede tener cada usuario";

create table binary_data (
    binary_data_id          int             not null auto_increment,
    descripcion             varchar(255)    not null,
    bin_data                longblob,
    filename                varchar(255)    not null,
    filesize                int             not null,
    filetype                varchar(255)    not null,
    fecha_registro          datetime        not null default now(),
    usuario_id              int             not null,
    constraint binary_data_pk primary key (binary_data_id)
) engine=innodb comment="En esta tabla se guardarán todos los archivos binarios (documentos, imagenes, fotos)";

create table comentario (
    comentario_id           int             not null auto_increment,
    descripcion             varchar(255)    not null,
    fecha_registro          datetime        not null default now(),
    constraint comentario_pk primary key (comentario_id)
) engine=innodb comment="Tabla maestra de comentarios";

create table estudiante (
   estudiante_id            int             not null auto_increment,
   carne                    varchar(32)     not null,
   activo                   bit             not null,
   persona_id               int             not null,
   sede_id                  int             not null,
   constraint estudiante_pk primary key (estudiante_id),

   constraint estudiante_uq_carne unique (carne),

   key estudiante_key_persona_id (persona_id),
   constraint estudiante_fk_persona_id foreign key (persona_id) references persona (persona_id) 
   on delete no action on update cascade
) engine=innodb;

create table profesor (
   profesor_id              int             not null auto_increment,
   persona_id               int             not null,
   activo                   bit             not null,
   constraint profesor_pk primary key (profesor_id),
   key profesor_key_persona_id (persona_id),
   constraint profesor_fk_persona_id foreign key (persona_id) references persona (persona_id) 
   on delete no action on update cascade
) engine=innodb;

create table contraparte (
   contraparte_id           int             not null auto_increment,
   activo                   bit             not null,
   persona_id               int             not null,
   empresa_id               int             not null,
   constraint contraparte_pk primary key (contraparte_id),

   key contraparte_key_persona_id (persona_id),
   constraint contraparte_fk_persona_id foreign key (persona_id) references persona (persona_id) 
   on delete no action on update cascade,

   key contraparte_key_empresa_id (empresa_id),
   constraint contraparte_fk_empresa_id foreign key (empresa_id) references empresa (empresa_id) 
   on delete no action on update cascade
) engine=innodb;

create table periodo (
   periodo_id               int             not null auto_increment,
   nombre                   varchar(6)      not null,
   semestre                 int             not null,
   anno                     numeric(4,0)    not null,
   fecha_inicio             datetime        not null,
   fecha_final              datetime        not null,
   fecha_recepcion_docs     datetime        not null,
   constraint periodo_pk primary key (periodo_id),
   constraint periodo_uq_nombre unique (nombre),
   constraint periodo_uq_control unique (semestre, anno)
) engine=innodb comment="";

create table role_proyecto (
   role_proyecto_id         int             not null auto_increment,
   nombre                   varchar(255)    not null,
   constraint role_proyecto_pk primary key (role_proyecto_id),
   constraint role_proyecto_uq_nombre unique (nombre)
) engine=innodb comment="Rol dentro del proyecto";

create table proyecto_estado (
   proyecto_estado_id       int             not null auto_increment,
   nombre                   varchar(255)    not null,
   constraint proyecto_estado_pk primary key (proyecto_estado_id),
   constraint proyecto_estado_uq_nombre unique (nombre)
) engine=innodb comment="Estados del proyecto";

create table proyecto_estado_transicion (
   proyecto_estado_transicion_id int        not null auto_increment,
   proyecto_estado_id_inicial    int        not null,
   proyecto_estado_id_final      int        not null,
   constraint proyecto_estado_pk primary key (proyecto_estado_transicion_id)
) engine=innodb comment="Estados del proyecto";

create table proyecto (
   proyecto_id              int             not null auto_increment,
   codigo_proyecto          varchar(255)    not null,
   nombre                   varchar(255)    not null,
   fecha_inicio             datetime        not null,
   fecha_final              datetime            null,
   fecha_limite             datetime        not null,
   tipo                     enum('empresa', 'emprendimiento', 'no definido') not null default 'no definido',
   periodo_registro_id      int             not null,
   proyecto_estado_id       int             not null,
   sede_id                  int             not null,
   empresa_id               int             not null,
   constraint proyecto_pk primary key (proyecto_id),

   key proyecto_key_periodo_registro_id (periodo_registro_id),
   constraint proyecto_fk_periodo_registro_id foreign key (periodo_registro_id) references periodo (periodo_id) 
   on delete no action on update cascade,

   key proyecto_key_sede_id (sede_id),
   constraint proyecto_fk_sede_id foreign key (sede_id) references sede (sede_id) 
   on delete no action on update cascade,

   key proyecto_key_proyecto_estado_id (proyecto_estado_id),
   constraint proyecto_fk_proyecto_estado_id foreign key (proyecto_estado_id) references proyecto_estado (proyecto_estado_id) 
   on delete no action on update cascade,

   key proyecto_key_empresa_id (empresa_id),
   constraint proyecto_fk_empresa_id foreign key (empresa_id) references empresa (empresa_id) 
   on delete no action on update cascade
) engine=innodb comment="";

create table proyecto_estudiante (
   proyecto_estudiante_id   int             not null auto_increment,
   fecha_inicio             datetime        not null,
   fecha_final              datetime            null,
   estudiante_id            int             not null,
   proyecto_id              int             not null,
   constraint proyecto_estudiante_pk primary key (proyecto_estudiante_id),

   key proyecto_estudiante_key_proyecto_id (proyecto_id),
   constraint proyecto_estudiante_fk_proyecto_id foreign key (proyecto_id) references proyecto (proyecto_id)
   on delete no action on update cascade,

   key proyecto_estudiante_key_estudiante_id (estudiante_id),
   constraint proyecto_estudiante_fk_estudiante_id foreign key (estudiante_id) references estudiante (estudiante_id)
   on delete no action on update cascade
) engine=innodb comment="";

create table proyecto_comision (
   proyecto_comision_id     int             not null auto_increment,
   fecha_inicio             datetime        not null,
   fecha_final              datetime            null,
   profesor_id              int             not null,
   proyecto_id              int             not null,
   role_proyecto_id         int             not null,

   constraint proyecto_comision_pk primary key (proyecto_comision_id),

   key proyecto_comision_key_role_proyecto_id (role_proyecto_id),
   constraint proyecto_comision_fk_role_proyecto_id foreign key (role_proyecto_id) references role_proyecto (role_proyecto_id)
   on delete no action on update cascade,

   key proyecto_comision_key_proyecto_id (proyecto_id),
   constraint proyecto_comision_fk_proyecto_id foreign key (proyecto_id) references proyecto (proyecto_id)
   on delete no action on update cascade,

   key proyecto_comision_key_profesor_id (profesor_id),
   constraint proyecto_comision_fk_profesor_id foreign key (profesor_id) references profesor (profesor_id)
   on delete no action on update cascade
) engine=innodb comment="";

create table proyecto_contraparte (
   proyecto_contraparte_id  int             not null auto_increment,
   fecha_inicio             datetime        not null,
   fecha_final              datetime            null,
   contraparte_id           int             not null,
   constraint proyecto_contraparte_pk primary key (proyecto_contraparte_id),

   key proyecto_contraparte_key_contraparte_id (contraparte_id),
   constraint proyecto_contraparte_fk_contraparte_id foreign key (contraparte_id) references contraparte (contraparte_id)
   on delete no action on update cascade
) engine=innodb comment="";

create table proyecto_bitacora (
   proyecto_bitacora_id     int             not null auto_increment,
   fecha_registro           datetime        not null default now(),
   comentario_id            int             not null,
   binary_data_id           int                 null,
   constraint proyecto_bitacora_pk primary key (proyecto_bitacora_id),

   key proyecto_bitacora_key_comentario_id (comentario_id),
   constraint proyecto_bitacora_fk_comentario_id foreign key (comentario_id) references comentario (comentario_id)
   on delete no action on update cascade,
   key proyecto_bitacora_key_binary_data_id (binary_data_id),
   constraint proyecto_bitacora_fk_binary_data_id foreign key (binary_data_id) references binary_data (binary_data_id)
   on delete no action on update cascade
) engine=innodb comment="";

# aca empiezan las tablas nuestras

create table clientes(
    id_cliente		int				not null auto_increment,
    nombre		varchar(75)			not null,
    lead_time           int					not null,
    contacto	varchar(75)			not null,
    cedula		varchar(30)			not null,
    telefono	varchar(30)			not null,
    correo		varchar(75)			not null,
    direccion	varchar(255)		not null,
    constraint cliente_pk primary key (id_cliente),
    constraint cliente_uq unique (nombre)

) engine = innodb comment="Esta tabla contiene la información de clientes.";

create table proveedores(
    id_prov		int 			not null auto_increment,
    nombre		varchar(75)		not null,
    MOQ			int 			not null,
    lead_time	int				not null,
contacto	varchar(75)		not null,
cedula		varchar(30)		not null,
telefono	varchar(30)		not null,
correo		varchar(75)		not null,
direccion	varchar(255)	not null,
constraint proveedor_pk primary key (id_prov),
constraint proveedor_uq unique (nombre)
) engine = innodb comment = "Esta tabla contiene la información de proveedores.";

create table materia_prima (
id_mp			int 				not null auto_increment,
nombre			varchar(75)			not null,
descripcion		varchar(255),
precio_unit		numeric(15,2)		not null,
id_proveedor	int					not null,
constraint mp_pk primary key(id_mp),
key mp_idprov (id_proveedor),
constraint mp_idprov_fk foreign key(id_proveedor) references proveedores(id_prov)
on delete no action on update cascade
)engine = innodb comment= "Esta tabla contiene la información de la materia prima.";

create table productos (
id_prod			int 				not null auto_increment,
nombre			varchar(75)			not null,
descripcion		varchar(255),
costo_unit		numeric(15,2) 		not null,
precio_unit		numeric(15,2)		not null,
constraint productos_pk primary key(id_prod)
)engine = innodb comment = "Esta tabla contiene la información de productos.";

create table bom(
id_bom 		int		not null auto_increment,
id_producto			int 	not null,
id_mp				int		not null,
cantidad			int		not null,
constraint bom_pk primary key (id_bom),
key bom_idprod (id_producto),
constraint bom_prod_fk foreign key(id_producto) references productos(id_prod)
on delete no action on update cascade,
key bom_idmp (id_producto),
constraint bom_mp_fk foreign key(id_mp) references materia_prima(id_mp)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene información del BOM de cada producto.";



create table compras(
id_compra		int				not null auto_increment,
id_proveedor	int				not null,
fecha_compra	datetime		not null default now(),
fecha_entrega 	datetime		not null default now(),
metodo_cc		varchar(10)		not null, 
plazo			varchar(20)		not null,
metodo_pago		varchar(15)		not null,
subtotal		numeric(15,2)	not null,
impuesto		numeric(15,2)	not null default 0,
total			numeric(15,2) 	not null,
constraint compras_pk primary key(id_compra),
key compras_proveedor (id_proveedor),
constraint compras_prov_fk foreign key(id_proveedor) references proveedores(id_prov)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene información de las compras a proveedores.";

create table detalles_compras(
id_detallecompra	int				not null auto_increment,
id_compra			int				not null,
id_mp				int				not null,
precio_unit			numeric(15,2)	not null,
cantidad			int 			not null,
subtotal			numeric(15,2)	not null,
desc_unit			numeric(15,2) 	not null default 0,
total				numeric(15,2) 	not null,
constraint detallecompras_pk primary key(id_detallecompra),
key detallecompras_id (id_compra),
constraint detallecompras_orden_fk foreign key (id_compra) references compras(id_compra)
on delete no action on update cascade,
key detallecompras_producto(id_mp),
constraint detallecompras_mp_fk foreign key (id_mp) references materia_prima(id_mp)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene detalles sobre las compras de materia prima.";

create table salidas_mp(
id_salidamp		int				not null auto_increment,
id_mp			int				not null,
cantidad 		int				not null,
id_compra			int				not null,
destino			varchar(75)		not null,
fecha			datetime		not null default now(),
constraint salidasmp_pk primary key(id_salidamp),
key salidasmp_id (id_mp),
constraint salidasmp_fk foreign key(id_mp) references materia_prima(id_mp)
on delete no action on update cascade,
key salidasmp_compra (id_compra),
constraint salidasmp_compra_fk foreign key(id_compra) references compras(id_compra)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene información de las salidas de materia prima.";


create table utilidades(
id_utilidad		int				not null auto_increment,
id_producto		int				not null,
util_bruta		numeric(15,2)	not null,
porc_mub		numeric(15,2)	not null,
impuestos		numeric(15,2)	not null,
util_neta		numeric(15,2)	not null,
porc_mun		numeric(15,2)	not null,
constraint utilidades_pk primary key(id_utilidad),
key utilidades_prod (id_producto),
constraint utilidades_prod_fk foreign key(id_producto) references productos(id_prod)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene información de las ventas.";

create table prod_terminado(
lote			int			not null,
id_prod			int			not null,
cantidad		int 		not null,
presentacion	varchar(25)	not null,
ubicacion		varchar(50)		not null,
listo			boolean 	not null,
constraint pt_pk primary key(lote),
key pt_prod (id_prod),
constraint pt_prod_fk foreign key(id_prod) references productos(id_prod)
on delete no action on update cascade

)engine = innodb comment = "Esta tabla contiene información de las entradas de producto terminado.";


create table ventas(
id_venta		int				not null auto_increment,
id_cliente		int				not null,
fecha_venta		datetime		not null default now(),
fecha_entrega 	datetime		not null default now(),
metodo_cc		varchar(10)		not null, 
plazo			varchar(20)		not null,
metodo_pago		varchar(15)		not null,
subtotal		numeric(15,2)	not null,
impuesto		numeric(15,2)	not null default 0,
total			numeric(15,2) 	not null,
constraint ventas_pk primary key(id_venta),
key ventas_cliente (id_cliente),
constraint ventas_cliente_fk foreign key(id_cliente) references clientes(id_cliente)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene información de las ventas.";

create table detalles_ventas(
id_detalleventa	int				not null auto_increment,
id_venta		int				not null,
id_producto		int				not null,
lote			int				not null,
precio_unit		numeric(15,2)	not null,
cantidad		int 			not null,
subtotal		numeric(15,2)	not null,
desc_unit		numeric(15,2) 	not null default 0,
total			numeric(15,2) 	not null,
constraint detalleventas_pk primary key(id_detalleventa),
key detalleventas_id (id_venta),
constraint detalleventas_id_fk foreign key (id_venta) references ventas(id_venta)
on delete no action on update cascade,
key detalleventas_producto(id_producto),
constraint detalleventas_producto_fk foreign key (id_producto) references productos(id_prod)
on delete no action on update cascade,
key detalleventas_lote (lote),
constraint detalleventas_lote_fk foreign key (lote) references prod_terminado(lote)
on delete no action on update cascade
)engine = innodb comment = "Esta tabla contiene detalles sobre las ventas.";

create table demand_planner(
año		int			not null,
unid_tiempo			varchar(15)		not null,
periodo				int				not null,
demanda_dt			numeric(15,2)	not null,
demanda_desest		numeric(15,2)	not null,
dd_dt				numeric(15,2)	not null,
factores			numeric(15,2)	not null,
pronostico			numeric(15,2)	not null,
error_				numeric(15,2)	not null,
madt				numeric(15,2)	not null,
porc_error			numeric(3,2)	not null,
mapet				numeric(15,2)	not null,
tst					numeric(15,2)	not null
)engine = innodb comment = "Esta tabla contiene información de la planeación de demanda.";

