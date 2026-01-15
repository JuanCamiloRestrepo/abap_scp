@AbapCatalog.sqlViewName: 'ZVIEW_REM_DAYS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining Days'
@Metadata.ignorePropagatedAnnotations: true
define view ZV_REM_DAYS
  as select from ztrent_cars
{
  key matricula as Matricula,
      marca     as Marca,
      case
       when alq_hasta <> ''
       then dats_days_between( cast( $session.system_date as abap.dats ) , alq_hasta )
       else 0
      end       as Dias
}
