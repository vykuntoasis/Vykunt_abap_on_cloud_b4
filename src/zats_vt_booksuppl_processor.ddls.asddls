@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'suppler project'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZATS_VT_BOOKSUPPL_PROCESSOR as projection on ZATS_VT_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking : redirected to parent ZATS_VT_BOOKING_PROCESSOR,
    
    
    _Travel : redirected to ZATS_VT_TRAVEL_PROCESSOR
}
