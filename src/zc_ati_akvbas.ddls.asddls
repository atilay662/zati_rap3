@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_ATI_AKVBAS'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZC_ATI_AKVBAS
  provider contract transactional_query
  as projection on ZI_ATI_AKVBAS

{
  key Musteriid,
      Musteritnm,
      Sehir,
      Adres,
      Sorumlu,
      Ticketsayisi,
      Toplamsaat,
      Onaydrm,
      @Semantics.amount.currencyCode : 'currency'
      Toptutar,
      Currency,
      Uname,
      Timestamp,
      Aedat,
      Psotm,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      Lastchantime,
      @Semantics.largeObject : {
      mimeType: 'Mimetype',
      fileName: 'Filename',
      acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
      contentDispositionPreference: #ATTACHMENT
      }
      Attachment,
      @Semantics.mimeType: true
      Mimetype,
      Filename,
      /* Associations */
      _akvkal : redirected to composition child ZC_ATI_AKVKAL
}
