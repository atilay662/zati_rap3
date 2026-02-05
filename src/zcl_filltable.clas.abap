
CLASS zcl_filltable DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_filltable IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_head TYPE STANDARD TABLE OF zati_aktv_baslik WITH EMPTY KEY,
          lt_item TYPE STANDARD TABLE OF zati_aktv_kalem WITH EMPTY KEY.

    TRY.

        lt_head = VALUE #(
        (
        musteriid    = '1'
        musteritnm   = 'Ajinomoto'
        sehir        = 'İstanbul'
        adres        = 'Maslak, AOS 55. Sokak No:42 B Blok Sitesi No: 4/585'
        sorumlu      = 'Tarık Şekerci'
        "sozlesme     = 'Yıllık'
        ticketsayisi = '16'
        toplamsaat   = '230'
        )

        (
        musteriid    = '2'
        musteritnm      = 'Anadolu Etap'
        sehir        = 'Muğla'
        adres        = 'Emirbeyazıt Mahallesi, Cumhuriyet Meydanı No:3'
        sorumlu      = 'Atakan Aydın'
        "sozlesme     = 'Aylık'
        ticketsayisi = '44'
        toplamsaat   = '2324'
        )
        (
        musteriid    = '3'
        musteritnm      = 'Doğtaş'
        sehir        = 'Antalya'
        adres        = 'Elmalı Mh. Cumhuriyet Meydanı No:72 07280 Muratpaşa'
        sorumlu      = 'Duygu Turhan'
        "sozlesme     = 'Yıllık'
        ticketsayisi = '116'
        toplamsaat   = '77'
        )

        (
        musteriid    = '4'
        musteritnm      = 'İzocam'
        sehir        = 'Elazığ'
        adres        = 'Kültür Mah. Zübeyde Hanım. Cad. No:1 Elazığ PK:23100'
        sorumlu      = 'Kemal Aydın'
        "sozlesme     = 'Yıllık'
        ticketsayisi = '164'
        toplamsaat   = '2230'
        )

        (
        musteriid    = '5'
        musteritnm      = 'İskur'
        sehir        = 'Malatya'
        adres        = 'İstiklal Mah. 15 Temmuz Millet Meydanı Cad. No:1'
        sorumlu      = 'Emre Aksoy'
        "sozlesme     = 'Yıllık'
        ticketsayisi = '6'
        toplamsaat   = '14'
        )
        ).

        DELETE FROM zati_aktv_baslik.
        COMMIT WORK AND WAIT.

        MODIFY zati_aktv_baslik FROM TABLE @lt_head.

        out->write( |{ sy-dbcnt } Başlık tablosu güncellendi | ).

        lt_item = VALUE #(

        ( musteriid  = lt_head[ 1 ]-musteriid
          ticketno   = 'FS2034'
          aktiviteid = '132434'
          projeturu  = 'İç Proje'
          lokasyon   = 'Ofis'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 1 ]-musteriid
          ticketno   = 'FS1135'
          aktiviteid = '245574'
          projeturu  = 'Proje'
          lokasyon   = 'Müşteri'
          ortam      = 'Şehir Dışı' )

        ( musteriid  = lt_head[ 1 ]-musteriid
          ticketno   = 'FS1138'
          aktiviteid = '126213'
          projeturu  = 'Destek'
          lokasyon   = 'Ofis'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 1 ]-musteriid
          ticketno   = 'FS3435'
          aktiviteid = '353312'
          projeturu  = 'Destek'
          lokasyon   = 'Ev'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 2 ]-musteriid
          ticketno   = 'FS2385'
          aktiviteid = '953411'
          projeturu  = 'İç Proje'
          lokasyon   = 'Ofis'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 2 ]-musteriid
          ticketno   = 'FS5381'
          aktiviteid = '743445'
          projeturu  = 'İç Proje'
          lokasyon   = 'Müşteri'
          ortam      = 'Şehir Dışı' )

        ( musteriid  = lt_head[ 2 ]-musteriid
          ticketno   = 'FS5325'
          aktiviteid = '11555'
          projeturu  = 'İç Proje'
          lokasyon   = 'Ofis'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 3 ]-musteriid
          ticketno   = 'FS2389'
          aktiviteid = '1544377'
          projeturu  = 'İç Proje'
          lokasyon   = 'Destek'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 3 ]-musteriid
          ticketno   = 'FS1489'
          aktiviteid = '1324344'
          projeturu  = 'İç Proje'
          lokasyon   = 'Müşteri'
          ortam      = 'Şehir Dışı' )

        ( musteriid  = lt_head[ 4 ]-musteriid
          ticketno   = 'FS2281'
          aktiviteid = '9434344'
          projeturu  = 'Destek'
          lokasyon   = 'Ofis'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 4 ]-musteriid
          ticketno   = 'FS7289'
          aktiviteid = '1329743'
          projeturu  = 'İç Proje'
          lokasyon   = 'Müşteri'
          ortam      = 'Şehir Dışı' )

        ( musteriid  = lt_head[ 5 ]-musteriid
          ticketno   = 'FS2467'
          aktiviteid = '1324344'
          projeturu  = 'Destek'
          lokasyon   = 'Destek'
          ortam      = 'Şehir İçi' )

        ( musteriid  = lt_head[ 5 ]-musteriid
          ticketno   = 'FS2468'
          aktiviteid = '1324343'
          projeturu  = 'İç Proje'
          lokasyon   = 'Müşteri'
          ortam      = 'Şehir Dışı' )
        ).

        DELETE FROM zati_aktv_kalem.

        INSERT zati_aktv_kalem FROM TABLE @lt_item.

        out->write( |{ sy-dbcnt } Kalem tablosu güncellendi| ).

        COMMIT WORK.

      CATCH cx_uuid_error.
        "handle exception
    ENDTRY.
  ENDMETHOD.
ENDCLASS.

