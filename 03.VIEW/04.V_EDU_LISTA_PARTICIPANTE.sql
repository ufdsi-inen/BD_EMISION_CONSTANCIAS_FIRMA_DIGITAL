CREATE OR REPLACE VIEW V_EDU_LISTA_PARTICIPANTE AS
SELECT
/*************************************************************************************************************
Usuario Creacion              VIEW
NOMBRE                :       V_EDU_LISTA_PARTICIPANTE
AUTOR                 :       PGONZALESC
FECHA CREACION        :       09/12/2020
MOTIVO                :       LISTA DE LOS PARTICIPANTES
*************************************************************************************************************/
       M.DES_NOMBRE_COMPLETO,
       M.DES_NOMBRES,
       M.DES_APE_PATERNO,
       M.DES_APE_MATERNO,
       D.COD_TIPO_PARTICIPANTE,
       DECODE(D.COD_TIPO_PARTICIPANTE, '1', 'PARTICIPANTE',
                                       '2', 'PONENTE',
                                       '3', 'ORGANIZADOR(A)',
                                       '4', 'MODERADOR(A)') DES_TIPO_PARTICIPANTE,
       M.COD_TIPO_DOCUMENTO,
       DECODE(M.COD_TIPO_DOCUMENTO, '01', 'D.N.I',
                                    '04', 'PASS',
                                    '05', 'C.E') DES_TIPO_DOCUMENTO,
       M.DES_NUM_DOCUMENTO,
       DECODE(M.COD_TIPO_SEXO, '1', 'M',
                               '2', 'F') DES_TIPO_SEXO,
       M.DES_CORREO_ELECTRONICO,
       D.IND_ENVIO_CORREO,
       DECODE(D.IND_ENVIO_CORREO, '1', 'SI',
                                  '0', 'NO') DES_ENVIO_CORREO,
       D.IND_CERTIFICADO,
       D.IND_FIRMA_DIGITAL,
       DECODE(D.IND_FIRMA_DIGITAL, '1', 'SI',
                                   '0', 'NO') DES_FIRMA_DIGITAL,
       D.COD_CURSO,
       D.COD_PARTICIPANTE,
       D.COD_UNIDAD,
       D.COD_TIPO_UNIDAD,
       D.NUM_SECUENCIA,
       D.FEC_REGISTRO,
       D.COD_ANIO_SECUENCIA,
       TO_CHAR(D.FEC_REGISTRO, 'YYYYMMDD') COD_ORDEN
FROM EDU_PARTICIPANTES_MAE M
INNER JOIN EDU_CURSOS_DET D
ON D.COD_PARTICIPANTE = M.COD_PARTICIPANTE
WHERE M.IND_ACTIVO = '1'
AND D.IND_ACTIVO = '1'
;
