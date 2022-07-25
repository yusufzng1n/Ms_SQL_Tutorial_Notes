/*
SQL' sorgular 3 ana baþlýk altýnda toplanmýþtýr.

1.DDL SORGULARI, 2.DML, 3.DCL
-DDL sorgularý nesne oluþturma , günvellemek ve silmek için kullanýlýr.

-DML sorgularý tablolara veri ekleme silmek, silmek, güncellemek ve listelemek için kullanýlýr.

-DCL sorgularý ise kullanýcýlara yetki vermek, verilen yetkileri sýnýrlandýrmak ve yetkiyi devre dýþý
 býrakmak için kullanýlýr.

**************************************************DDL SORGULARI****************************************************************

DATA DEFINITION LANGUAGE (VERÝ TANIMLAMA DÝLÝ) SORGULARI:
DDL sorgularý nesne oluþturma , günvellemek ve silmek için kullanýlýr.
Veri tabaný yapýsýný ve þema tanýmlamak için kullanýlýr.
nesne ile veritabaný, tablo, kýsýtlayýcý, tetikleyici, görünüm, alan gibi kavramlardan söz ediyoruz.
	3 temel sorgu var. CREATE ALTER DROP
	
1.CREATE:Nesne (Nesne,tablo, alan, kýsýtlayýcý vb.) oluþturmak için kullanýlan DDL sorgusudur.

GENEL KULLANIMI:
	CREATE Nesne, nesne adý þeklinde.
*/
--ÖRNEK:MAÐAZA2018 ÝSÝMLÝ BÝR VERÝ TABANI OLUÞTURALIM:

  CREATE DATABASE MAGAZA2018
  --Database 'MAGAZA2018' already exists. Choose a different database name.
  --hata mesajý açýklamasý;
  --ayný isimle mevcut veritabaný zaten var....


  --ÖRNEK:MAGAZA2018 VERÝ TABANINDA TABLO1 ÝSÝMLÝ BÝR TABLO OLUÞTURALIM.
  CREATE TABLE tablo1
  --HATA MESAJI:Incorrect syntax near 'Tablo1'.
  --AÇIKLAMASI: 'tablo1' kelimesinin yanýnda yazým hatasý...(noktalama hatasý olabilir, kod eksik olabilir, 
 -- yanlýþ yerde yazýlmýþ olabilir.)

  --CREATE TABLE tablo1 alan bilgisi içermediiði için eksik bir sorgudur.
  --Her tablo en az 1 alan içermelidi!.

  --ÖRNEK:MAÐAZA2018 ÝSÝMLÝ BÝR VERÝ TABANI OLUÞTURALIM:(ALANLARI: id (int) boþ geçilemez, ve ad (varchar50) 
  olsun boþ geçilebilir.)

  CREATE TABLE tablo1(id int not null, ad varchar(50) null)
  CREATE TABLE tablo1(id int not null, ad varchar(50) )--üstteki sorguyla aynýdýr. 
                                                       --Çünkü alanlar varsayýlan olarak tanýmlanýr.

  --NOT ÖNEMLÝ: SQL'de hangi vt. üzerinde çalýiþtýrcaksak o vt. aktifleþmelidir.VT.ye geçiþ yapmak
  -- için ya "SQL editor " menüsündeki "available Databases'ten" ilgili VT. seçilir
  -- yada USE SQL sorgu sözcüðü kullanýlýr. USE vtadi þekþlinde kullanýlýr.
  CREATE DATABASE MAGAZA2019
  USE MAGAZA2019
  CREATE TABLE tablo1(id int not null , ad varchar(25))

  --CREATE ile tablo oluþturma.
  --Adým1. ilgili vt.ye geçilir.
  --Adým2. CREATE TABLO tabloadi(alanadi1 veritürü ALAN özellikileri)
  --alanadi1 veritürü ALAN özellikileri,
  --alanadi2 veritürü ALAN özellikileri,
  --alanadi3 veritürü ALAN özellikileri,
  --.........,

  --BÝRÝNCÝL ANAHTAR(PRÝMERY KEY):HER KAYDIN BENZERSÝZ OLMASINI SAÐLAYAN ALAN ÖZ.BOÞ GEÇÝLEMEZ, TEKRAR EDÝLEMEZ.
  
  --ÖRNEK:YUKARIDAKÝ TABLOYU  TABLO2 ÞEKLÝNDE YENÝDEN OLUÞTURUP ÝD ALANINI PRÝMERY KEY YAPALIM.
  
  CREATE TABLE tablo2(id int not null PRIMARY KEY, ad varchar(25))  


 --ÖRNEK:YUKARIDAKÝ TABLOYU  TABLO3 ÞEKLÝNDE YENÝDEN OLUÞTURUP TEKRAR ÝD ALANINI PRÝMERY KEY YAPALIM.
  
  CREATE TABLE tablo3(id int not null PRIMARY KEY, ad varchar(25))  

  --IDENTITY (OTOMATÝK ARTAN SAYI ÖZELLÝÐÝ): 
  /*Bu özelliði tanýmlandýðý alanýn bilgisayar tarafýndan doldurulmasýný(konrol edilmesini) saðlar.
  Identity seed:baþlangýç deðeri
  Identity increment:artýþ miktarýný
  ifad3e eder.

  sorgu yazarken ilgili alanýn öz. kýsmýnda 
  IDENTITY(BAÞLANGIÇ DEÐERÝ, ARTIÞ MÝKTARI) ÞEKLÝNDE KULLANILIR.

   --ÖRNEK:YUKARIDAKÝ TABLOYU  TABLO4 ÞEKLÝNDE YENÝDEN OLUÞTURUP TEKRAR ÝD ALANINI PRÝMERY KEY YAPALIM.
   --id alanýný p.key ve otomatikl artan þekilde (1,1) ayarlayýp yapalým.
   */
   
     CREATE TABLE tablo4(id int not null PRIMARY KEY, ad varchar(25)) 

