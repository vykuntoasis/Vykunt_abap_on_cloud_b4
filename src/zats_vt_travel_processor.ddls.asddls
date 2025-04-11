@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'travel root view projection'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZATS_VT_TRAVEL_PROCESSOR as projection on ZATS_VT_TRAVEL

{
@ObjectModel.text.element: [ 'Description' ]
key TravelId,
@ObjectModel.text.element: [ 'AgencyName' ]
@Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Agency',
        entity.element: 'AgencyID'
     }]
AgencyId,
@Semantics.text: true
    _Agency.Name as AgencyName,
    @ObjectModel.text.element: [ 'CustomerName' ]
     @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Customer',
        entity.element: 'CustomerID'
     }]
CustomerId,
@Semantics.text: true
    _Customer.LastName as CustomerName,
BeginDate,
EndDate,
BookingFee,
TotalPrice,
CurrencyCode,
@Semantics.text: true
Description,
  @Consumption.valueHelpDefinition: [{ 
        entity.name: '/DMO/I_Overall_Status_VH',
        entity.element: 'OverallStatus'
     }]
    
@ObjectModel.text.element: [ 'StatusText' ]
OverallStatus,
CreatedBy,
CreatedAt,
LastChangedBy,
LastChangedAt,
StatusText,
Criticality, 
/* Associations */
_Agency,
_Booking :redirected to composition child ZATS_VT_BOOKING_PROCESSOR,
_Attachment :redirected to composition child ZATS_vt_ATTACH_PROCESSOR,
_Currency,
_Customer,
_OverallStatus    ,
@ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_ATS_VE_CALC'
    @EndUserText.label: 'CO2 Tax'
    virtual CO2Tax : abap.int4,
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_ATS_VE_CALC'
    @EndUserText.label: 'Week Day'
    virtual dayOfTheFlight : abap.char( 9 )
}
