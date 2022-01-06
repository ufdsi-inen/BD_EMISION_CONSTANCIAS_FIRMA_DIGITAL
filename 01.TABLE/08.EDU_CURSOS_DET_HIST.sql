-- Create table
create table EDU_CURSOS_DET_HIST
(
  cod_curso                   VARCHAR2(12) not null,
  cod_unidad                  VARCHAR2(12) not null,
  cod_tipo_unidad             VARCHAR2(1) not null,
  cod_participante            VARCHAR2(12) not null,
  cod_tipo_participante       VARCHAR2(1) not null,
  fec_registro                DATE default SYSDATE,
  des_motivo_anula            VARCHAR2(500),
  ind_envio_correo            VARCHAR2(1),
  ind_certificado             VARCHAR2(1) default 1,
  ind_firma_digital           VARCHAR2(1),
  ind_activo                  VARCHAR2(1) default 1,
  aud_cod_usuario             VARCHAR2(15),
  aud_ip_maquina              VARCHAR2(15),
  aud_fec_registro            DATE default SYSDATE,
  aud_cod_usuario_anula       VARCHAR2(15),
  aud_ip_maquina_anula        VARCHAR2(15),
  aud_fec_registro_anula      DATE,
  aud_cod_usuario_ultima_mod  VARCHAR2(15),
  aud_ip_maquina_ultima_mod   VARCHAR2(15),
  aud_fec_registro_ultima_mod DATE,
  num_secuencia               NUMBER,
  cod_anio_secuencia          VARCHAR2(4) default TO_CHAR(SYSDATE,'YYYY'),
  aud_cod_usuario_hist        VARCHAR2(15),
  aud_ip_maquina_hist         VARCHAR2(15),
  aud_fec_registro_hist       DATE default SYSDATE
);
-- Add comments to the columns 
comment on column EDU_CURSOS_DET_HIST.cod_curso
  is 'Codigo del Curso YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_DET_HIST.cod_unidad
  is 'Codigo de la unidad organica YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_DET_HIST.cod_tipo_unidad
  is 'Tipo de la unidad Organica 1-> DEPARTAMENTO, 2-> ESCUELA';
comment on column EDU_CURSOS_DET_HIST.cod_participante
  is 'Codigo del Participante YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_DET_HIST.cod_tipo_participante
  is 'Tipo de Participante. 1-> Participante, 2-> Ponente';
comment on column EDU_CURSOS_DET_HIST.fec_registro
  is 'Fecha de Registro';
comment on column EDU_CURSOS_DET_HIST.des_motivo_anula
  is 'Descripcion del motivo de la anulacion';
comment on column EDU_CURSOS_DET_HIST.ind_envio_correo
  is '1-> Se envio Correo, 0-> No se envio Correo';
comment on column EDU_CURSOS_DET_HIST.ind_certificado
  is '1-> Con Certificado, 0-> Sin Certificado';
comment on column EDU_CURSOS_DET_HIST.ind_firma_digital
  is '1-> Con firma, 0-> Sin Firma';
comment on column EDU_CURSOS_DET_HIST.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_CURSOS_DET_HIST.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_CURSOS_DET_HIST.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_CURSOS_DET_HIST.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
comment on column EDU_CURSOS_DET_HIST.aud_cod_usuario_anula
  is 'Campo Auditor: Codigo de Usuario Anulacion';
comment on column EDU_CURSOS_DET_HIST.aud_ip_maquina_anula
  is 'Campo Auditor: IP maquina Anulacion';
comment on column EDU_CURSOS_DET_HIST.aud_fec_registro_anula
  is 'Campo Auditor: Fecha de Registro Anulacion';
comment on column EDU_CURSOS_DET_HIST.aud_cod_usuario_ultima_mod
  is 'Campo Auditor: Codigo de Usuario Ultima modificacion';
comment on column EDU_CURSOS_DET_HIST.aud_ip_maquina_ultima_mod
  is 'Campo Auditor: IP maquina Ultima Modificacion';
comment on column EDU_CURSOS_DET_HIST.aud_fec_registro_ultima_mod
  is 'Campo Auditor: Fecha de Registro Ultima Modificacion';
comment on column EDU_CURSOS_DET_HIST.num_secuencia
  is 'Numero de secuencia';
comment on column EDU_CURSOS_DET_HIST.aud_cod_usuario_hist
  is 'Campo Auditor: Codigo de Usuario Historico';
comment on column EDU_CURSOS_DET_HIST.aud_ip_maquina_hist
  is 'Campo Auditor: IP maquina Historico';
comment on column EDU_CURSOS_DET_HIST.aud_fec_registro_hist
  is 'Campo Auditor: Fecha de Registro Historico';
