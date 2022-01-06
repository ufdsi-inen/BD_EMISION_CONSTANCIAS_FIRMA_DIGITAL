-- Create table
create table EDU_UNIDAD_ORGANICA_DET
(
  cod_unidad_organica_cab VARCHAR2(12) not null,
  cod_tipo_unidad         VARCHAR2(1) not null,
  cod_servicio            VARCHAR2(8) not null,
  des_servicio            VARCHAR2(500),
  fec_registro            DATE default SYSDATE,
  des_observacion         VARCHAR2(500),
  ind_activo              VARCHAR2(1) default 1,
  aud_cod_usuario         VARCHAR2(15),
  aud_ip_maquina          VARCHAR2(15),
  aud_fec_registro        DATE default SYSDATE
);
-- Add comments to the columns 
comment on column EDU_UNIDAD_ORGANICA_DET.cod_unidad_organica_cab
  is 'Codigo de la unidad organica YYYY + Codigo autogenerado de 4 digitos';
comment on column EDU_UNIDAD_ORGANICA_DET.cod_tipo_unidad
  is 'Tipo de la unidad Organica 1-> DEPARTAMENTO, 2-> ESCUELA';
comment on column EDU_UNIDAD_ORGANICA_DET.cod_servicio
  is 'Codigo del servicio';
comment on column EDU_UNIDAD_ORGANICA_DET.des_servicio
  is 'Descripcion del servicio';
comment on column EDU_UNIDAD_ORGANICA_DET.fec_registro
  is 'Fecha de Registro';
comment on column EDU_UNIDAD_ORGANICA_DET.des_observacion
  is 'Observacion del Registro';
comment on column EDU_UNIDAD_ORGANICA_DET.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_UNIDAD_ORGANICA_DET.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_UNIDAD_ORGANICA_DET.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_UNIDAD_ORGANICA_DET.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EDU_UNIDAD_ORGANICA_DET
  add constraint PK_EDU_UNIDAD_ORGANICA_DET primary key (COD_UNIDAD_ORGANICA_CAB, COD_TIPO_UNIDAD, COD_SERVICIO);
alter table EDU_UNIDAD_ORGANICA_DET
  add constraint FK_EDU_UNIDAD_ORGANICA_DET foreign key (COD_UNIDAD_ORGANICA_CAB, COD_TIPO_UNIDAD)
  references EDU_UNIDAD_ORGANICA_CAB (COD_UNIDAD_ORGANICA_CAB, COD_TIPO_UNIDAD);
