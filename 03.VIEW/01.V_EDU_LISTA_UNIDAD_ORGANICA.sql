CREATE OR REPLACE VIEW V_EDU_LISTA_UNIDAD_ORGANICA AS
SELECT
/***********************************************************************************
Usuario Creacion              VIEW
NOMBRE                :       V_EDU_LISTA_UNIDAD_ORGANICA
AUTOR                 :       PGONZALESC
FECHA CREACION        :       06/12/2020
MOTIVO                :       LISTA DE LA UNIDAD ORGANICA -
                              COD_TIPO_UNIDAD : 1->DPTO, 2->ESCUELA
**********************************************************************************/
       C.COD_UNIDAD_ORGANICA_CAB COD_UNIDAD_ORGANICA,
       C.COD_TIPO_UNIDAD,
       C.DES_UNIDAD_ORGANICA
FROM EDU_UNIDAD_ORGANICA_CAB c
WHERE C.IND_ACTIVO = '1' -- CABECERA UNIDAD ORGANICA (DPTO - ESCUELA)
ORDER BY C.DES_UNIDAD_ORGANICA ASC
;
