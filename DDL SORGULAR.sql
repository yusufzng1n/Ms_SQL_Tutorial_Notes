/*
SQL' sorgular 3 ana ba�l�k alt�nda toplanm��t�r.

1.DDL SORGULARI, 2.DML, 3.DCL
-DDL sorgular� nesne olu�turma , g�nvellemek ve silmek i�in kullan�l�r.

-DML sorgular� tablolara veri ekleme silmek, silmek, g�ncellemek ve listelemek i�in kullan�l�r.

-DCL sorgular� ise kullan�c�lara yetki vermek, verilen yetkileri s�n�rland�rmak ve yetkiyi devre d���
 b�rakmak i�in kullan�l�r.

**************************************************DDL SORGULARI****************************************************************

DATA DEFINITION LANGUAGE (VER� TANIMLAMA D�L�) SORGULARI:
DDL sorgular� nesne olu�turma , g�nvellemek ve silmek i�in kullan�l�r.
Veri taban� yap�s�n� ve �ema tan�mlamak i�in kullan�l�r.
nesne ile veritaban�, tablo, k�s�tlay�c�, tetikleyici, g�r�n�m, alan gibi kavramlardan s�z ediyoruz.
	3 temel sorgu var. CREATE ALTER DROP
	
1.CREATE:Nesne (Nesne,tablo, alan, k�s�tlay�c� vb.) olu�turmak i�in kullan�lan DDL sorgusudur.

GENEL KULLANIMI:
	CREATE Nesne, nesne ad� �eklinde.
*/
--�RNEK:MA�AZA2018 �S�ML� B�R VER� TABANI OLU�TURALIM:

  CREATE DATABASE MAGAZA2018
  --Database 'MAGAZA2018' already exists. Choose a different database name.
  --hata mesaj� a��klamas�;
  --ayn� isimle mevcut veritaban� zaten var....


  --�RNEK:MAGAZA2018 VER� TABANINDA TABLO1 �S�ML� B�R TABLO OLU�TURALIM.
  CREATE TABLE tablo1
  --HATA MESAJI:Incorrect syntax near 'Tablo1'.
  --A�IKLAMASI: 'tablo1' kelimesinin yan�nda yaz�m hatas�...(noktalama hatas� olabilir, kod eksik olabilir, 
 -- yanl�� yerde yaz�lm�� olabilir.)

  --CREATE TABLE tablo1 alan bilgisi i�ermedii�i i�in eksik bir sorgudur.
  --Her tablo en az 1 alan i�ermelidi!.

  --�RNEK:MA�AZA2018 �S�ML� B�R VER� TABANI OLU�TURALIM:(ALANLARI: id (int) bo� ge�ilemez, ve ad (varchar50) 
  olsun bo� ge�ilebilir.)

  CREATE TABLE tablo1(id int not null, ad varchar(50) null)
  CREATE TABLE tablo1(id int not null, ad varchar(50) )--�stteki sorguyla ayn�d�r. 
                                                       --��nk� alanlar varsay�lan olarak tan�mlan�r.

  --NOT �NEML�: SQL'de hangi vt. �zerinde �al�i�t�rcaksak o vt. aktifle�melidir.VT.ye ge�i� yapmak
  -- i�in ya "SQL editor " men�s�ndeki "available Databases'ten" ilgili VT. se�ilir
  -- yada USE SQL sorgu s�zc��� kullan�l�r. USE vtadi �ek�linde kullan�l�r.
  CREATE DATABASE MAGAZA2019
  USE MAGAZA2019
  CREATE TABLE tablo1(id int not null , ad varchar(25))

  --CREATE ile tablo olu�turma.
  --Ad�m1. ilgili vt.ye ge�ilir.
  --Ad�m2. CREATE TABLO tabloadi(alanadi1 verit�r� ALAN �zellikileri)
  --alanadi1 verit�r� ALAN �zellikileri,
  --alanadi2 verit�r� ALAN �zellikileri,
  --alanadi3 verit�r� ALAN �zellikileri,
  --.........,

  --B�R�NC�L ANAHTAR(PR�MERY KEY):HER KAYDIN BENZERS�Z OLMASINI SA�LAYAN ALAN �Z.BO� GE��LEMEZ, TEKRAR ED�LEMEZ.
  
  --�RNEK:YUKARIDAK� TABLOYU  TABLO2 �EKL�NDE YEN�DEN OLU�TURUP �D ALANINI PR�MERY KEY YAPALIM.
  
  CREATE TABLE tablo2(id int not null PRIMARY KEY, ad varchar(25))  


 --�RNEK:YUKARIDAK� TABLOYU  TABLO3 �EKL�NDE YEN�DEN OLU�TURUP TEKRAR �D ALANINI PR�MERY KEY YAPALIM.
  
  CREATE TABLE tablo3(id int not null PRIMARY KEY, ad varchar(25))  

  --IDENTITY (OTOMAT�K ARTAN SAYI �ZELL���): 
  /*Bu �zelli�i tan�mland��� alan�n bilgisayar taraf�ndan doldurulmas�n�(konrol edilmesini) sa�lar.
  Identity seed:ba�lang�� de�eri
  Identity increment:art�� miktar�n�
  ifad3e eder.

  sorgu yazarken ilgili alan�n �z. k�sm�nda 
  IDENTITY(BA�LANGI� DE�ER�, ARTI� M�KTARI) �EKL�NDE KULLANILIR.

   --�RNEK:YUKARIDAK� TABLOYU  TABLO4 �EKL�NDE YEN�DEN OLU�TURUP TEKRAR �D ALANINI PR�MERY KEY YAPALIM.
   --id alan�n� p.key ve otomatikl artan �ekilde (1,1) ayarlay�p yapal�m.
   */
   
     CREATE TABLE tablo4(id int not null PRIMARY KEY, ad varchar(25)) 

