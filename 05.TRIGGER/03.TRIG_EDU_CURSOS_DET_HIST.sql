CREATE OR REPLACE TRIGGER TRIG_EDU_CURSOS_DET_HIST
 AFTER UPDATE ON EDU_CURSOS_DET
 FOR EACH ROW
DECLARE
 /*******************************************************************************************************************
  TIPO             : TRIGGERS
  NOMBRE           : TRIG_EDU_CURSOS_DET_HIST
  AUTOR            : PGONZALESC
  FECHA CREACION   : --
  MOTIVO           : Registro en la tabla EDU_CURSOS_DET_HIST
  *******************************************************************************************************************/
BEGIN
    INSERT INTO EDU_CURSOS_DET_HIST( COD_CURSO,
                                     COD_UNIDAD,
                                     COD_TIPO_UNIDAD,
                                     COD_PARTICIPANTE,
                                     COD_TIPO_PARTICIPANTE,
                                     FEC_REGISTRO,
                                     DES_MOTIVO_ANULA,
                                     IND_ENVIO_CORREO,
                                     IND_CERTIFICADO,
                                     IND_FIRMA_DIGITAL,
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
                                     NUM_SECUENCIA,
                                     COD_ANIO_SECUENCIA,
                                     AUD_COD_USUARIO_HIST,
                                     AUD_IP_MAQUINA_HIST,
                                     AUD_FEC_REGISTRO_HIST)
                              VALUES(:old.COD_CURSO,
                                     :old.COD_UNIDAD,
                                     :old.COD_TIPO_UNIDAD,
                                     :old.COD_PARTICIPANTE,
                                     :old.COD_TIPO_PARTICIPANTE,
                                     :old.FEC_REGISTRO,
                                     :old.DES_MOTIVO_ANULA,
                                     :old.IND_ENVIO_CORREO,
                                     :old.IND_CERTIFICADO,
                                     :old.IND_FIRMA_DIGITAL,
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
                                     :old.NUM_SECUENCIA,
                                     :old.COD_ANIO_SECUENCIA,
                                     :new.AUD_COD_USUARIO,
                                     :new.AUD_IP_MAQUINA,
                                     :new.AUD_FEC_REGISTRO);
END;
