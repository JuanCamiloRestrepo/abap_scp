@AbapCatalog.sqlViewName: 'ZVIEW_DET_CUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customer'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZV_DETAILS_CUSTOMER
  as select from ztrent_customers
{
  key doc_id    as Id,
  key matricula as Matricula,
      nombres   as Nombres,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