----------------------------------------------------------------------------------------------------------------------------

/* 2.DROP:Veri taban�nda nesne silmek i�in kullan�lan SQL sorgusudur.

	  GENEL KULLANIMI:Drop, nesne, nesnead�.

	  1.VER�TABANI S�LME:
	  �RNEK:MAGAZA2018 isimle vt silelim.
	  NOT:VER� TABANI S�LMEK ���N �NCELL�KLE S�LMEK �STED���M�Z VT. DEN �IKI� YAPMAMIZ GEREK�YOR.
	  
	 ��Z�M :
	 */
	       
		   USE master DROP DATABASE MAGAZA2018 --silmek i�in yaz�ld� ve magaza2018.

		 /*
		  
		  2.TABLO S�LME: VTDEN TABLO S�LMEK ���N �NCEL�KLE S�LMEK �STED���N�Z VER� TABANINI AKT�FLE�T�RMEM�Z GEREK�R.

		  �RNEK:deneme isimli vt. olu�tur. Vt.de tablo1 isimli bir alan� olan bir tablo olu�tur. tablo1 ' i sil.
		  CREATE TABLE ��renci

		*/  

		  CREATE DATABASE DENEME
		  USE DENEME
		  CREATE TABLE tablo1( id int not null, ad varchar(25))
		 

		 
		  /*

 --*********************************************************************************************************************************************************************	  

 3.ALTER: NESNE G�NCELLEMEK ���N KULLANILAN DDL SORGUSUDUR. ALTER �LE TABLO, ALAN, KISITLAYICI, G�R�N�M, 
 VB. G�NCELLEYEB�L�R�Z.

		  GENEL KULLANIMI: ALTER , NESNE , NESNEAD� , ALTER.......SQL C�MLEC���.

		  MEVCUT TABLOYA ALAN EKLEMEK, MEVCUTA TABLODAN ALAN S�LMEK, MEVCUT TABLODAK� ALANIN �ZELL�KLER�
		   DE���T�RMEK G�B� ��LEMLER G�NCELLEME ��LEMLER�D�R.

  -- �RNEK:YUKARIDA OLU�TURUP S�LD���M�Z TABLOYU YEN�DEN OLU�TURALIM.tablo1' e ad alan� ekleyelim(max 25 karakter).
		   
		   */
	
	 CREATE DATABASE deneme
	USE deneme
CREATE TABLE tablo1 (id int not null , ad varchar(25))

 ALTER TABLE tablo1 
 ADD ad varchar(25)

	--tablo1' e soyad alan� ekleyelim(max 50 karakter) olacak �ekilde g�ncelleyelim.
   ALTER TABLE tablo1
  ADD soyad varchar(50)


--tablo1' deki ad alan� ekleyelim(max 50 karakter OLACAK) �ekilde g�ncelleyelim.

 ALTER TABLE tablo1 
 ALTER COLUMN ad varchar(50)


 --NOT: ALAN G�NCELLERKEN ALTER TABLE TABLOADI ALTER COLUMN ALANADI "YEN� �ZELL�LER" SORGU YAZILIR.
