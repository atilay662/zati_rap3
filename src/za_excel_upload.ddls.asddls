@EndUserText.label: 'Excel Upload'
define abstract entity ZA_EXCEL_UPLOAD
  //with parameters parameter_name : parameter_type
{
  //  @Semantics.largeObject: { mimeType: 'MimeType', fileName: 'FileName', contentDispositionPreference: #ATTACHMENT }
  //  Attachment : abap.rawstring(0);
  //  MimeType   : abap.string(0);
  //   @Semantics.mimeType: true
  //  FileName   : abap.string(0);

  @Semantics.largeObject : {
  mimeType   : 'Mimetype',
  fileName   : 'Filename',
  acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
  contentDispositionPreference: #ATTACHMENT
  }
  Attachment : abap.rawstring(0);
  @Semantics.mimeType: true
  Mimetype   : abap.char(128);
  Filename   : abap.char(128);

}
