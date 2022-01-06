CREATE OR REPLACE VIEW V_EDU_LISTA_SERVICIO AS
SELECT
/***********************************************************************************
Usuario Creacion              VIEW
NOMBRE                :       V_EDU_LISTA_SERVICIO
AUTOR                 :       PGONZALESC
FECHA CREACION        :       06/12/2020
MOTIVO                :       LISTA DE LOS SERVICIOS QUE ESTAN DENTRO DE UN DPTO
**********************************************************************************/
       D.COD_UNIDAD_ORGANICA_CAB COD_UNIDAD_ORGANICA,
       D.COD_TIPO_UNIDAD,
       D.COD_SERVICIO,
       D.DES_SERVICIO
FROM EDU_UNIDAD_ORGANICA_DET d
WHERE D.IND_ACTIVO = '1'
ORDER BY D.DES_SERVICIO
;