--tablo1'deki ad alan�n� bo� ge�ilemez yapal�m.

	 ALTER TABLE tablo1 
    ALTER COLUMN ad varchar(50) NOT NULL

				 
 -- DENEME VT.DEN tablo1 �S�ML� TABLOYU S�LEL�M. ADIM ADIM A��A�IDAK� ��LEMLER� YAPALIM.


				 --1. ��renci ismli tablo olu�tural�m(ogrno ad alanlar� olsun)
				 	CREATE TABLE ��renci(id int not null , ad varchar(25))

				 --2. olu�t�rdu�umuz tabloya soyad ve cins alanlar�n� ekleyelim.
				 ALTER TABLE ��renci
				 ADD soyad varchar(30), cins varchar(5)

				 --3. ad ve soyad alan�n� 30 karakter olarak g�ncelleyelim.
				 ALTER TABLE ��renci
				 ALTER COLUMN ad varchar(30)
				 ALTER TABLE ��renci
				 ALTER COLUMN soyad varchar(30)

				 --4. ogrno alanlan�n� birincil anahtar yapal�m.
				-- NOT:Alan� sonradan birincil anahtar yapmak i�in KISITLAYICI TANIMLAMASI yapmal�y�z.
                     --Sonraki konular�m�zda bu soruya geri d�nece�iz.
                                       ALTER TABLE ogrenci
                                       ADD PRIMARY KEY (ogrno) 

				 --5. cins alan�n� girelim.
				 ALTER TABLE ��renci
				 DROP COLUMN cins 

				 --6. ad ve soyad alan�n� bo� ge�ilemez yapal�m.
				 alter table ��renci
				 ALTER COLUMN ad varchar(30) not null
				 ALTER TABLE ��renci 
				 ALTER COLUMN soyad varchar(30) not null

--********************************************************************************************************************************************************

      --KISITLAYICILAR --
  /*
	  Veri �zerindeki mant�ksal s�n�rlamalara KISIT ad� verilir. 

	 T�RLER�:
	 1-) Birincil Anahtar K�s�tlay�c�s� 
	 2-) Yabanc�l Anahtar K�s�tlay�c�s� : Tablolar Aras� ili�ki kurarken tablolardaki ortak alanlar� ba�lar.
	 3-) NOT NULL(Bo� ge�ilemez)
	 4-) Tekil K�s�tlay�c�s� : Kullan�ld�g� alana girilen de�erlerin birbirinden farkl� olmas�n� sa�layar.
	 5-) Varsay�lan De�er K�s�tlay�c�s� : Alana varsay�lan de�er atanmas�n� sa�lar sonradan alandaki de�er 
	 istenilirse de�i�tirilebilir.
	 6-) Kontrol K�s�tlay�c�s� : Alana girilecek de�erin belli aral�kta veya belli �art� sa�lar durumda
	  olmas�n� denetler.

	 --UYGULAMA �RNE��;
	  MAGAZATAKIP isimli bir veritaban� olu�tural�m
	  Tablolar� ve alanlar� a�a��daki gibi olsun:
	  1.musteriler : mno,ad,soyad,tel,email,adres,sehir(varchar alanlar max50)
	  2.satisler : sno,mno,tarih,,tfiyat
	  3.kategoriler : kno,ad,
	  4.urunler : uno,kno,ad,fiyat,stok
	  5.satisdetay :dno,sno,uno,miktar

	  1.musteriler...  PKEY: MNO             FKEY: -
	  2.satisler...    PKEY: SNO             FKEY: MNO
	  3.kategoriler... PKEY: KNO             FKEY: -
	  4.urunler...     PKEY: UNO             FKEY: KNO TEKRAR EDEB�L�R
	  5.satisdetay...  PKEY: DNO             FKEY: SNO, UNO

	  �rne�in detay tablosunda 
	  dno  sno  uno miktar
	  1     1    3   10
	  2     1    4   1
	  3     1    2   3
	  4     2    2   2
	  olsun.. sno ve uno  tekrar edebilir YABANCIK anahtarlard�r.
	  sno satislar tablosuyla, uno da urunler tablosuyla SAT�SDETAY tablosunu ba�lar

	  Her tabloda 1TANE PKEY olabilirken B�RDEN �OK FKEY olabilir.

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

   --Musteriler tablosundaki ad, soyad  alanlar�n� max 25 karakter bo� ge�ilemez yapn�z.
   -- tel alan�n� varhcar(11)olarak g�ncelleyiniz
       ALTER TABLE musteriler
	  ALTER COLUMN ad varchar(25)
	   ALTER TABLE musteriler
     ALTER COLUMN tel varchar(11)
   --kategoriler tablosundaki ada alan�n� max 25 karakter ve bo� ge�ilemez olarak g�ncelleyiniz.
   -- satislar tablosundaki tarih alan�n� smalldatetime olarak g�ncelleyiniz.
   --urunler tablosundaki ad alan�n� max 25 karakter ve bo� ge�ilemez olarak g�ncelleyiniz.
   --musteriler tablosundaki adres ve sehir alanlar�n� siliniz.
   --musteriler tablosuna yeniden sildi�iniz alanlar� ekleyiniz.
   --MAGAZATAKIP veritaban�n� siliniz.

  -- *********************************************************************************************************************************************
   /*
   SQL'De Genel olarak sorgular� 3 ana gruba ay�rd���m�z� belirtmi�tik.
   
         *****     DML DATA MAN�PULAT�ON LANGUAGE      *******
		             (Veri ��leme Dili)
		  
   Bu ba�l�k al�nt�nda 4 temel sorgumuz bulunmaktad�r.
   Bunlar:Insert,Select, Update, Delete'dir.
   

   1.INSERT: Tablolara kay�t eklemek i�in kullan�lan DML sorgusudur.

   Genel Kullan�m�:

   A.) Tablodaki belirli alanlara de�er girilecekse a�a��daki kullan�m tercih edilir:

   INSERT INTO tabloadi
           (alanadi1,alanadi2,alanadi3,...alanadin)
   VALUES
           (de�er1,de�er2,de�er3...de�ern)

	B.) Veya; D�KKAT!
	Tablodaki "T�M ALANLARA" Veri girilecekse kullan�m a�a��daki gibi olabilir


	INSERT INTO tabload� VALUES
	(Tablodaki alan s�ralamas�na g�re "SIRASIYLA" de�erler)

   */
   
   --�r:musteriler tablosuna AL� CAN kayd�n� ekleyelim:
   
    INSERT INTO musteriler (ad,soyad)VALUES('AL�','CAN')
  
  --�r:musteriler tablosuna AL� CAN 5555555555 alican@gmail.com HALKALI �STANBUL kayd�n� ekleyelim:
   SELECT * FROM musteriler
  INSERT INTO musteriler (ad,soyad,tel,email,adres,sehir)
  VALUES('AL�','CAN','5555555555','alican@gmail.com','HALKALI','ISTANBUL')
  --Veya;
  INSERT INTO musteriler
  VALUES('VEL�','CAN','5555555553','velican@gmail.com','HALKALI','ISTANBUL')

  --�r: Kategoriler tablosuna K�TAP kayd�n� ekleyelim:
  INSERT INTO kategoriler VALUES('K�TAP')

   --�r: Kategoriler tablosuna B�LG�SAYAR kayd�n� alan adi kullanarak ekleyelim:  SELECT * FROM kategoriler
   INSERT INTO kategoriler (ad)VALUES('B�LG�SAYAR')

   -- HATALI KULLANIMLARA �RNEKLER:
   CREATE TABLE silinecek(id int not null, primary key, ad varchar(10))
   --id (int), ad (varchar)
   INSERT INTO silinecek VALUES('ali')
   --HATA:Column name or nunber of supplied values does not match table definition.
   --HATA:alan ad� veya girilen d�er adedi tablodaki tablodaki tan�mlamayla uyu�muyor!
   --tablodaki identity tan�mlamad�k dolay�s�yla 2 alana veri girmek gerekirken sadece 
   --1alana de�er girmeye �al��t���m�z i�in HATALIDIR 
   INSERT INTO silinecek VALUES ('ali','can')
   --HATA:Conversion failed when converting the varchar 'ali'to data type int.
   --HATA:Alana girilen de�er ile alan�n veri tipi uyu�muyor!
   --tabloda id alan� int belirtilmi� ama biz 'ali' stringini int alana eklemeye �al��t�g�m�z icin hatal�d�r.
   drop table silinecek

