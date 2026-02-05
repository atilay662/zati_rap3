@EndUserText.label: 'Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_ATI_CUSTOM_QUERY'
define root custom entity ZI_ATI_CUSTOM_CE
 //with parameters parameter_name : parameter_type
{

  @UI.facet: [ { id: 'HeaderAct',
                 purpose: #STANDARD,
                 position: 1,
                 label: 'Müşteri Bilgileri',
                 type: #IDENTIFICATION_REFERENCE },
               { id: 'ItemAct',
                 purpose: #STANDARD,
                 position: 2,
                 label: 'Aktivite Detay',
                 type: #LINEITEM_REFERENCE
                // targetElement: '_akvkal' 
                 } ]
  @UI.identification: [ { position: 1, label: 'Müşteri Id' } ]
  
  @UI.lineItem: [ { position: 1 },
                  { label: 'Müşteri Id' },
                  { type: #FOR_ACTION, dataAction: 'editLine', label: 'Edit Line' },
                  { type: #FOR_ACTION, dataAction: 'uploadExcel', label: 'Upload Excel' }
                   ]
  key musteriid : zati_e_003 ;
  musteritnm    : abap.char(20);
  sehir         : abap.char(20);
  adres         : abap.sstring(70);
  sorumlu       : abap.char(20);
  ticketsayisi  : abap.int8;
  toplamsaat    : abap.int8;
  onaydrm       : zati_e_002;
  @Semantics.amount.currencyCode : 'currency'
  toptutar      : abap.curr(12,2);
  currency      : /dmo/currency_code;
  uname         : syuname;
  timestamp     : timestamp;
  aedat         : abap.dats;
  psotm         : abap.tims;
  lastchantime  : last_changed;
}
