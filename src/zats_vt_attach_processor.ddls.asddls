@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZATS_vt_ATTACH_PROCESSOR as projection on zats_vt_m_attach
{
    key TravelId,
    key Id,
    Memo,
    Attachment,
    Filetype,
    Filename,
    LastChangedAt,
    LocalCreatedAt,
    LocalCreatedBy,
    LocalLastChangedAt,
    LocalLastChangedBy,
    _Travel: redirected to parent ZATS_VT_TRAVEL_PROCESSOR
}
