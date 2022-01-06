-- Create table
create table EDU_CURSOS_CAB_HIST
(
  cod_curso                   VARCHAR2(12),
  cod_unidad                  VARCHAR2(12),
  cod_tipo_unidad             VARCHAR2(1),
  cod_unidad_det              VARCHAR2(8),
  cod_tipo_curso              VARCHAR2(1),
  des_nombre_curso            VARCHAR2(400),
  fec_realizacion             DATE,
  fec_inicio                  DATE,
  fec_fin                     DATE,
  fec_registro                DATE,
  cod_tipo_modalidad          VARCHAR2(1),
  num_total_horas             VARCHAR2(4),
  ind_visualizacion_horas     VARCHAR2(1),
  cod_estado                  VARCHAR2(1),
  des_motivo_anulacion        VARCHAR2(500),
  des_observacion             VARCHAR2(500),
  ind_activo                  VARCHAR2(1),
  aud_cod_usuario             VARCHAR2(15),
  aud_ip_maquina              VARCHAR2(15),
  aud_fec_registro            DATE,
  aud_cod_usuario_anula       VARCHAR2(15),
  aud_ip_maquina_anula        VARCHAR2(15),
  aud_fec_registro_anula      DATE,
  aud_cod_usuario_ultima_mod  VARCHAR2(15),
  aud_ip_maquina_ultima_mod   VARCHAR2(15),
  aud_fec_registro_ultima_mod DATE,
  fec_emision                 DATE,
  aud_cod_usuario_hist        VARCHAR2(15),
  aud_ip_maquina_hist         VARCHAR2(15),
  aud_fec_registro_hist       DATE,
  cod_tipo_horas              VARCHAR2(2),
  cod_enlace_fecha            VARCHAR2(2)
);
-- Add comments to the columns 
comment on column EDU_CURSOS_CAB_HIST.cod_curso
  is 'Codigo del Curso YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_CAB_HIST.cod_unidad
  is 'Codigo de la unidad organica YYYYMMDD + Codigo autogenerado de 4 digitos';
comment on column EDU_CURSOS_CAB_HIST.cod_tipo_unidad
  is 'Tipo de la unidad Organica 1-> DEPARTAMENTO, 2-> ESCUELA';
comment on column EDU_CURSOS_CAB_HIST.cod_unidad_det
  is 'Codigo de la Unidad Organica Det (Servicio)';
comment on column EDU_CURSOS_CAB_HIST.cod_tipo_curso
  is 'Tipo del Curso 1-> Curso, 2-> Taller';
comment on column EDU_CURSOS_CAB_HIST.des_nombre_curso
  is 'Nombre del Curso';
comment on column EDU_CURSOS_CAB_HIST.fec_realizacion
  is 'Fecha de realizacion del curso';
comment on column EDU_CURSOS_CAB_HIST.fec_inicio
  is 'Fecha de inicio del Curso';
comment on column EDU_CURSOS_CAB_HIST.fec_fin
  is 'Fecha de Fin del curso';
comment on column EDU_CURSOS_CAB_HIST.fec_registro
  is 'Fecha de Registro';
comment on column EDU_CURSOS_CAB_HIST.cod_tipo_modalidad
  is 'Tipo de Modalidad. 1-> Presencial, 2-> Virtual';
comment on column EDU_CURSOS_CAB_HIST.num_total_horas
  is 'Numero total de Horas';
comment on column EDU_CURSOS_CAB_HIST.ind_visualizacion_horas
  is 'Indicador: 1-> Con Visualizacion de Horas, 0-> Sin visualizacion de Horas';
comment on column EDU_CURSOS_CAB_HIST.cod_estado
  is 'Estado del curso: 1-> Abierto, 2-> Cerrado, 3-> Anulado';
comment on column EDU_CURSOS_CAB_HIST.des_motivo_anulacion
  is 'Descripcion del motivo de la anulacion';
comment on column EDU_CURSOS_CAB_HIST.des_observacion
  is 'Observacion del Curso';
comment on column EDU_CURSOS_CAB_HIST.ind_activo
  is '1-> Activo, 0-> Inactivo';
comment on column EDU_CURSOS_CAB_HIST.aud_cod_usuario
  is 'Campo Auditor: Codigo de Usuario';
comment on column EDU_CURSOS_CAB_HIST.aud_ip_maquina
  is 'Campo Auditor: IP maquina';
comment on column EDU_CURSOS_CAB_HIST.aud_fec_registro
  is 'Campo Auditor: Fecha de Registro';
comment on column EDU_CURSOS_CAB_HIST.aud_cod_usuario_anula
  is 'Campo Auditor: Codigo de Usuario Anulacion';
comment on column EDU_CURSOS_CAB_HIST.aud_ip_maquina_anula
  is 'Campo Auditor: IP maquina Anulacion';
comment on column EDU_CURSOS_CAB_HIST.aud_fec_registro_anula
  is 'Campo Auditor: Fecha de Registro Anulacion';
comment on column EDU_CURSOS_CAB_HIST.aud_cod_usuario_ultima_mod
  is 'Campo Auditor: Codigo de Usuario Ultima modificacion';
comment on column EDU_CURSOS_CAB_HIST.aud_ip_maquina_ultima_mod
  is 'Campo Auditor: IP maquina Ultima Modificacion';
comment on column EDU_CURSOS_CAB_HIST.aud_fec_registro_ultima_mod
  is 'Campo Auditor: Fecha de Registro Ultima Modificacion';
comment on column EDU_CURSOS_CAB_HIST.fec_emision
  is 'Fecha de Emisión del certificado';
comment on column EDU_CURSOS_CAB_HIST.aud_cod_usuario_hist
  is 'Campo Auditor: Codigo de Usuario Historico';
comment on column EDU_CURSOS_CAB_HIST.aud_ip_maquina_hist
  is 'Campo Auditor: IP maquina Historico';
comment on column EDU_CURSOS_CAB_HIST.aud_fec_registro_hist
  is 'Campo Auditor: Fecha de Registro Historico';
comment on column EDU_CURSOS_CAB_HIST.cod_tipo_horas
  is 'Código del tipo de horas: 01-> Pedagógicas, 02-> Cronológicas';
comment on column EDU_CURSOS_CAB_HIST.cod_enlace_fecha
  is 'Código para el enlace entre las fechas de Inicio y Fin: 01-> AL, 02-> Y';
