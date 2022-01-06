CREATE OR REPLACE VIEW V_EDU_LISTA_CURSOS AS
SELECT
/************************************************************************************************************
Usuario Creacion              VIEW
NOMBRE                :       V_EDU_LISTA_CURSOS
AUTOR                 :       PGONZALESC
FECHA CREACION        :       08/12/2020
MOTIVO                :       LISTA DE LOS CURSOS
************************************************************************************************************/
       C.COD_CURSO,
       C.COD_UNIDAD,
       C.COD_TIPO_UNIDAD,
       NVL(C.DES_NOMBRE_CURSO, ' ') DES_NOMBRE_CURSO,
       C.COD_TIPO_CURSO,
       DECODE(C.COD_TIPO_CURSO, '1', 'Curso',
                                '2', 'Taller') DES_TIPO_CURSO,
       U.DES_UNIDAD_ORGANICA,
       NVL(C.COD_UNIDAD_DET, ' ') COD_SERVICIO,
       NVL((SELECT D.DES_SERVICIO
            FROM EDU_UNIDAD_ORGANICA_DET D
            WHERE D.COD_UNIDAD_ORGANICA_CAB = C.COD_UNIDAD
            AND D.COD_TIPO_UNIDAD = C.COD_TIPO_UNIDAD
            AND D.COD_SERVICIO = C.COD_UNIDAD_DET
            AND D.IND_ACTIVO = '1'), ' ') DES_SERVICIO,
       C.COD_TIPO_MODALIDAD,
       DECODE(C.COD_TIPO_MODALIDAD, '1', 'PRESENCIAL',
                                     '2', 'VIRTUAL') DES_MODALIDAD,
       NVL(TO_CHAR(C.FEC_REALIZACION, 'DD/MM/YYYY'), ' ') FEC_REALIZACION,
       NVL(TO_CHAR(C.FEC_INICIO, 'DD/MM/YYYY'), ' ') FEC_INICIO,
       NVL(TO_CHAR(C.FEC_FIN, 'DD/MM/YYYY'), ' ') FEC_FIN,
       NVL(TO_CHAR(C.FEC_EMISION, 'DD/MM/YYYY'), ' ') FEC_EMISION,
       NVL(C.NUM_TOTAL_HORAS, ' ') NUM_TOTAL_HORAS,
       C.COD_ENLACE_FECHA,
       DECODE(C.COD_ENLACE_FECHA, '01', 'AL',
                                  '02', 'Y') DES_ENLACE_FECHA,
       C.COD_TIPO_HORAS,
       DECODE(C.COD_TIPO_HORAS, '01', 'PEDAGÓGICAS',
                                '02', 'CRONOLÓGICAS') DES_TIPO_HORAS,
       C.IND_VISUALIZACION_HORAS,
       C.COD_ESTADO,
       (SELECT CASE
                  WHEN COUNT(1) > 0 THEN
                    '1'
                  WHEN COUNT(1) = 0 THEN
                    '0'
                  ELSE
                    '0'
                END
        FROM EDU_CURSOS_DET E
        WHERE E.COD_CURSO = c.cod_curso
        AND E.COD_UNIDAD = c.cod_unidad
        AND E.COD_TIPO_UNIDAD = c.cod_tipo_unidad
        AND E.IND_FIRMA_DIGITAL = '1') IND_FIRMA --@01
FROM EDU_CURSOS_CAB C
INNER JOIN EDU_UNIDAD_ORGANICA_CAB U
ON U.COD_UNIDAD_ORGANICA_CAB = C.COD_UNIDAD
AND U.COD_TIPO_UNIDAD = C.COD_TIPO_UNIDAD
WHERE C.IND_ACTIVO = '1'
AND U.IND_ACTIVO = '1'
;
