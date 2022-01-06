create or replace package pkg_edu_sgc is

     FUNCTION SF_SEC_COD_CURSO_CAB
     RETURN VARCHAR2;

     PROCEDURE SP_INSERT_CURSO_CAB(
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_unidad_det        in  EDU_CURSOS_CAB.COD_UNIDAD_DET%TYPE,
        pvi_cod_tipo_curso        in  EDU_CURSOS_CAB.COD_TIPO_CURSO%TYPE,
        pvi_des_nombre_curso      in  EDU_CURSOS_CAB.DES_NOMBRE_CURSO%TYPE,
        pvi_fec_realizacion       in  varchar2,
        pvi_fec_inicio            in  varchar2,
        pvi_fec_fin               in  varchar2,
        pvi_fec_emision           in  varchar2,
        pvi_cod_enlace_fecha      in  EDU_CURSOS_CAB.COD_ENLACE_FECHA%TYPE,
        pvi_cod_tipo_modalidad    in  EDU_CURSOS_CAB.COD_TIPO_MODALIDAD%TYPE,
        pvi_num_horas             in  EDU_CURSOS_CAB.NUM_TOTAL_HORAS%TYPE,
        pvi_cod_tipo_horas        in  EDU_CURSOS_CAB.COD_TIPO_HORAS%TYPE,
        pvi_ind_visualizacion     in  EDU_CURSOS_CAB.IND_VISUALIZACION_HORAS%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     FUNCTION SF_SEC_COD_SERVICIO( pvi_cod_unidad_organica_cab in EDU_UNIDAD_ORGANICA_DET.COD_UNIDAD_ORGANICA_CAB%TYPE,
                                   pvi_cod_tipo_unidad         in EDU_UNIDAD_ORGANICA_DET.COD_TIPO_UNIDAD%TYPE
     )
     RETURN VARCHAR2;

     PROCEDURE SP_INSERT_SERVICIO(
        pvi_cod_unidad            in  EDU_UNIDAD_ORGANICA_DET.COD_UNIDAD_ORGANICA_CAB%TYPE,
        pvi_cod_tipo_unidad       in  EDU_UNIDAD_ORGANICA_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_des_servicio          in  EDU_UNIDAD_ORGANICA_DET.DES_SERVICIO%TYPE,
        pvi_cod_usuario           in  EDU_UNIDAD_ORGANICA_DET.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_UNIDAD_ORGANICA_DET.AUD_IP_MAQUINA%TYPE,
        pdo_cod_servicio          out varchar2,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     PROCEDURE SP_ANULAR_CURSO(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     PROCEDURE SP_GET_PARTICIPANTE(
        pvi_cod_tipo_documento    in  varchar2,
        pvi_des_num_documento     in  varchar2,
        pdo_cur_data_participante out sys_refcursor,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     FUNCTION SF_SEC_COD_PARTICIPANTE
     RETURN VARCHAR2;

     PROCEDURE SP_INSERT_PARTICIPANTE(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_tipo_documento    in  varchar2,
        pvi_des_num_documento     in  varchar2,
        pvi_des_ape_paterno       in  EDU_PARTICIPANTES_MAE.DES_APE_PATERNO%TYPE,
        pvi_des_ape_materno       in  EDU_PARTICIPANTES_MAE.DES_APE_MATERNO%TYPE,
        pvi_des_nombres           in  EDU_PARTICIPANTES_MAE.DES_NOMBRES%TYPE,
        pvi_cod_tipo_sexo         in  EDU_PARTICIPANTES_MAE.COD_TIPO_SEXO%TYPE,
        pvi_des_correo            in  EDU_PARTICIPANTES_MAE.DES_CORREO_ELECTRONICO%TYPE,
        pvi_cod_tipo              in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_usuario           in  EDU_PARTICIPANTES_MAE.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_PARTICIPANTES_MAE.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     PROCEDURE SP_ANULAR_PARTICIPANTE(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_PARTICIPANTES_MAE.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     PROCEDURE SP_FINALIZAR_CURSO(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );

     PROCEDURE SP_UPDATE_IND_FIRMA_DIGITAL(
        pvi_cod_curso             in  EDU_CURSOS_DET.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_DET.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_DET.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_DET.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );
     
     FUNCTION SF_NUM_SECUENCIA_CONSTANCIA( pvi_cod_curso             in EDU_CURSOS_DET.COD_CURSO%TYPE,
                                           pvi_cod_unidad            in EDU_UNIDAD_ORGANICA_DET.COD_UNIDAD_ORGANICA_CAB%TYPE,
                                           pvi_cod_tipo_unidad       in EDU_UNIDAD_ORGANICA_DET.COD_TIPO_UNIDAD%TYPE,
                                           pvi_cod_participante      in EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
                                           pvi_cod_tipo_participante in EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE
     )
     RETURN VARCHAR2;
     
     FUNCTION SF_DES_TOTAL_HORAS( pvi_total_horas in EDU_CURSOS_DET.COD_CURSO%TYPE )
     RETURN VARCHAR2;
     
     PROCEDURE SP_UPDATE_IND_ENVIO_CORREO (
        pvi_cod_curso             in  EDU_CURSOS_DET.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_DET.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_des_correo            in  EDU_CURSOS_CORREO_HIST.DES_CORREO_ELECTRONICO%TYPE,
        pvi_des_correo_cc         in  EDU_CURSOS_CORREO_HIST.DES_CORREO_CC%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_DET.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_DET.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );
     
     PROCEDURE SP_INSERT_MOVIMIENTO ( 
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_tipo_movimiento   in  EDU_CURSOS_MOV.COD_TIPO_MOVIMIENTO%TYPE,
        pvi_cod_usuario           in  EDU_UNIDAD_ORGANICA_DET.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_UNIDAD_ORGANICA_DET.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );
     
     PROCEDURE SP_UPDATE_CURSO_CAB(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_tipo_curso        in  EDU_CURSOS_CAB.COD_TIPO_CURSO%TYPE,
        pvi_des_nombre_curso      in  EDU_CURSOS_CAB.DES_NOMBRE_CURSO%TYPE,
        pvi_fec_realizacion       in  varchar2,
        pvi_fec_inicio            in  varchar2,
        pvi_fec_fin               in  varchar2,
        pvi_fec_emision           in  varchar2,
        pvi_cod_enlace_fecha      in  EDU_CURSOS_CAB.COD_ENLACE_FECHA%TYPE, --@02
        pvi_cod_tipo_modalidad    in  EDU_CURSOS_CAB.COD_TIPO_MODALIDAD%TYPE,
        pvi_num_horas             in  EDU_CURSOS_CAB.NUM_TOTAL_HORAS%TYPE,
        pvi_cod_tipo_horas        in  EDU_CURSOS_CAB.COD_TIPO_HORAS%TYPE,
        pvi_ind_visualizacion     in  EDU_CURSOS_CAB.IND_VISUALIZACION_HORAS%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );
     
     PROCEDURE SP_UPDATE_PARTICIPANTE(
        pvi_cod_curso             in  EDU_CURSOS_DET.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_DET.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_tipo_documento    in  EDU_PARTICIPANTES_MAE.COD_TIPO_DOCUMENTO%TYPE,
        pvi_des_num_documento     in  EDU_PARTICIPANTES_MAE.DES_NUM_DOCUMENTO%TYPE,
        pvi_ape_paterno           in  EDU_PARTICIPANTES_MAE.DES_APE_PATERNO%TYPE,
        pvi_ape_materno           in  EDU_PARTICIPANTES_MAE.DES_APE_MATERNO%TYPE,
        pvi_des_nombres           in  EDU_PARTICIPANTES_MAE.DES_NOMBRES%TYPE,
        pvi_cod_tipo_sexo         in  EDU_PARTICIPANTES_MAE.COD_TIPO_SEXO%TYPE,
        pvi_des_correo            in  EDU_PARTICIPANTES_MAE.DES_CORREO_ELECTRONICO%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );
     
     FUNCTION SF_SEC_COD_SECUENCIAL_ENVIO_CORREO( 
        pvi_cod_curso             in  EDU_CURSOS_CORREO_HIST.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CORREO_HIST.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CORREO_HIST.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_CORREO_HIST.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_CORREO_HIST.COD_TIPO_PARTICIPANTE%TYPE
     )
     RETURN VARCHAR2;
            
     PROCEDURE SP_INSERT_ENVIO_CORREO(
        pvi_cod_curso             in  EDU_CURSOS_CORREO_HIST.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CORREO_HIST.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CORREO_HIST.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_CORREO_HIST.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_CORREO_HIST.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_des_correo            in  EDU_CURSOS_CORREO_HIST.DES_CORREO_ELECTRONICO%TYPE,
        pvi_des_correo_cc         in  EDU_CURSOS_CORREO_HIST.DES_CORREO_CC%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CORREO_HIST.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CORREO_HIST.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
     );
end;
/
CREATE OR REPLACE PACKAGE BODY pkg_edu_sgc AS
  /*******************************************************************************************************************
  TIPO             : FUNCTION
  NOMBRE           : SF_SEC_COD_CURSO_CAB
  AUTOR            : PGONZALESC
  FECHA CREACION   : 04/12/2020
  MOTIVO           : RETORNA EL ULTIMO CODIGO DE CURSO
  *******************************************************************************************************************/
  FUNCTION SF_SEC_COD_CURSO_CAB
  RETURN VARCHAR2 IS
    ls_cod_curso  EDU_CURSOS_CAB.COD_CURSO%TYPE;
  begin

    SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') || '' ||
           LPAD(NVL(MAX(SUBSTR(C.COD_CURSO, 9, 4)), 0) + 1, 4, '0')
    INTO ls_cod_curso
    FROM EDU_CURSOS_CAB C
    WHERE TRUNC(C.FEC_REGISTRO) = TRUNC(SYSDATE);

    RETURN ls_cod_curso;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      ls_cod_curso := '';
      RETURN ls_cod_curso;
  end;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_INSERT_CURSO_CAB
  AUTOR            : PGONZALESC
  FECHA CREACION   : 04/12/2020
  MOTIVO           : Registro de un nuevo Curso
  *******************************************************************************************************************/
  PROCEDURE SP_INSERT_CURSO_CAB(
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_unidad_det        in  EDU_CURSOS_CAB.COD_UNIDAD_DET%TYPE,
        pvi_cod_tipo_curso        in  EDU_CURSOS_CAB.COD_TIPO_CURSO%TYPE,
        pvi_des_nombre_curso      in  EDU_CURSOS_CAB.DES_NOMBRE_CURSO%TYPE,
        pvi_fec_realizacion       in  varchar2,
        pvi_fec_inicio            in  varchar2,
        pvi_fec_fin               in  varchar2,
        pvi_fec_emision           in  varchar2,
        pvi_cod_enlace_fecha      in  EDU_CURSOS_CAB.COD_ENLACE_FECHA%TYPE,
        pvi_cod_tipo_modalidad    in  EDU_CURSOS_CAB.COD_TIPO_MODALIDAD%TYPE,
        pvi_num_horas             in  EDU_CURSOS_CAB.NUM_TOTAL_HORAS%TYPE,
        pvi_cod_tipo_horas        in  EDU_CURSOS_CAB.COD_TIPO_HORAS%TYPE,
        pvi_ind_visualizacion     in  EDU_CURSOS_CAB.IND_VISUALIZACION_HORAS%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2 )
  IS
    ls_cod_curso varchar2(12);
  BEGIN

    ls_cod_curso := PKG_EDU_SGC.SF_SEC_COD_CURSO_CAB;

    INSERT INTO EDU_CURSOS_CAB( COD_CURSO,
                                COD_UNIDAD,
                                COD_TIPO_UNIDAD,
                                COD_UNIDAD_DET,
                                COD_TIPO_CURSO,
                                DES_NOMBRE_CURSO,
                                FEC_REALIZACION,
                                FEC_INICIO,
                                FEC_FIN,
                                FEC_EMISION,
                                COD_ENLACE_FECHA,
                                COD_TIPO_MODALIDAD,
                                NUM_TOTAL_HORAS,
                                COD_TIPO_HORAS,
                                IND_VISUALIZACION_HORAS,
                                AUD_COD_USUARIO,
                                AUD_IP_MAQUINA)
    VALUES( ls_cod_curso,
            pvi_cod_unidad,
            pvi_cod_tipo_unidad,
            pvi_cod_unidad_det,
            pvi_cod_tipo_curso,
            pvi_des_nombre_curso,
            to_date(pvi_fec_realizacion, 'DD/MM/YYYY'),
            to_date(pvi_fec_inicio, 'DD/MM/YYYY'),
            to_date(pvi_fec_fin, 'DD/MM/YYYY'),
            to_date(pvi_fec_emision, 'DD/MM/YYYY'),
            pvi_cod_enlace_fecha, --@02
            pvi_cod_tipo_modalidad,
            pvi_num_horas,
            pvi_cod_tipo_horas,
            pvi_ind_visualizacion,
            pvi_cod_usuario,
            pvi_ip_maquina );

    pdo_cod_error := '1';
    pdo_des_error := 'OK';

    COMMIT;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '100';
         pdo_des_error := 'SP_INSERT_CURSO_CAB: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '-1';
         pdo_des_error := 'SP_INSERT_CURSO_CAB: Error al registrar el curso ' || SQLERRM;
    ROLLBACK;
  END;

  /*******************************************************************************************************************
  TIPO             : FUNCTION
  NOMBRE           : SF_SEC_COD_CURSO_CAB
  AUTOR            : PGONZALESC
  FECHA CREACION   : 04/12/2020
  MOTIVO           : RETORNA EL ULTIMO CODIGO DE SERVICIO
  *******************************************************************************************************************/
  FUNCTION SF_SEC_COD_SERVICIO( pvi_cod_unidad_organica_cab in EDU_UNIDAD_ORGANICA_DET.COD_UNIDAD_ORGANICA_CAB%TYPE,
                                pvi_cod_tipo_unidad         in EDU_UNIDAD_ORGANICA_DET.COD_TIPO_UNIDAD%TYPE
  )
  RETURN VARCHAR2 IS
    ls_cod_servicio  EDU_UNIDAD_ORGANICA_DET.COD_SERVICIO%TYPE;
  begin

    SELECT TO_CHAR(SYSDATE, 'YYYY') || '' ||
           LPAD(NVL(MAX(SUBSTR(D.COD_SERVICIO, 9, 4)), 0) + 1, 4, '0')
    INTO ls_cod_servicio
    FROM EDU_UNIDAD_ORGANICA_DET D
    WHERE TRUNC(D.FEC_REGISTRO) = TRUNC(SYSDATE)
    AND D.COD_UNIDAD_ORGANICA_CAB = pvi_cod_unidad_organica_cab
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad;

    RETURN ls_cod_servicio;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      ls_cod_servicio := '';
      RETURN ls_cod_servicio;
  END;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_INSERT_CURSO_CAB
  AUTOR            : PGONZALESC
  FECHA CREACION   : 04/12/2020
  MOTIVO           : Registro de Servicio
  *******************************************************************************************************************/
  PROCEDURE SP_INSERT_SERVICIO( pvi_cod_unidad            in  EDU_UNIDAD_ORGANICA_DET.COD_UNIDAD_ORGANICA_CAB%TYPE, -- 01-> DNI, 05-> C.E
                                pvi_cod_tipo_unidad       in  EDU_UNIDAD_ORGANICA_DET.COD_TIPO_UNIDAD%TYPE,
                                pvi_des_servicio          in  EDU_UNIDAD_ORGANICA_DET.DES_SERVICIO%TYPE,
                                pvi_cod_usuario           in  EDU_UNIDAD_ORGANICA_DET.AUD_COD_USUARIO%TYPE,
                                pvi_ip_maquina            in  EDU_UNIDAD_ORGANICA_DET.AUD_IP_MAQUINA%TYPE,
                                pdo_cod_servicio          out varchar2,
                                pdo_cod_error             out varchar2,
                                pdo_des_error             out varchar2
                              )
  IS
    ls_cod_servicio EDU_UNIDAD_ORGANICA_DET.COD_SERVICIO%TYPE;
    ls_des_servicio EDU_UNIDAD_ORGANICA_DET.DES_SERVICIO%TYPE;
    le_servicio_found EXCEPTION;
  BEGIN
    SELECT COUNT(1)
    INTO ls_des_servicio
    FROM EDU_UNIDAD_ORGANICA_DET D
    WHERE D.COD_UNIDAD_ORGANICA_CAB = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND TRIM(UPPER(D.DES_SERVICIO)) = TRIM(UPPER(pvi_des_servicio));

    IF ls_des_servicio > 0 THEN
      RAISE le_servicio_found;
    END IF;

    ls_cod_servicio := PKG_EDU_SGC.SF_SEC_COD_SERVICIO(pvi_cod_unidad,
                                                       pvi_cod_tipo_unidad);


    INSERT INTO EDU_UNIDAD_ORGANICA_DET ( COD_UNIDAD_ORGANICA_CAB,
                                          COD_TIPO_UNIDAD,
                                          COD_SERVICIO,
                                          DES_SERVICIO,
                                          AUD_COD_USUARIO,
                                          AUD_IP_MAQUINA)
    VALUES ( pvi_cod_unidad,
             pvi_cod_tipo_unidad,
             ls_cod_servicio,
             pvi_des_servicio,
             pvi_cod_usuario,
             pvi_ip_maquina
    );

    pdo_cod_servicio := ls_cod_servicio;
    pdo_cod_error    := '1';
    pdo_des_error    := 'OK';

    COMMIT;

    EXCEPTION
    WHEN le_servicio_found THEN
         pdo_cod_servicio := '';
         pdo_cod_error    := '100';
         pdo_des_error    := 'Ya existe un servicio con el mismo nombre';
    ROLLBACK;
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_servicio := '';
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_INSERT_SERVICIO: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_servicio := '';
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_INSERT_SERVICIO: Error al registrar el servicio ' || SQLERRM;
    ROLLBACK;
  END;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_ANULAR_CURSO
  AUTOR            : PGONZALESC
  FECHA CREACION   : 08/12/2020
  MOTIVO           : Anular Curso
  *******************************************************************************************************************/
  PROCEDURE SP_ANULAR_CURSO(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS

  BEGIN

    UPDATE EDU_CURSOS_CAB C
    SET C.IND_ACTIVO = '0',
    C.COD_ESTADO = '3',
    C.AUD_COD_USUARIO_ANULA = pvi_cod_usuario,
    C.AUD_IP_MAQUINA_ANULA = pvi_ip_maquina,
    C.AUD_FEC_REGISTRO_ANULA = SYSDATE
    WHERE C.COD_CURSO = pvi_cod_curso
    AND C.COD_UNIDAD = pvi_cod_unidad
    AND C.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad;
    
    SP_INSERT_MOVIMIENTO(pvi_cod_curso,
                         pvi_cod_unidad,
                         pvi_cod_tipo_unidad,
                         '',
                         '',
                         '04',
                         pvi_cod_usuario,
                         pvi_ip_maquina,
                         pdo_cod_error,
                         pdo_des_error);
                         
    IF pdo_cod_error = '1' THEN
       pdo_cod_error    := '1';
       pdo_des_error    := 'OK';
       COMMIT;
    END IF;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_ANULAR_CURSO: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_ANULAR_CURSO: Error al anular el curso ' || SQLERRM;
    ROLLBACK;
  END;
  
  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_GET_PARTICIPANTE
  AUTOR            : PGONZALESC
  FECHA CREACION   : 08/12/2020
  MOTIVO           : Obtener datos del participante si es trabajador
  *******************************************************************************************************************/
  PROCEDURE SP_GET_PARTICIPANTE(
        pvi_cod_tipo_documento    in  varchar2,
        pvi_des_num_documento     in  varchar2,
        pdo_cur_data_participante out sys_refcursor,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS
    li_num_participante number;
    le_no_found         EXCEPTION;
  BEGIN

    SELECT COUNT(1)
    INTO li_num_participante
    FROM EDU_PARTICIPANTES_MAE M
    WHERE M.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento
    AND M.DES_NUM_DOCUMENTO = pvi_des_num_documento
    AND M.IND_ACTIVO = '1';

    IF li_num_participante > 0 THEN -- SE ENCUENTRA EN EL MAESTRO DE PARTICIPANTE
      OPEN pdo_cur_data_participante FOR
           SELECT M.DES_APE_PATERNO,
                  M.DES_APE_MATERNO,
                  M.DES_NOMBRES,
                  M.COD_TIPO_SEXO,
                  M.DES_CORREO_ELECTRONICO  
           FROM EDU_PARTICIPANTES_MAE M
           WHERE M.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento
           AND M.DES_NUM_DOCUMENTO = pvi_des_num_documento
           AND M.IND_ACTIVO = '1';
    ELSE
      SELECT COUNT(1)
      INTO li_num_participante
      FROM PER_TRABAJADOR T
      WHERE T.NUM_LE = pvi_des_num_documento
      AND T.IND_ESTADO = 'A';

      IF li_num_participante > 0 THEN -- ES TRABAJADOR CAS O NOMBRADO
        OPEN pdo_cur_data_participante FOR
             SELECT T.APE_PATERNO AS DES_APE_PATERNO,
                    T.APE_MATERNO AS DES_APE_MATERNO,
                    TRIM(T.NOM_PRIMERO || ' ' || T.NOM_SEGUNDO) AS DES_NOMBRES,
                    DECODE(T.TIP_SEXO, 'M', '1',
                                       'F', '2') COD_TIPO_SEXO,
                    '' DES_CORREO_ELECTRONICO
             FROM PER_TRABAJADOR T
             WHERE T.NUM_LE = pvi_des_num_documento
             AND T.IND_ESTADO = 'A';
      ELSE
        SELECT COUNT(1)
        INTO li_num_participante
        FROM ADM_TRABAJADOR_EXTERNO E
        WHERE E.DNI = pvi_des_num_documento;

        IF li_num_participante > 0 THEN -- ES TRABAJADOR EXTERNO
          OPEN pdo_cur_data_participante FOR
               SELECT E.APE_PATERNO DES_APE_PATERNO,
                      E.APE_MATERNO DES_APE_MATERNO,
                      E.NOMBRES DES_NOMBRES,
                      DECODE(E.TIP_SEXO, 'M', '1',
                                         'F', '2') COD_TIPO_SEXO,
                      '' DES_CORREO_ELECTRONICO
               FROM ADM_TRABAJADOR_EXTERNO E
               WHERE E.DNI = pvi_des_num_documento;
        ELSE
          RAISE le_no_found;
        END IF;
      END IF;
    END IF;

    pdo_cod_error    := '1';
    pdo_des_error    := 'OK';
    COMMIT;

    EXCEPTION
    WHEN le_no_found THEN
         pdo_cod_error    := '300';
         pdo_des_error    := 'No se encuentra los datos';
    ROLLBACK;
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_GET_PARTICIPANTE: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_GET_PARTICIPANTE: Error al recuperar el participante ' || SQLERRM;
    ROLLBACK;
  END;

  /*******************************************************************************************************************
  TIPO             : FUNCTION
  NOMBRE           : SF_SEC_COD_CURSO_CAB
  AUTOR            : PGONZALESC
  FECHA CREACION   : 04/12/2020
  MOTIVO           : RETORNA EL ULTIMO CODIGO DE PARTICIPANTE
  *******************************************************************************************************************/
  FUNCTION SF_SEC_COD_PARTICIPANTE
  RETURN VARCHAR2 IS
    ls_cod_participante  EDU_PARTICIPANTES_MAE.COD_PARTICIPANTE%TYPE;
  begin

    SELECT TO_CHAR(SYSDATE, 'YYYYMMDD') || '' ||
           LPAD(NVL(MAX(SUBSTR(M.COD_PARTICIPANTE, 9, 4)), 0) + 1, 4, '0')
    INTO ls_cod_participante
    FROM EDU_PARTICIPANTES_MAE M
    WHERE TRUNC(M.FEC_REGISTRO) = TRUNC(SYSDATE);

    RETURN ls_cod_participante;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      ls_cod_participante := '';
      RETURN ls_cod_participante;
  end;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_INSERT_PARTICIPANTE
  AUTOR            : PGONZALESC
  FECHA CREACION   : 09/12/2020
  MOTIVO           : Insertar Participante
  *******************************************************************************************************************/
  PROCEDURE SP_INSERT_PARTICIPANTE(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_tipo_documento    in  varchar2,
        pvi_des_num_documento     in  varchar2,
        pvi_des_ape_paterno       in  EDU_PARTICIPANTES_MAE.DES_APE_PATERNO%TYPE,
        pvi_des_ape_materno       in  EDU_PARTICIPANTES_MAE.DES_APE_MATERNO%TYPE,
        pvi_des_nombres           in  EDU_PARTICIPANTES_MAE.DES_NOMBRES%TYPE,
        pvi_cod_tipo_sexo         in  EDU_PARTICIPANTES_MAE.COD_TIPO_SEXO%TYPE,
        pvi_des_correo            in  EDU_PARTICIPANTES_MAE.DES_CORREO_ELECTRONICO%TYPE,
        pvi_cod_tipo              in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_usuario           in  EDU_PARTICIPANTES_MAE.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_PARTICIPANTES_MAE.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS
    li_num_participante number;
    ls_cod_participante varchar2(12);
    LE_EXISTE_REGISTRO_PARTICIPANTE EXCEPTION;
    li_num_secuencia    number;
  BEGIN

    SELECT COUNT(1)
    INTO li_num_participante
    FROM EDU_PARTICIPANTES_MAE M
    WHERE M.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento
    AND M.DES_NUM_DOCUMENTO = pvi_des_num_documento
    AND M.IND_ACTIVO = '1';

    IF li_num_participante = 0 THEN --NO SE ENCUENTRA  EN PARTICIPANTE
      ls_cod_participante := PKG_EDU_SGC.SF_SEC_COD_PARTICIPANTE;
      INSERT INTO EDU_PARTICIPANTES_MAE ( COD_PARTICIPANTE,
                                          COD_TIPO_DOCUMENTO,
                                          DES_NUM_DOCUMENTO,
                                          DES_NOMBRES,
                                          DES_APE_PATERNO,
                                          DES_APE_MATERNO,
                                          DES_NOMBRE_COMPLETO,
                                          COD_TIPO_SEXO,
                                          DES_NUM_TELEFONO,
                                          DES_CORREO_ELECTRONICO,
                                          AUD_COD_USUARIO,
                                          AUD_IP_MAQUINA)
      VALUES(ls_cod_participante,
             pvi_cod_tipo_documento,
             pvi_des_num_documento,
             UPPER(pvi_des_nombres),
             UPPER(pvi_des_ape_paterno),
             UPPER(pvi_des_ape_materno),
             UPPER(pvi_des_ape_paterno) || ' ' || UPPER(pvi_des_ape_materno) || ' ' || UPPER(pvi_des_nombres),
             pvi_cod_tipo_sexo,
             '',
             pvi_des_correo,
             pvi_cod_usuario,
             pvi_ip_maquina);
    ELSE -- YA SE ENCUENTRA EN LA TABLA PARTICIPANTE
      SELECT M.COD_PARTICIPANTE
      INTO ls_cod_participante
      FROM EDU_PARTICIPANTES_MAE M
      WHERE M.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento
      AND M.DES_NUM_DOCUMENTO = pvi_des_num_documento
      AND M.IND_ACTIVO = '1';
      
      UPDATE EDU_PARTICIPANTES_MAE P
      SET P.DES_CORREO_ELECTRONICO = pvi_des_correo
      WHERE P.COD_PARTICIPANTE = ls_cod_participante;
    END IF;

    SELECT COUNT(1)
    INTO li_num_participante
    FROM EDU_CURSOS_DET D
    WHERE D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND D.COD_PARTICIPANTE = ls_cod_participante
    AND D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo;
    
    SELECT NVL(MAX(D.NUM_SECUENCIA)+1, '1')
    INTO li_num_secuencia
    FROM EDU_CURSOS_DET D
    WHERE TO_CHAR(D.AUD_FEC_REGISTRO,'YYYY') = TO_CHAR(SYSDATE,'YYYY');

    IF li_num_participante > 0 THEN
      RAISE LE_EXISTE_REGISTRO_PARTICIPANTE;
    END IF;

    INSERT INTO EDU_CURSOS_DET( COD_CURSO,
                                COD_UNIDAD,
                                COD_TIPO_UNIDAD,
                                COD_PARTICIPANTE,
                                COD_TIPO_PARTICIPANTE,
                                IND_ENVIO_CORREO,
                                IND_FIRMA_DIGITAL,
                                AUD_COD_USUARIO,
                                AUD_IP_MAQUINA,
                                NUM_SECUENCIA)
    VALUES(pvi_cod_curso,
           pvi_cod_unidad,
           pvi_cod_tipo_unidad,
           ls_cod_participante,
           pvi_cod_tipo,
           '0',
           '0',
           pvi_cod_usuario,
           pvi_ip_maquina,
           li_num_secuencia);

    pdo_cod_error    := '1';
    pdo_des_error    := 'OK';
    COMMIT;

    EXCEPTION
    WHEN LE_EXISTE_REGISTRO_PARTICIPANTE THEN
         pdo_cod_error    := '100';
         pdo_des_error    := pvi_des_ape_paterno || ' ' || pvi_des_ape_materno || ' ' || pvi_des_nombres || ' ya se encuentra registrado';
    ROLLBACK;
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_INSERT_PARTICIPANTE: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_INSERT_PARTICIPANTE: Error al registrar participante ' || SQLERRM;
    ROLLBACK;
  END;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_ANULAR_PARTICIPANTE
  AUTOR            : PGONZALESC
  FECHA CREACION   : 09/12/2020
  MOTIVO           : Anular Participante
  *******************************************************************************************************************/
  PROCEDURE SP_ANULAR_PARTICIPANTE(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_PARTICIPANTES_MAE.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS

  BEGIN

    UPDATE EDU_CURSOS_DET D
    SET D.IND_ACTIVO = '0',
    D.AUD_COD_USUARIO_ANULA = pvi_cod_usuario,
    D.AUD_IP_MAQUINA_ANULA = pvi_ip_maquina,
    D.AUD_FEC_REGISTRO_ANULA = SYSDATE
    WHERE D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND D.COD_PARTICIPANTE = pvi_cod_participante
    AND D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante;
    
    SP_INSERT_MOVIMIENTO(pvi_cod_curso,
                         pvi_cod_unidad,
                         pvi_cod_tipo_unidad,
                         pvi_cod_participante,
                         pvi_cod_tipo_participante,
                         '03',
                         pvi_cod_usuario,
                         pvi_ip_maquina,
                         pdo_cod_error,
                         pdo_des_error);
                         
    IF pdo_cod_error = '1' THEN
       pdo_cod_error    := '1';
       pdo_des_error    := 'OK';
       COMMIT;
    END IF;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_ANULAR_PARTICIPANTE: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_ANULAR_PARTICIPANTE: Error al anular el participante ' || SQLERRM;
    ROLLBACK;
  END;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_FINALIZAR_CURSO
  AUTOR            : PGONZALESC
  FECHA CREACION   : 09/12/2020
  MOTIVO           : Finalizar Curso
  *******************************************************************************************************************/
  PROCEDURE SP_FINALIZAR_CURSO(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS

  BEGIN

    UPDATE EDU_CURSOS_CAB C
    SET C.COD_ESTADO = '2',
    C.AUD_COD_USUARIO_ULTIMA_MOD = pvi_cod_usuario,
    C.AUD_IP_MAQUINA_ULTIMA_MOD = pvi_ip_maquina,
    C.AUD_FEC_REGISTRO_ULTIMA_MOD = SYSDATE
    WHERE C.COD_CURSO = pvi_cod_curso
    AND C.COD_UNIDAD = pvi_cod_unidad
    AND C.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND C.COD_ESTADO = '1';
    
    SP_INSERT_MOVIMIENTO(pvi_cod_curso,
                         pvi_cod_unidad,
                         pvi_cod_tipo_unidad,
                         '',
                         '',
                         '05',
                         pvi_cod_usuario,
                         pvi_ip_maquina,
                         pdo_cod_error,
                         pdo_des_error);
                         
    IF pdo_cod_error = '1' THEN
       pdo_cod_error    := '1';
       pdo_des_error    := 'OK';
       COMMIT;
    END IF;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_FINALIZAR_CURSO: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_FINALIZAR_CURSO: Error al anular el curso ' || SQLERRM;
    ROLLBACK;
  END;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_UPDATE_IND_FIRMA_DIGITAL
  AUTOR            : PGONZALESC
  FECHA CREACION   : 11/12/2020
  MOTIVO           : Actualizar el indicador Firma Digital
  *******************************************************************************************************************/
  PROCEDURE SP_UPDATE_IND_FIRMA_DIGITAL(
        pvi_cod_curso             in  EDU_CURSOS_DET.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_DET.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_DET.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_DET.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS

  BEGIN

    UPDATE EDU_CURSOS_DET D
    SET D.IND_FIRMA_DIGITAL = '1',
    D.AUD_COD_USUARIO_ULTIMA_MOD = pvi_cod_usuario,
    D.AUD_IP_MAQUINA_ULTIMA_MOD = pvi_ip_maquina,
    D.AUD_FEC_REGISTRO_ULTIMA_MOD = SYSDATE
    WHERE D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND D.COD_PARTICIPANTE = pvi_cod_participante
    AND D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante
    AND D.IND_ACTIVO = '1';
    
    SP_INSERT_MOVIMIENTO(pvi_cod_curso,
                         pvi_cod_unidad,
                         pvi_cod_tipo_unidad,
                         pvi_cod_participante,
                         pvi_cod_tipo_participante,
                         '01',
                         pvi_cod_usuario,
                         pvi_ip_maquina,
                         pdo_cod_error,
                         pdo_des_error);
                         
    IF pdo_cod_error = '1' THEN
       pdo_cod_error    := '1';
       pdo_des_error    := 'OK';
       COMMIT;
    END IF;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_UPDATE_IND_FIRMA_DIGITAL: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_UPDATE_IND_FIRMA_DIGITAL: Error al cambiar el indicador de la firma digital ' || SQLERRM;
    ROLLBACK;
  END;
  
  /*******************************************************************************************************************
  TIPO             : FUNCTION
  NOMBRE           : SF_NUM_SECUENCIA_CONSTANCIA
  AUTOR            : PGONZALESC
  FECHA CREACION   : 04/12/2020
  MOTIVO           : RETORNA LA ULTIMA SECUENCIA DE LA CONSTANCIA
  *******************************************************************************************************************/
  FUNCTION SF_NUM_SECUENCIA_CONSTANCIA( pvi_cod_curso             in EDU_CURSOS_DET.COD_CURSO%TYPE,
                                        pvi_cod_unidad            in EDU_UNIDAD_ORGANICA_DET.COD_UNIDAD_ORGANICA_CAB%TYPE,
                                        pvi_cod_tipo_unidad       in EDU_UNIDAD_ORGANICA_DET.COD_TIPO_UNIDAD%TYPE,
                                        pvi_cod_participante      in EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
                                        pvi_cod_tipo_participante in EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE                                    
  )
  RETURN VARCHAR2 IS
    li_num_secuencia  EDU_CURSOS_DET.NUM_SECUENCIA%TYPE;
  begin

    SELECT D.NUM_SECUENCIA
    INTO li_num_secuencia
    FROM EDU_CURSOS_DET D
    WHERE D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND D.COD_PARTICIPANTE = pvi_cod_participante
    AND D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante;

    RETURN li_num_secuencia;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      li_num_secuencia := '';
      RETURN li_num_secuencia;
  END;
  
  /*******************************************************************************************************************
  TIPO             : FUNCTION
  NOMBRE           : SF_DES_TOTAL_HORAS
  AUTOR            : PGONZALESC
  FECHA CREACION   : 13/01/2021
  MOTIVO           : RETORNA EL TOTAL DE HORAS
  *******************************************************************************************************************/
  FUNCTION SF_DES_TOTAL_HORAS( pvi_total_horas in EDU_CURSOS_DET.COD_CURSO%TYPE )
  RETURN VARCHAR2 IS
    ls_des_total_horas  varchar2(200);
  begin

    SELECT E.DES_ELEMENTO
    INTO ls_des_total_horas
    FROM ADM_ELEMENTO E
    WHERE E.COD_TABLA = 'EDU_DES_HORAS_CONSTANCIA'
    AND E.COD_ELEMENTO = pvi_total_horas;

    RETURN ls_des_total_horas;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      ls_des_total_horas := '';
      RETURN ls_des_total_horas;
  END;
  
  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_UPDATE_IND_ENVIO_CORREO
  AUTOR            : PGONZALESC
  FECHA CREACION   : 21/01/2021
  MOTIVO           : Actualizar el indicador de envío de Correo
  *******************************************************************************************************************/
  PROCEDURE SP_UPDATE_IND_ENVIO_CORREO(
        pvi_cod_curso             in  EDU_CURSOS_DET.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_DET.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_des_correo            in  EDU_CURSOS_CORREO_HIST.DES_CORREO_ELECTRONICO%TYPE,
        pvi_des_correo_cc         in  EDU_CURSOS_CORREO_HIST.DES_CORREO_CC%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_DET.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_DET.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS

  BEGIN

    UPDATE EDU_CURSOS_DET D
    SET D.IND_ENVIO_CORREO = '1',
    D.AUD_COD_USUARIO_ULTIMA_MOD = pvi_cod_usuario,
    D.AUD_IP_MAQUINA_ULTIMA_MOD = pvi_ip_maquina,
    D.AUD_FEC_REGISTRO_ULTIMA_MOD = SYSDATE
    WHERE D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND D.COD_PARTICIPANTE = pvi_cod_participante
    AND D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante
    AND D.IND_ACTIVO = '1';

    SP_INSERT_MOVIMIENTO(pvi_cod_curso,
                         pvi_cod_unidad,
                         pvi_cod_tipo_unidad,
                         pvi_cod_participante,
                         pvi_cod_tipo_participante,
                         '02',
                         pvi_cod_usuario,
                         pvi_ip_maquina,
                         pdo_cod_error,
                         pdo_des_error);
                         
    IF pdo_cod_error = '1' THEN
       --@02 INICIO
       SP_INSERT_ENVIO_CORREO(pvi_cod_curso,
                              pvi_cod_unidad,
                              pvi_cod_tipo_unidad,
                              pvi_cod_participante,
                              pvi_cod_tipo_participante,
                              pvi_des_correo,
                              pvi_des_correo_cc,
                              pvi_cod_usuario,
                              pvi_ip_maquina,
                              pdo_cod_error,
                              pdo_des_error);
       --@02 FIN
       IF pdo_cod_error = '1' THEN
         pdo_cod_error    := '1';
         pdo_des_error    := 'OK';
         COMMIT;
       END IF;                       
    END IF;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_UPDATE_IND_ENVIO_CORREO: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_UPDATE_IND_ENVIO_CORREO: Error al cambiar el indicador en el envío del correo ' || SQLERRM;
    ROLLBACK;
  END;
  
  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_INSERT_MOVIMIENTO
  AUTOR            : PGONZALESC
  FECHA CREACION   : 21/01/2021
  MOTIVO           : Registro de Movimientos
  *******************************************************************************************************************/
  PROCEDURE SP_INSERT_MOVIMIENTO( pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
                                  pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
                                  pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
                                  pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
                                  pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
                                  pvi_cod_tipo_movimiento   in  EDU_CURSOS_MOV.COD_TIPO_MOVIMIENTO%TYPE,
                                  pvi_cod_usuario           in  EDU_UNIDAD_ORGANICA_DET.AUD_COD_USUARIO%TYPE,
                                  pvi_ip_maquina            in  EDU_UNIDAD_ORGANICA_DET.AUD_IP_MAQUINA%TYPE,
                                  pdo_cod_error             out varchar2,
                                  pdo_des_error             out varchar2
                              )
  IS

  BEGIN

    INSERT INTO EDU_CURSOS_MOV (COD_CURSO,
                                     COD_UNIDAD,
                                     COD_TIPO_UNIDAD,
                                     COD_PARTICIPANTE,
                                     COD_TIPO_PARTICIPANTE,
                                     COD_TIPO_MOVIMIENTO,
                                     FEC_REGISTRO,
                                     AUD_COD_USUARIO,
                                     AUD_IP_MAQUINA)
    VALUES ( pvi_cod_curso,
             pvi_cod_unidad,
             pvi_cod_tipo_unidad,
             pvi_cod_participante,
             pvi_cod_tipo_participante,
             pvi_cod_tipo_movimiento,
             SYSDATE,
             pvi_cod_usuario,
             pvi_ip_maquina );

    pdo_cod_error    := '1';
    pdo_des_error    := 'OK';

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_INSERT_MOVIMIENTO: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_INSERT_MOVIMIENTO: Error al registrar el servicio ' || SQLERRM;
    ROLLBACK;
  END;
  
  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_UPDATE_CURSO_CAB
  AUTOR            : PGONZALESC
  FECHA CREACION   : 01/02/2021
  MOTIVO           : Modificar datos del curso
  *******************************************************************************************************************/
  PROCEDURE SP_UPDATE_CURSO_CAB(
        pvi_cod_curso             in  EDU_CURSOS_CAB.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CAB.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CAB.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_tipo_curso        in  EDU_CURSOS_CAB.COD_TIPO_CURSO%TYPE,
        pvi_des_nombre_curso      in  EDU_CURSOS_CAB.DES_NOMBRE_CURSO%TYPE,
        pvi_fec_realizacion       in  varchar2,
        pvi_fec_inicio            in  varchar2,
        pvi_fec_fin               in  varchar2,
        pvi_fec_emision           in  varchar2,
        pvi_cod_enlace_fecha      in  EDU_CURSOS_CAB.COD_ENLACE_FECHA%TYPE, --@02
        pvi_cod_tipo_modalidad    in  EDU_CURSOS_CAB.COD_TIPO_MODALIDAD%TYPE,
        pvi_num_horas             in  EDU_CURSOS_CAB.NUM_TOTAL_HORAS%TYPE,
        pvi_cod_tipo_horas        in  EDU_CURSOS_CAB.COD_TIPO_HORAS%TYPE,
        pvi_ind_visualizacion     in  EDU_CURSOS_CAB.IND_VISUALIZACION_HORAS%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2 )
  IS
  BEGIN

    UPDATE EDU_CURSOS_CAB C
    SET C.COD_TIPO_CURSO = pvi_cod_tipo_curso,
        C.DES_NOMBRE_CURSO = pvi_des_nombre_curso,
        C.FEC_REALIZACION = to_date(pvi_fec_realizacion, 'DD/MM/YYYY'),
        C.FEC_INICIO = to_date(pvi_fec_inicio, 'DD/MM/YYYY'),
        C.FEC_FIN = to_date(pvi_fec_fin, 'DD/MM/YYYY'),
        C.FEC_EMISION = to_date(pvi_fec_emision, 'DD/MM/YYYY'),
        C.COD_ENLACE_FECHA = pvi_cod_enlace_fecha, --@02
        C.COD_TIPO_MODALIDAD = pvi_cod_tipo_modalidad,
        C.NUM_TOTAL_HORAS = pvi_num_horas,
        C.COD_TIPO_HORAS = pvi_cod_tipo_horas,
        C.IND_VISUALIZACION_HORAS = pvi_ind_visualizacion,
        C.AUD_COD_USUARIO_ULTIMA_MOD = pvi_cod_usuario,
        C.AUD_IP_MAQUINA_ULTIMA_MOD = pvi_ip_maquina,
        C.AUD_FEC_REGISTRO_ULTIMA_MOD = SYSDATE
    WHERE C.COD_CURSO = pvi_cod_curso
    AND C.COD_UNIDAD = pvi_cod_unidad
    AND C.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad;

    pdo_cod_error := '1';
    pdo_des_error := 'OK';

    COMMIT;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '100';
         pdo_des_error := 'SP_UPDATE_CURSO_CAB: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '-1';
         pdo_des_error := 'SP_UPDATE_CURSO_CAB: Error al registrar el curso ' || SQLERRM;
    ROLLBACK;
  END;
  
  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_UPDATE_PARTICIPANTE
  AUTOR            : PGONZALESC
  FECHA CREACION   : 02/02/2021
  MOTIVO           : Modificar datos del participante
  *******************************************************************************************************************/
  PROCEDURE SP_UPDATE_PARTICIPANTE(
        pvi_cod_curso             in  EDU_CURSOS_DET.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_DET.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_DET.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_DET.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_cod_tipo_documento    in  EDU_PARTICIPANTES_MAE.COD_TIPO_DOCUMENTO%TYPE,
        pvi_des_num_documento     in  EDU_PARTICIPANTES_MAE.DES_NUM_DOCUMENTO%TYPE,
        pvi_ape_paterno           in  EDU_PARTICIPANTES_MAE.DES_APE_PATERNO%TYPE,
        pvi_ape_materno           in  EDU_PARTICIPANTES_MAE.DES_APE_MATERNO%TYPE,
        pvi_des_nombres           in  EDU_PARTICIPANTES_MAE.DES_NOMBRES%TYPE,
        pvi_cod_tipo_sexo         in  EDU_PARTICIPANTES_MAE.COD_TIPO_SEXO%TYPE,
        pvi_des_correo            in  EDU_PARTICIPANTES_MAE.DES_CORREO_ELECTRONICO%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CAB.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CAB.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2 )
  IS
    ls_cod_tipo_documento    EDU_PARTICIPANTES_MAE.COD_TIPO_DOCUMENTO%TYPE;
    ls_des_num_documento     EDU_PARTICIPANTES_MAE.DES_NUM_DOCUMENTO%TYPE;
    ls_cod_participante      EDU_PARTICIPANTES_MAE.COD_PARTICIPANTE%TYPE;
    ls_cod_tipo_participante EDU_CURSOS_DET.COD_TIPO_PARTICIPANTE%TYPE;
    li_num_registro          number;
    le_existe_reg            exception;
    le_existe_participante   exception;
  BEGIN
    
    SELECT P.COD_TIPO_DOCUMENTO, P.DES_NUM_DOCUMENTO, D.COD_PARTICIPANTE, D.COD_TIPO_PARTICIPANTE
    INTO ls_cod_tipo_documento, ls_des_num_documento, ls_cod_participante, ls_cod_tipo_participante
    FROM EDU_PARTICIPANTES_MAE P
    INNER JOIN EDU_CURSOS_DET D
    ON D.COD_PARTICIPANTE = P.COD_PARTICIPANTE
    WHERE P.COD_PARTICIPANTE = pvi_cod_participante
    AND D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND P.IND_ACTIVO = '1';
    
    IF pvi_des_num_documento <> ls_des_num_documento THEN
       SELECT COUNT(1)
       INTO li_num_registro
       FROM EDU_PARTICIPANTES_MAE P
       INNER JOIN EDU_CURSOS_DET D
       ON D.COD_PARTICIPANTE = P.COD_PARTICIPANTE
       WHERE P.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento 
       AND P.DES_NUM_DOCUMENTO = pvi_des_num_documento
       AND P.IND_ACTIVO = '1';
       
       IF li_num_registro > 0 THEN
          SELECT COUNT(1)
          INTO li_num_registro
          FROM EDU_PARTICIPANTES_MAE P
          INNER JOIN EDU_CURSOS_DET D
          ON D.COD_PARTICIPANTE = P.COD_PARTICIPANTE
          WHERE D.COD_CURSO = pvi_cod_curso
          AND D.COD_UNIDAD = pvi_cod_unidad
          AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
          AND P.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento 
          AND P.DES_NUM_DOCUMENTO = pvi_des_num_documento
          AND D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante;
          
          IF li_num_registro > 0 THEN
             RAISE le_existe_reg;
          ELSE
             RAISE le_existe_participante;
          END IF;
       END IF;
    END IF;
    
    UPDATE EDU_CURSOS_DET D
    SET D.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante,
        D.AUD_COD_USUARIO_ULTIMA_MOD = pvi_cod_usuario,
        D.AUD_IP_MAQUINA_ULTIMA_MOD = pvi_ip_maquina,
        D.AUD_FEC_REGISTRO_ULTIMA_MOD = SYSDATE
    WHERE D.COD_CURSO = pvi_cod_curso
    AND D.COD_UNIDAD = pvi_cod_unidad
    AND D.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND D.COD_PARTICIPANTE = pvi_cod_participante
    AND D.COD_TIPO_PARTICIPANTE = ls_cod_tipo_participante;
    
    UPDATE EDU_PARTICIPANTES_MAE P
    SET P.COD_TIPO_DOCUMENTO = pvi_cod_tipo_documento,
        P.DES_NUM_DOCUMENTO = pvi_des_num_documento,
        P.DES_NOMBRES = pvi_des_nombres,
        P.DES_APE_PATERNO = pvi_ape_paterno,
        P.DES_APE_MATERNO = pvi_ape_materno,
        P.DES_NOMBRE_COMPLETO = pvi_ape_paterno || ' ' || pvi_ape_materno || ' ' || pvi_des_nombres,
        P.COD_TIPO_SEXO = pvi_cod_tipo_sexo,
        P.DES_CORREO_ELECTRONICO = pvi_des_correo
    WHERE P.COD_PARTICIPANTE = pvi_cod_participante;
    
    pdo_cod_error := '1';
    pdo_des_error := 'OK';

    COMMIT;

    EXCEPTION
    WHEN le_existe_participante THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '100';
         pdo_des_error := 'El número de documento ya existe registrado en otro curso, debe ingresarlo como nuevo participante.';
    ROLLBACK;
    WHEN le_existe_reg THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '100';
         pdo_des_error := 'El número de documento ya existe registrado en el curso.';
    ROLLBACK;
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '100';
         pdo_des_error := 'SP_UPDATE_PARTICIPANTE: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error := '-1';
         pdo_des_error := 'SP_UPDATE_PARTICIPANTE: Error al registrar el curso ' || SQLERRM;
    ROLLBACK;
  END;
  
  /*******************************************************************************************************************
  TIPO             : FUNCTION
  NOMBRE           : SF_SEC_COD_SECUENCIAL_ENVIO_CORREO
  AUTOR            : PGONZALESC
  FECHA CREACION   : 17/04/2021
  MOTIVO           : RETORNA EL SECUENCIAL DE ENVIO DE CORREO POR PARTICIPANTE EN UN CURSO
  *******************************************************************************************************************/
  FUNCTION SF_SEC_COD_SECUENCIAL_ENVIO_CORREO( 
        pvi_cod_curso             in  EDU_CURSOS_CORREO_HIST.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CORREO_HIST.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CORREO_HIST.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_CORREO_HIST.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_CORREO_HIST.COD_TIPO_PARTICIPANTE%TYPE
  )
  RETURN VARCHAR2 IS
    li_num_secuencial  EDU_CURSOS_CORREO_HIST.DES_SECUENCIAL%TYPE;
  BEGIN

    SELECT NVL(MAX(H.DES_SECUENCIAL), 0) + 1
    INTO li_num_secuencial
    FROM EDU_CURSOS_CORREO_HIST H
    WHERE H.COD_CURSO = pvi_cod_curso
    AND H.COD_UNIDAD = pvi_cod_unidad
    AND H.COD_TIPO_UNIDAD = pvi_cod_tipo_unidad
    AND H.COD_PARTICIPANTE = pvi_cod_participante
    AND H.COD_TIPO_PARTICIPANTE = pvi_cod_tipo_participante;

    RETURN li_num_secuencial;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      li_num_secuencial := 0;
      RETURN li_num_secuencial;
  end;

  /*******************************************************************************************************************
  TIPO             : PACKAGES
  NOMBRE           : SP_INSERT_ENVIO_CORREO
  AUTOR            : PGONZALESC
  FECHA CREACION   : 17/04/2021
  MOTIVO           : Insertar Envio de correo al participante por curso
  *******************************************************************************************************************/
  PROCEDURE SP_INSERT_ENVIO_CORREO(
        pvi_cod_curso             in  EDU_CURSOS_CORREO_HIST.COD_CURSO%TYPE,
        pvi_cod_unidad            in  EDU_CURSOS_CORREO_HIST.COD_UNIDAD%TYPE,
        pvi_cod_tipo_unidad       in  EDU_CURSOS_CORREO_HIST.COD_TIPO_UNIDAD%TYPE,
        pvi_cod_participante      in  EDU_CURSOS_CORREO_HIST.COD_PARTICIPANTE%TYPE,
        pvi_cod_tipo_participante in  EDU_CURSOS_CORREO_HIST.COD_TIPO_PARTICIPANTE%TYPE,
        pvi_des_correo            in  EDU_CURSOS_CORREO_HIST.DES_CORREO_ELECTRONICO%TYPE,
        pvi_des_correo_cc         in  EDU_CURSOS_CORREO_HIST.DES_CORREO_CC%TYPE,
        pvi_cod_usuario           in  EDU_CURSOS_CORREO_HIST.AUD_COD_USUARIO%TYPE,
        pvi_ip_maquina            in  EDU_CURSOS_CORREO_HIST.AUD_IP_MAQUINA%TYPE,
        pdo_cod_error             out varchar2,
        pdo_des_error             out varchar2
  )
  IS
    li_num_secuencial    number;
  BEGIN
    
    li_num_secuencial := PKG_EDU_SGC.SF_SEC_COD_SECUENCIAL_ENVIO_CORREO( pvi_cod_curso,
                                                                         pvi_cod_unidad,
                                                                         pvi_cod_tipo_unidad,
                                                                         pvi_cod_participante,
                                                                         pvi_cod_tipo_participante);

    INSERT INTO EDU_CURSOS_CORREO_HIST( COD_CURSO,
                                        COD_UNIDAD,
                                        COD_TIPO_UNIDAD,
                                        COD_PARTICIPANTE,
                                        COD_TIPO_PARTICIPANTE,
                                        DES_SECUENCIAL,
                                        DES_CORREO_ELECTRONICO,
                                        DES_CORREO_CC,
                                        COD_USUARIO_ENVIO,
                                        FEC_REGISTRO,
                                        AUD_COD_USUARIO,
                                        AUD_IP_MAQUINA)
    VALUES(
         pvi_cod_curso,
         pvi_cod_unidad,
         pvi_cod_tipo_unidad,
         pvi_cod_participante,
         pvi_cod_tipo_participante,
         li_num_secuencial,
         pvi_des_correo,
         pvi_des_correo_cc,
         pvi_cod_usuario,
         SYSDATE,
         pvi_cod_usuario,
         pvi_ip_maquina                              
    );

    pdo_cod_error    := '1';
    pdo_des_error    := 'OK';
    COMMIT;

    EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '100';
         pdo_des_error    := 'SP_INSERT_ENVIO_CORREO: No se encuentran datos ' || SQLERRM;
    ROLLBACK;
    WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
         pdo_cod_error    := '-1';
         pdo_des_error    := 'SP_INSERT_ENVIO_CORREO: Error al enviar correo ' || SQLERRM;
    ROLLBACK;
  END;
END;
/
