-- Create table
create table EDU_PARTICIPANTES_MAE
(
  cod_participante       VARCHAR2(12) not null,
  cod_tipo_documento     VARCHAR2(2),
  des_num_documento      VARCHAR2(12),
  des_nombres            VARCHAR2(100),
  des_ape_paterno        VARCHAR2(50),
  des_ape_materno        VARCHAR2(50),
  des_nombre_completo    VARCHAR2(200),
  cod_tipo_sexo          VARCHAR2(1),
  des_num_telefono       VARCHAR2(12),
  des_correo_electronico VARCHAR2(100),
  fec_registro           DATE default SYSDATE,
  ind_activo             VARCHAR2(1) default 1,
  aud_cod_usuario        VARCHAR2(15),
  aud_ip_maquina         VARCHAR2(15),
  aud_fec_registro       DATE default SYSDATE
);
-- Add comments to the columns 
comment on column EDU_PARTICIPANTES_MAE.cod_participante
  is 'Codigo del Participante YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_PARTICIPANTES_MAE.cod_tipo_documento
  is 'Codigo de Tipo de Documento';
comment on column EDU_PARTICIPANTES_MAE.des_num_documento
  is 'Numero de Documento';
comment on column EDU_PARTICIPANTES_MAE.des_nombres
  is 'Nombre del participante';
comment on column EDU_PARTICIPANTES_MAE.des_ape_paterno
  is 'Apellido Paterno';
comment on column EDU_PARTICIPANTES_MAE.des_ape_materno
  is 'Apellido Materno';
comment on column EDU_PARTICIPANTES_MAE.des_nombre_completo
  is 'Nombre completo';
comment on column EDU_PARTICIPANTES_MAE.cod_tipo_sexo
  is 'Tipo Sexo: 1-> MASCULINO, 2-> FEMENINO';
comment on column EDU_PARTICIPANTES_MAE.des_num_telefono
  is 'Numero de Telefono';
comment on column EDU_PARTICIPANTES_MAE.des_correo_electronico
  is 'Correo Electronico';
comment on column EDU_PARTICIPANTES_MAE.fec_registro
  is 'Fecha de Registro';
comment on column EDU_PARTICIPANTES_MAE.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_PARTICIPANTES_MAE.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_PARTICIPANTES_MAE.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_PARTICIPANTES_MAE.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EDU_PARTICIPANTES_MAE
  add constraint PK_EDU_PARTICIPANTES_MAE primary key (COD_PARTICIPANTE);
