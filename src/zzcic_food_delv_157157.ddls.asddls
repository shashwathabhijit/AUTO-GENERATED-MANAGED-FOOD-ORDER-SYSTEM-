@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCIFOOD_DELV_157157'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_FOOD_DELV_157157
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_FOOD_DELV_157157
  association [1..1] to ZZCIR_FOOD_DELV_157157 as _BaseEntity on $projection.ORDERID = _BaseEntity.ORDERID
{
  key OrderID,
  CustomerName,
  FoodItem,
  Quantity,
  OrderStatus,
  DeliveryAgent,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  TotalAmount,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    User.Createdby: true
  }
  LocCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocLastChgBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocLastChgAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
