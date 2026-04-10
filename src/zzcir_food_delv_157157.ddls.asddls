@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZCIFOOD_DELV_157157'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZCIR_FOOD_DELV_157157
  as select from ZFOOD_DELV_157
{
  key order_id as OrderID,
  customer_name as CustomerName,
  food_item as FoodItem,
  quantity as Quantity,
  order_status as OrderStatus,
  delivery_agent as DeliveryAgent,
  @Semantics.amount.currencyCode: 'Currency'
  total_amount as TotalAmount,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  @Semantics.user.createdBy: true
  loc_created_by as LocCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  loc_created_at as LocCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  loc_last_chg_by as LocLastChgBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  loc_last_chg_at as LocLastChgAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