----------------------------------------------------------------------------------------------------------------------------

/* 2.DROP:Veri tabanýnda nesne silmek için kullanýlan SQL sorgusudur.

	  GENEL KULLANIMI:Drop, nesne, nesneadý.

	  1.VERÝTABANI SÝLME:
	  ÖRNEK:MAGAZA2018 isimle vt silelim.
	  NOT:VERÝ TABANI SÝLMEK ÝÇÝN ÖNCELLÝKLE SÝLMEK ÝSTEDÝÐÝMÝZ VT. DEN ÇIKIÞ YAPMAMIZ GEREKÝYOR.
	  
	 ÇÖZÜM :
	 */
	       
		   USE master DROP DATABASE MAGAZA2018 --silmek için yazýldý ve magaza2018.

		 /*
		  
		  2.TABLO SÝLME: VTDEN TABLO SÝLMEK ÝÇÝN ÖNCELÝKLE SÝLMEK ÝSTEDÝÐÝNÝZ VERÝ TABANINI AKTÝFLEÞTÝRMEMÝZ GEREKÝR.

		  ÖRNEK:deneme isimli vt. oluþtur. Vt.de tablo1 isimli bir alaný olan bir tablo oluþtur. tablo1 ' i sil.
		  CREATE TABLE öðrenci

		*/  

		  CREATE DATABASE DENEME
		  USE DENEME
		  CREATE TABLE tablo1( id int not null, ad varchar(25))
		 

		 
		  /*

 --*********************************************************************************************************************************************************************	  

 3.ALTER: NESNE GÜNCELLEMEK ÝÇÝN KULLANILAN DDL SORGUSUDUR. ALTER ÝLE TABLO, ALAN, KISITLAYICI, GÖRÜNÜM, 
 VB. GÜNCELLEYEBÝLÝRÝZ.

		  GENEL KULLANIMI: ALTER , NESNE , NESNEADÝ , ALTER.......SQL CÜMLECÝÐÝ.

		  MEVCUT TABLOYA ALAN EKLEMEK, MEVCUTA TABLODAN ALAN SÝLMEK, MEVCUT TABLODAKÝ ALANIN ÖZELLÝKLERÝ
		   DEÐÝÞTÝRMEK GÝBÝ ÝÞLEMLER GÜNCELLEME ÝÞLEMLERÝDÝR.

  -- ÖRNEK:YUKARIDA OLUÞTURUP SÝLDÝÐÝMÝZ TABLOYU YENÝDEN OLUÞTURALIM.tablo1' e ad alaný ekleyelim(max 25 karakter).
		   
		   */
	
	 CREATE DATABASE deneme
	USE deneme
