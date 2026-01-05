@EndUserText.label: 'Excel Upload'
define abstract entity ZA_EXCEL_UPLOAD
  //with parameters parameter_name : parameter_type
{
  @Semantics.largeObject : {
  mimeType   : 'Mimetype',
  fileName   : 'Filename',
  acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
  contentDispositionPreference: #ATTACHMENT
  }
  @UI.hidden : false
  Attachment : abap.rawstring(0);
  @UI.hidden : true
  @Semantics.mimeType: true
  Mimetype   : abap.char(128);
  @UI.hidden : true
  Filename   : abap.char(128);
}
