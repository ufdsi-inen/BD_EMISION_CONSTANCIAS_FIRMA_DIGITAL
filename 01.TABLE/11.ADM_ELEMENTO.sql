-- Create table
create table ADM_ELEMENTO
(
  cod_tabla          VARCHAR2(30) not null,
  cod_elemento       VARCHAR2(100) not null,
  des_elemento       VARCHAR2(200) not null,
  num_sec            NUMBER(6,2),
  ind_activo         VARCHAR2(1)
);
-- Add comments to the table
comment on table ADM_ELEMENTO
  is 'Contiene en una lista todos los campos asociados a una tabla, es para facilitar el mantenimiento de las tablas';
-- Add comments to the columns 
comment on column ADM_ELEMENTO.cod_tabla
  is 'Codigo de la tabla';
comment on column ADM_ELEMENTO.cod_elemento
  is 'Codigo del campo';
comment on column ADM_ELEMENTO.des_elemento
  is 'Nombre del campo';
comment on column ADM_ELEMENTO.num_sec
  is 'Numero secuencial del campo';
comment on column ADM_ELEMENTO.ind_activo
  is 'Indicador de activo. 0=inactivo, 1=activo';
-- Create/Recreate indexes
create index XI_ELEMENTO on ADM_ELEMENTO (DES_ELEMENTO, COD_ELEMENTO);
-- Create/Recreate primary, unique and foreign key constraints 
alter table ADM_ELEMENTO
  add primary key (COD_TABLA, COD_ELEMENTO, DES_ELEMENTO);