CREATE TABLE tablo1 (id int not null , ad varchar(25))

 ALTER TABLE tablo1 
 ADD ad varchar(25)

	--tablo1' e soyad alaný ekleyelim(max 50 karakter) olacak þekilde güncelleyelim.
   ALTER TABLE tablo1
  ADD soyad varchar(50)


--tablo1' deki ad alaný ekleyelim(max 50 karakter OLACAK) þekilde güncelleyelim.

 ALTER TABLE tablo1 
 ALTER COLUMN ad varchar(50)


 --NOT: ALAN GÜNCELLERKEN ALTER TABLE TABLOADI ALTER COLUMN ALANADI "YENÝ ÖZELLÝLER" SORGU YAZILIR.
--tablo1'deki ad alanýný boþ geçilemez yapalým.

	 ALTER TABLE tablo1 
    ALTER COLUMN ad varchar(50) NOT NULL

				 
 -- DENEME VT.DEN tablo1 ÝSÝMLÝ TABLOYU SÝLELÝM. ADIM ADIM AÞÞAÐIDAKÝ ÝÞLEMLERÝ YAPALIM.


				 --1. Öðrenci ismli tablo oluþturalým(ogrno ad alanlarý olsun)
				 	CREATE TABLE öðrenci(id int not null , ad varchar(25))

				 --2. oluþtýrduðumuz tabloya soyad ve cins alanlarýný ekleyelim.
				 ALTER TABLE öðrenci
				 ADD soyad varchar(30), cins varchar(5)

				 --3. ad ve soyad alanýný 30 karakter olarak güncelleyelim.
				 ALTER TABLE öðrenci
				 ALTER COLUMN ad varchar(30)
				 ALTER TABLE öðrenci
				 ALTER COLUMN soyad varchar(30)

				 --4. ogrno alanlanýný birincil anahtar yapalým.
				-- NOT:Alaný sonradan birincil anahtar yapmak için KISITLAYICI TANIMLAMASI yapmalýyýz.
                     --Sonraki konularýmýzda bu soruya geri döneceðiz.
                                       ALTER TABLE ogrenci
                                       ADD PRIMARY KEY (ogrno) 

				 --5. cins alanýný girelim.
				 ALTER TABLE öðrenci
				 DROP COLUMN cins 

				 --6. ad ve soyad alanýný boþ geçilemez yapalým.
				 alter table öðrenci
				 ALTER COLUMN ad varchar(30) not null
				 ALTER TABLE öðrenci 
				 ALTER COLUMN soyad varchar(30) not null

