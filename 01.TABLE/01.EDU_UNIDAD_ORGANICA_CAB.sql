-- Create table
create table EDU_UNIDAD_ORGANICA_CAB
(
  cod_unidad_organica_cab VARCHAR2(12) not null,
  cod_tipo_unidad         VARCHAR2(1) not null,
  des_unidad_organica     VARCHAR2(500),
  des_direccion           VARCHAR2(100),
  cod_clasificacion       VARCHAR2(2),
  fec_registro            DATE default SYSDATE,
  des_observacion         VARCHAR2(500),
  ind_activo              VARCHAR2(1) default 1,
  aud_cod_usuario         VARCHAR2(15),
  aud_ip_maquina          VARCHAR2(15),
  aud_fec_registro        DATE default SYSDATE
);
-- Add comments to the columns 
comment on column EDU_UNIDAD_ORGANICA_CAB.cod_unidad_organica_cab
  is 'Codigo de la unidad organica YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_UNIDAD_ORGANICA_CAB.cod_tipo_unidad
  is 'Tipo de la unidad Organica 1-> DEPARTAMENTO, 2-> ESCUELA';
comment on column EDU_UNIDAD_ORGANICA_CAB.des_unidad_organica
  is 'Descripción de la Unidad Organica';
comment on column EDU_UNIDAD_ORGANICA_CAB.des_direccion
  is 'Dirección de la unidad Organica';
comment on column EDU_UNIDAD_ORGANICA_CAB.cod_clasificacion
  is '01->Unidad Organica de Linea Tecnico Normativa, 02->Unidad Organica Tecnico Asistenciales, 03-> Escuelas de Excelencia';
comment on column EDU_UNIDAD_ORGANICA_CAB.fec_registro
  is 'Fecha de Registro';
comment on column EDU_UNIDAD_ORGANICA_CAB.des_observacion
  is 'Observacion del Registro';
comment on column EDU_UNIDAD_ORGANICA_CAB.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_UNIDAD_ORGANICA_CAB.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_UNIDAD_ORGANICA_CAB.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_UNIDAD_ORGANICA_CAB.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EDU_UNIDAD_ORGANICA_CAB
  add constraint PK_EDU_UNIDAD_ORGANICA_CAB primary key (COD_UNIDAD_ORGANICA_CAB, COD_TIPO_UNIDAD);
