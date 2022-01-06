-- Create table
create table EDU_CURSOS_MOV
(
  cod_curso             VARCHAR2(12) not null,
  cod_unidad            VARCHAR2(12) not null,
  cod_tipo_unidad       VARCHAR2(1) not null,
  cod_participante      VARCHAR2(12),
  cod_tipo_participante VARCHAR2(1),
  cod_tipo_movimiento   VARCHAR2(2),
  fec_registro          DATE default SYSDATE,
  ind_activo            VARCHAR2(1) default 1,
  aud_cod_usuario       VARCHAR2(15),
  aud_ip_maquina        VARCHAR2(15),
  aud_fec_registro      DATE default SYSDATE
);
-- Add comments to the columns 
comment on column EDU_CURSOS_MOV.cod_curso
  is 'Codigo del Curso YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_MOV.cod_unidad
  is 'Codigo de la unidad organica YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_MOV.cod_tipo_unidad
  is 'Tipo de la unidad Organica 1-> DEPARTAMENTO, 2-> ESCUELA';
comment on column EDU_CURSOS_MOV.cod_participante
  is 'Codigo del Participante YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_MOV.cod_tipo_participante
  is 'Tipo de Participante. 1-> Participante, 2-> Ponente';
comment on column EDU_CURSOS_MOV.cod_tipo_movimiento
  is 'Tipo de Movimiento: 01-> Firma Digital, 02 -> Envio correo, 03 -> Eliminar Participante, 04 -> Eliminar Curso, 05 -> Finalizar Curso';
comment on column EDU_CURSOS_MOV.fec_registro
  is 'Fecha de Registro';
comment on column EDU_CURSOS_MOV.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_CURSOS_MOV.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_CURSOS_MOV.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_CURSOS_MOV.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