--********************************************************************************************************************************************************

      --KISITLAYICILAR --
  /*
	  Veri üzerindeki mantýksal sýnýrlamalara KISIT adý verilir. 

	 TÜRLERÝ:
	 1-) Birincil Anahtar Kýsýtlayýcýsý 
	 2-) Yabancýl Anahtar Kýsýtlayýcýsý : Tablolar Arasý iliþki kurarken tablolardaki ortak alanlarý baðlar.
	 3-) NOT NULL(Boþ geçilemez)
	 4-) Tekil Kýsýtlayýcýsý : Kullanýldýgý alana girilen deðerlerin birbirinden farklý olmasýný saðlayar.
	 5-) Varsayýlan Deðer Kýsýtlayýcýsý : Alana varsayýlan deðer atanmasýný saðlar sonradan alandaki deðer 
	 istenilirse deðiþtirilebilir.
	 6-) Kontrol Kýsýtlayýcýsý : Alana girilecek deðerin belli aralýkta veya belli þartý saðlar durumda
	  olmasýný denetler.

	 --UYGULAMA ÖRNEÐÝ;
	  MAGAZATAKIP isimli bir veritabaný oluþturalým
	  Tablolarý ve alanlarý aþaðýdaki gibi olsun:
	  1.musteriler : mno,ad,soyad,tel,email,adres,sehir(varchar alanlar max50)
	  2.satisler : sno,mno,tarih,,tfiyat
	  3.kategoriler : kno,ad,
	  4.urunler : uno,kno,ad,fiyat,stok
	  5.satisdetay :dno,sno,uno,miktar

	  1.musteriler...  PKEY: MNO             FKEY: -
	  2.satisler...    PKEY: SNO             FKEY: MNO
	  3.kategoriler... PKEY: KNO             FKEY: -
	  4.urunler...     PKEY: UNO             FKEY: KNO TEKRAR EDEBÝLÝR
	  5.satisdetay...  PKEY: DNO             FKEY: SNO, UNO

	  örneðin detay tablosunda 
	  dno  sno  uno miktar
	  1     1    3   10
	  2     1    4   1
	  3     1    2   3
	  4     2    2   2
	  olsun.. sno ve uno  tekrar edebilir YABANCIK anahtarlardýr.
	  sno satislar tablosuyla, uno da urunler tablosuyla SATÝSDETAY tablosunu baðlar

	  Her tabloda 1TANE PKEY olabilirken BÝRDEN ÇOK FKEY olabilir.

 */
 --Musteriler TABLOSU

   CREATE DATABASE MAGAZATAKIP
   USE MAGAZATAKIP
   Create table musteriler(
   mno int not null primary key identity (1,1), ad varchar(50),
   soyad varchar(50),tel int not null, email varchar(50), adres varchar(50),sehir varchar(50))
    
  --Satislar TABLOSU

    CREATE DATABASE MAGAZATAKIP
	USE MAGAZATAKIP
	Create table satislar(
	sno int not null primary key identity (1,1),--mno,tarih,,tfiyat
	mno int,
	tarih int,
	tfiyat int
	)

   --Kategoriler TABLO
   CREATE DATABASE MAGAZATAKIP
   USE MAGAZATAKIP
   CREATE table kategoriler(
   kno int not null primary key identity (1,1), ad varchar(50))

   --Urunler TABLOSU
      CREATE DATABASE MAGAZATAKIP
   USE MAGAZATAKIP
   CREATE table urunler(
   uno int not null primary key identity (1,1), 
   kno int,
   ad varchar(50),
   fiyat int,
   stok int
   )
   
  --satisdetay TABLOSU
   CREATE DATABASE MAGAZATAKIP
   USE MAGAZATAKIP
   CREATE table satisdetay(
   dno int not null primary key identity (1,1),--dno,sno,uno,miktar
   sno int,
   uno int,
   miktar int
   )				         

   --Musteriler tablosundaki ad, soyad  alanlarýný max 25 karakter boþ geçilemez yapnýz.
   -- tel alanýný varhcar(11)olarak güncelleyiniz
       ALTER TABLE musteriler
	  ALTER COLUMN ad varchar(25)
	   ALTER TABLE musteriler
     ALTER COLUMN tel varchar(11)
   --kategoriler tablosundaki ada alanýný max 25 karakter ve boþ geçilemez olarak güncelleyiniz.
   -- satislar tablosundaki tarih alanýný smalldatetime olarak güncelleyiniz.
   --urunler tablosundaki ad alanýný max 25 karakter ve boþ geçilemez olarak güncelleyiniz.
   --musteriler tablosundaki adres ve sehir alanlarýný siliniz.
   --musteriler tablosuna yeniden sildiðiniz alanlarý ekleyiniz.
   --MAGAZATAKIP veritabanýný siliniz.

  -- *********************************************************************************************************************************************
   /*
   SQL'De Genel olarak sorgularý 3 ana gruba ayýrdýðýmýzý belirtmiþtik.
   
         *****     DML DATA MANÝPULATÝON LANGUAGE      *******
		             (Veri Ýþleme Dili)
		  
   Bu baþlýk alýntýnda 4 temel sorgumuz bulunmaktadýr.
   Bunlar:Insert,Select, Update, Delete'dir.
   

   1.INSERT: Tablolara kayýt eklemek için kullanýlan DML sorgusudur.

   Genel Kullanýmý:

   A.) Tablodaki belirli alanlara deðer girilecekse aþaðýdaki kullaným tercih edilir:

   INSERT INTO tabloadi
           (alanadi1,alanadi2,alanadi3,...alanadin)
   VALUES
           (deðer1,deðer2,deðer3...deðern)

	B.) Veya; DÝKKAT!
	Tablodaki "TÜM ALANLARA" Veri girilecekse kullaným aþaðýdaki gibi olabilir


	INSERT INTO tabloadý VALUES
	(Tablodaki alan sýralamasýna göre "SIRASIYLA" deðerler)

   */
   
   --Ör:musteriler tablosuna ALÝ CAN kaydýný ekleyelim:
   
    INSERT INTO musteriler (ad,soyad)VALUES('ALÝ','CAN')
  
  --Ör:musteriler tablosuna ALÝ CAN 5555555555 alican@gmail.com HALKALI ÝSTANBUL kaydýný ekleyelim:
   SELECT * FROM musteriler
  INSERT INTO musteriler (ad,soyad,tel,email,adres,sehir)
  VALUES('ALÝ','CAN','5555555555','alican@gmail.com','HALKALI','ISTANBUL')
  --Veya;
  INSERT INTO musteriler
  VALUES('VELÝ','CAN','5555555553','velican@gmail.com','HALKALI','ISTANBUL')

  --Ör: Kategoriler tablosuna KÝTAP kaydýný ekleyelim:
  INSERT INTO kategoriler VALUES('KÝTAP')

   --Ör: Kategoriler tablosuna BÝLGÝSAYAR kaydýný alan adi kullanarak ekleyelim:  SELECT * FROM kategoriler
   INSERT INTO kategoriler (ad)VALUES('BÝLGÝSAYAR')

   -- HATALI KULLANIMLARA ÖRNEKLER:
   CREATE TABLE silinecek(id int not null, primary key, ad varchar(10))
   --id (int), ad (varchar)
   INSERT INTO silinecek VALUES('ali')
   --HATA:Column name or nunber of supplied values does not match table definition.
   --HATA:alan adý veya girilen dðer adedi tablodaki tablodaki tanýmlamayla uyuþmuyor!
   --tablodaki identity tanýmlamadýk dolayýsýyla 2 alana veri girmek gerekirken sadece 
   --1alana deðer girmeye çalýþtýðýmýz için HATALIDIR 
   INSERT INTO silinecek VALUES ('ali','can')
   --HATA:Conversion failed when converting the varchar 'ali'to data type int.
   --HATA:Alana girilen deðer ile alanýn veri tipi uyuþmuyor!
   --tabloda id alaný int belirtilmiþ ama biz 'ali' stringini int alana eklemeye çalýþtýgýmýz icin hatalýdýr.
   drop table silinecek