--*******************************************************************************************************************************************
 
  --       ** ATTACH,  DETACH ��LEMLER�  **

/* ATTACH: VER�TABANINI ��E AKTARMA ��LEM�D�R.
B�r vtyi bir bilgisayardan ba�ka bir bilgisayara ta��rken .mdf ve .log uzant�l� vtye ait dosyalar�
C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA
konumuna kaydedip Object Explorer Panel�nden Databases ba�l���na sa� t�k->attach komutu se�ilir
  

 DETACH:VER�TABANINI DI�A AKTARMA ��LEM�D�R.
 B�r vtyi bir bilgisayardan ba�ka bir bilgisayara ta��rken .mdf ve .log uzant�l� vtye ait dosyalar�
 �ncelikle DI�A AKTARMAK gerekir.

 Detach ��lemi:Object Explorer Panel�nde ilgili vt �zerine sa� t�k -->Tasks-->Detach komutu se�ilir
*/

------------------------------------------------------------------------------------------------------------------------------------
 --�RN: urunler tablosunda b�t�n alanlara de�er girilecek �ekilde 1 adet kay�t ekleyin.
INSERT INTO urunler VALUES (2,'HP PC',3000,10)

 --�RN: musteriler tablosuna telefon numaran�z d���nda t�m ki�isel bilgilerinizi giriniz.






	