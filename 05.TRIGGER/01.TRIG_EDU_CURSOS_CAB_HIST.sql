CREATE OR REPLACE TRIGGER TRIG_EDU_CURSOS_CAB_HIST
 AFTER UPDATE ON EDU_CURSOS_CAB
 FOR EACH ROW
DECLARE
 /*******************************************************************************************************************
  TIPO             : TRIGGERS
  NOMBRE           : TRIG_EDU_CURSOS_CAB_HIST
  AUTOR            : PGONZALESC
  FECHA CREACION   : --
  MOTIVO           : Registro en la tabla EDU_CURSOS_CAB_HIST
  *******************************************************************************************************************/
BEGIN
    INSERT INTO EDU_CURSOS_CAB_HIST( COD_CURSO,
                                     COD_UNIDAD,
                                     COD_TIPO_UNIDAD,
                                     COD_UNIDAD_DET,
                                     COD_TIPO_CURSO,
                                     DES_NOMBRE_CURSO,
                                     FEC_REALIZACION,
                                     FEC_INICIO,
                                     FEC_FIN,
                                     FEC_REGISTRO,
                                     COD_ENLACE_FECHA,
                                     COD_TIPO_MODALIDAD,
                                     NUM_TOTAL_HORAS,
                                     COD_TIPO_HORAS,
                                     IND_VISUALIZACION_HORAS,
                                     COD_ESTADO,
                                     DES_MOTIVO_ANULACION,
                                     DES_OBSERVACION,
                                     IND_ACTIVO,
                                     AUD_COD_USUARIO,
                                     AUD_IP_MAQUINA,
                                     AUD_FEC_REGISTRO,
                                     AUD_COD_USUARIO_ANULA,
                                     AUD_IP_MAQUINA_ANULA,
                                     AUD_FEC_REGISTRO_ANULA,
                                     AUD_COD_USUARIO_ULTIMA_MOD,
                                     AUD_IP_MAQUINA_ULTIMA_MOD,
                                     AUD_FEC_REGISTRO_ULTIMA_MOD,
                                     FEC_EMISION,
                                     AUD_COD_USUARIO_HIST,
                                     AUD_IP_MAQUINA_HIST,
                                     AUD_FEC_REGISTRO_HIST)
                              VALUES(:old.COD_CURSO,
                                     :old.COD_UNIDAD,
                                     :old.COD_TIPO_UNIDAD,
                                     :old.COD_UNIDAD_DET,
                                     :old.COD_TIPO_CURSO,
                                     :old.DES_NOMBRE_CURSO,
                                     :old.FEC_REALIZACION,
                                     :old.FEC_INICIO,
                                     :old.FEC_FIN,
                                     :old.FEC_REGISTRO,
                                     :old.COD_ENLACE_FECHA,
                                     :old.COD_TIPO_MODALIDAD,
                                     :old.NUM_TOTAL_HORAS,
                                     :old.COD_TIPO_HORAS,
                                     :old.IND_VISUALIZACION_HORAS,
                                     :old.COD_ESTADO,
                                     :old.DES_MOTIVO_ANULACION,
                                     :old.DES_OBSERVACION,
                                     :old.IND_ACTIVO,
                                     :old.AUD_COD_USUARIO,
                                     :old.AUD_IP_MAQUINA,
                                     :old.AUD_FEC_REGISTRO,
                                     :old.AUD_COD_USUARIO_ANULA,
                                     :old.AUD_IP_MAQUINA_ANULA,
                                     :old.AUD_FEC_REGISTRO_ANULA,
                                     :old.AUD_COD_USUARIO_ULTIMA_MOD,
                                     :old.AUD_IP_MAQUINA_ULTIMA_MOD,
                                     :old.AUD_FEC_REGISTRO_ULTIMA_MOD,
                                     :old.FEC_EMISION,
                                     :new.AUD_COD_USUARIO,
                                     :new.AUD_IP_MAQUINA,
                                     :new.AUD_FEC_REGISTRO);
END;