--*******************************************************************************************************************************************
 
  --       ** ATTACH,  DETACH ÝÞLEMLERÝ  **

/* ATTACH: VERÝTABANINI ÝÇE AKTARMA ÝÞLEMÝDÝR.
BÝr vtyi bir bilgisayardan baþka bir bilgisayara taþýrken .mdf ve .log uzantýlý vtye ait dosyalarý
C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA
konumuna kaydedip Object Explorer Panelýnden Databases baþlýðýna sað týk->attach komutu seçilir
  

 DETACH:VERÝTABANINI DIÞA AKTARMA ÝÞLEMÝDÝR.
 BÝr vtyi bir bilgisayardan baþka bir bilgisayara taþýrken .mdf ve .log uzantýlý vtye ait dosyalarý
 Öncelikle DIÞA AKTARMAK gerekir.

 Detach Ýþlemi:Object Explorer Panelýnde ilgili vt üzerine sað týk -->Tasks-->Detach komutu seçilir
*/

------------------------------------------------------------------------------------------------------------------------------------
 --ÖRN: urunler tablosunda bütün alanlara deðer girilecek þekilde 1 adet kayýt ekleyin.
INSERT INTO urunler VALUES (2,'HP PC',3000,10)

 --ÖRN: musteriler tablosuna telefon numaranýz dýþýnda tüm kiþisel bilgilerinizi giriniz.






	