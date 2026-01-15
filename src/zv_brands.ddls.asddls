@AbapCatalog.sqlViewName: 'ZVIEW_BRANDS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view ZV_BRANDS
  as select from ztrent_brands
{
  key marca as Marca,
  
  @UI.hidden: true
      url   as Imagen
}
