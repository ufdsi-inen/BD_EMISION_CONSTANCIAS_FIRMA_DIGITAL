-- Create table
create table EDU_CURSOS_CORREO_HIST
(
  cod_curso              VARCHAR2(12) not null,
  cod_unidad             VARCHAR2(12) not null,
  cod_tipo_unidad        VARCHAR2(1) not null,
  cod_participante       VARCHAR2(12) not null,
  cod_tipo_participante  VARCHAR2(1) not null,
  des_secuencial         NUMBER not null,
  des_correo_electronico VARCHAR2(100),
  des_correo_cc          VARCHAR2(500),
  cod_usuario_envio      VARCHAR2(15),
  fec_registro           DATE,
  des_observacion        VARCHAR2(200),
  ind_activo             VARCHAR2(1) default '1',
  aud_cod_usuario        VARCHAR2(15),
  aud_ip_maquina         VARCHAR2(15),
  aud_fec_registro       DATE default SYSDATE
);
-- Add comments to the columns 
comment on column EDU_CURSOS_CORREO_HIST.cod_curso
  is 'Codigo del Curso YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_CORREO_HIST.cod_unidad
  is 'Codigo de la unidad organica YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_CORREO_HIST.cod_tipo_unidad
  is 'Tipo de la unidad Organica 1-> DEPARTAMENTO, 2-> ESCUELA';
comment on column EDU_CURSOS_CORREO_HIST.cod_participante
  is 'Codigo del Participante YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_CORREO_HIST.cod_tipo_participante
  is 'Tipo de Participante. 1-> Participante, 2-> Ponente';
comment on column EDU_CURSOS_CORREO_HIST.des_secuencial
  is 'Secuencial de envío de correo';
comment on column EDU_CURSOS_CORREO_HIST.des_correo_electronico
  is 'Correo del Paticipante';
comment on column EDU_CURSOS_CORREO_HIST.des_correo_cc
  is 'Correos de copia';
comment on column EDU_CURSOS_CORREO_HIST.cod_usuario_envio
  is 'Usuario que envía el correo';
comment on column EDU_CURSOS_CORREO_HIST.fec_registro
  is 'Fecha del envío del correo';
comment on column EDU_CURSOS_CORREO_HIST.des_observacion
  is 'Observacion';
comment on column EDU_CURSOS_CORREO_HIST.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_CURSOS_CORREO_HIST.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_CURSOS_CORREO_HIST.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_CURSOS_CORREO_HIST.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EDU_CURSOS_CORREO_HIST
  add constraint PK_EDU_CURSOS_CORREO_HIST primary key (COD_CURSO, COD_UNIDAD, COD_TIPO_UNIDAD, COD_PARTICIPANTE, COD_TIPO_PARTICIPANTE, DES_SECUENCIAL);
alter table EDU_CURSOS_CORREO_HIST
  add constraint FK_EDU_CURSOS_CORREO_HIST foreign key (COD_CURSO, COD_UNIDAD, COD_TIPO_UNIDAD, COD_PARTICIPANTE, COD_TIPO_PARTICIPANTE)
  references EDU_CURSOS_DET (COD_CURSO, COD_UNIDAD, COD_TIPO_UNIDAD, COD_PARTICIPANTE, COD_TIPO_PARTICIPANTE);
