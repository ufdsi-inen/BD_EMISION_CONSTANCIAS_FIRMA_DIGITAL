CREATE OR REPLACE TRIGGER TRIG_EDU_PARTICIPANTES_MAE_HIST
 AFTER UPDATE ON EDU_PARTICIPANTES_MAE
 FOR EACH ROW
DECLARE
 /*******************************************************************************************************************
  TIPO             : TRIGGERS
  NOMBRE           : TRIG_EDU_PARTICIPANTES_MAE_HIST
  AUTOR            : PGONZALESC
  FECHA CREACION   : --
  MOTIVO           : Registro en la tabla EDU_PARTICIPANTES_MAE_HIST
  *******************************************************************************************************************/
BEGIN
    INSERT INTO EDU_PARTICIPANTES_MAE_HIST( COD_PARTICIPANTE,
                                            COD_TIPO_DOCUMENTO,
                                            DES_NUM_DOCUMENTO,
                                            DES_NOMBRES,
                                            DES_APE_PATERNO,
                                            DES_APE_MATERNO,
                                            DES_NOMBRE_COMPLETO,
                                            COD_TIPO_SEXO,
                                            DES_NUM_TELEFONO,
                                            DES_CORREO_ELECTRONICO,
                                            FEC_REGISTRO,
                                            IND_ACTIVO,
                                            AUD_COD_USUARIO,
                                            AUD_IP_MAQUINA,
                                            AUD_FEC_REGISTRO,
                                            AUD_COD_USUARIO_HIST,
                                            AUD_IP_MAQUINA_HIST,
                                            AUD_FEC_REGISTRO_HIST)
                                     VALUES(:old.COD_PARTICIPANTE,
                                            :old.COD_TIPO_DOCUMENTO,
                                            :old.DES_NUM_DOCUMENTO,
                                            :old.DES_NOMBRES,
                                            :old.DES_APE_PATERNO,
                                            :old.DES_APE_MATERNO,
                                            :old.DES_NOMBRE_COMPLETO,
                                            :old.COD_TIPO_SEXO,
                                            :old.DES_NUM_TELEFONO,
                                            :old.DES_CORREO_ELECTRONICO,
                                            :old.FEC_REGISTRO,
                                            :old.IND_ACTIVO,
                                            :old.AUD_COD_USUARIO,
                                            :old.AUD_IP_MAQUINA,
                                            :old.AUD_FEC_REGISTRO,
                                            :new.AUD_COD_USUARIO,
                                            :new.AUD_IP_MAQUINA,
                                            :new.AUD_FEC_REGISTRO);
END;
