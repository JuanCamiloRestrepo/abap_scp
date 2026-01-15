@AbapCatalog.sqlViewName: 'ZVIEW_RENT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZV_RENTING
  as select from ZV_CARS as Cars
  association [1]    to ZV_REM_DAYS  as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..1] to ZV_BRANDS    as _Brands      on Cars.Marca = _Brands.Marca
  association [0..1] to zv_det_custl as _DetCustomer on Cars.Matricula = _DetCustomer.matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      UndPotencia,
      Combustible,
      Consumo,
      FechaFabr,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      AlqDesde,
      AlqHasta,
      case
          when _RemDays.Dias <= 0 then 0
          when _RemDays.Dias between 1 and 30 then 1
          when _RemDays.Dias between 31 and 100 then 2
          when _RemDays.Dias > 100 then 3
          else 0
      end as TiempoRenta,
      '' as Estado,
      _Brands.Imagen,
      _DetCustomer
}
