CREATE DATABASE MAGAZA
use MAGAZA 
----------------------------------------------
CREATE TABLE kategoriler (k_no int NOT NULL PRIMARY KEY IDENTITY(1,1), ad varchar(20) NOT NULL)

----------------------------------------------
CREATE TABLE urunler (
u_no int NOT NULL PRIMARY KEY IDENTITY(1,1),
k_no int NOT NULL,
ad varchar(20) NOT NULL,
fiyat int NOT NULL,
stok int NOT NULL)

-------------------------------------------------------------------------------------
CREATE TABLE musteriler (
m_no int NOT NULL PRIMARY KEY IDENTITY(1,1),
ad varchar(20) NOT NULL,
soyad varchar(20) NOT NULL,
yas int,
tel varchar(10),
email varchar(30) NOT NULL,
adres varchar(50),sehir varchar(20), )

------------------------------------------------------------------------------------

CREATE TABLE satislar (
s_no int NOT NULL PRIMARY KEY IDENTITY(1,1),
m_no int NOT NULL,
tarih smalldatetime,
t_fiyat int)

------------------------------------------------------------------------------------
CREATE TABLE satis_detay (
d_no int IDENTITY(1,1) NOT NULL PRIMARY KEY,
s_no int NOT NULL,
u_no int NOT NULL,
miktar int )

------------------------------------------------------------------------------------
INSERT INTO kategoriler VALUES('bilgisayar')
INSERT INTO kategoriler VALUES('laptop')
INSERT INTO kategoriler VALUES('televizyon')
INSERT INTO kategoriler VALUES('cep telefonu')
INSERT INTO kategoriler VALUES('kitap')

SELECT * FROM kategoriler

INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(1,'Casper pc',800,12)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(1,'Ibm pc',900,14)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(1,'HP pc',1200,0)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(1,'Toshiba pc',1600,9)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(1,'Exper pc',1250,10)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(2,'Sony laptop',2100,5)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(2,'HP laptop',1400,7)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(2,'Toshiba laptop',1600,0)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(3,'Vestel plazma tv',2200,4)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(3,'Samdung tv',600,13)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(3,'Philips tv',750,5)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(3,'Sony tv',900,16)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(3,'Samsung plazma tv',3400,0)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(3,'LG plazma tv',5600,5)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(4,'Nokia series',500,14)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(4,'Samsung series',600,6)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(4,'Sony ERicson series',450,22)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(4,'Siemens series',350,13)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'SQL e�itim seti',260,15)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'Ing e�itim seti',240,20)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'ASP.net e�itim seti',250,13)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'Php and mysql',300,22)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'Almanca e�itim seti',240,10)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'temel Bili�im seti',350,3)

SELECT * FROM urunler

INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('KEMAL','KAYA',20,'5053389282','kemal@hotmail.com','BORNOVA','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('MEHMET','�ETIN',21,'5557682374','mehmet@gmail.com','EGEKENT','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('CEYDA','DURAN',18,'5331136728','ceyda@hotmail.com','PENDIK','ISTANBUL')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('SERDAR','�OLAK',19,'5325547644','serdar@hotmail.com','ULUS','ANKARA')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('DERYA','S�NMEZ',23,'5374456372','derya@hotmail.com','BAKIRK�Y','ISTANBUL')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('AY�E','�LMEZ',22,'5553354726','ayse@gmail.com','AVCILAR','ISTANBUL')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('IBRAHIM','DURAN',21,'5556476352','ibrahim@yahoo.com','KONAK','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('SELMA','YAVUZ',21,'5336456287','selma@mynet.com','ALSANCAK','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('BURAK','TAN',25,'5432213435','burak@yhaoo.com','�ANKAYA','ANKARA')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('KENAN','YILDIZ',18,'5443242536','kenan@gmail.com','YENIMAHALLE','BURSA')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('LEYLA','TURAN',19,'5332257387','leyla@hotmail.com','BANDIRMA','BALIKESIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('G�NE�','BURCU',23,'5224545654','gunes@yahoo.com','MARMARIS','KOCAELI')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('PETEK','BA�AK',25,'5532259858','petek@mynet.com','ESENLER','BURSA')

SELECT * FROM musteriler


INSERT INTO satislar VALUES(3,'2010-01-01',824)
INSERT INTO satislar VALUES(7,'2010-01-02',2200)
INSERT INTO satislar VALUES(7,'2010-01-03',3000)
INSERT INTO satislar VALUES(1,'2010-01-04',2740)
INSERT INTO satislar VALUES(12,'2010-01-04',350)
INSERT INTO satislar VALUES(5,'2010-01-04',1800)
INSERT INTO satislar VALUES(8,'2010-01-05',1400)

SELECT * FROM satislar


INSERT INTO satis_detay VALUES(1,2,1)
INSERT INTO satis_detay VALUES(1,20,1)
INSERT INTO satis_detay VALUES(2,9,1)
INSERT INTO satis_detay VALUES(3,11,4)
INSERT INTO satis_detay VALUES(4,16,5)
INSERT INTO satis_detay VALUES(4,29,1)
INSERT INTO satis_detay VALUES(5,19,1)
INSERT INTO satis_detay VALUES(6,12,1)
INSERT INTO satis_detay VALUES(6,18,2)
INSERT INTO satis_detay VALUES(7,7,1)

SELECT * FROM satis_detay

----------*******SELECT �LE VER� SORGULAMA*********----------------
--SELECT : TABLODAN KAYIT SE�MEY� SA�LAYAN DML SORGUSUDUR.
/*
Genel kullan�m�:
	SELECT alanadi FROM tabloadi
	�eklindedir.
		SELECT alanadi1,alanadi2,...,alanadin FROM tabloadi
		SELECT*FROM tabloadi
		�eklinde kullan�l�r.
*/
--�R:1. m�steriler tablosunda t.daki m��teri isim soyisim ve �ehir bilgilerini listeleyiniz.

SELECT ad,soyad,sehir FROM musteriler

--2. �r�nler tablosundaki b�t�n kay�tlar� listeleyiniz.

SELECT * FROM urunler
SELECT u_no,k_no,ad,fiyat,stok FROM urunler
--SELECT �LE "WHERE" �ARTININ KULLANIMI:
--�arta ba�l� listeleme sorgusu yap�lacaksa SELECT kullan�m� a�a��daki gibi olur;
	--SELECT alanadi FROM tabloadi WHERE �art
	--SELECT alanadi1,alanad,2,....,alanadin FROM tabloadi WHERE �art

--3.Ankara ilindeki m��terileri listeleyiniz.
SELECT * FROM musteriler WHERE sehir='ANKARA'

--4.BURSA d���ndaki t�m �ehirleri g�r�nt�leyin.
SELECT sehir FROM musteriler WHERE sehir!='BURSA'
SELECT sehir FROM musteriler WHERE sehir<>'BURSA'
--NOT: olumsuz �art olu�turmak i�in <> != e�it de�il operat�rleri kullan�l�r.
--5. STOKTA KALMAYAN �R�MNLER� SIRALAYINIZ.
SELECT * FROM urunler WHERE stok=0
SELECT * FROM urunler WHERE stok<1
--6. Stokta bulunan �r�nleri listeleyiniz.
SELECT * FROM urunler WHERE stok>0
SELECT * FROM urunler WHERE stok!=0
SELECT * FROM urunler WHERE stok>=1
--7. Soyad� DURAN olan t�m m��teri bilgilerini listeleyiniz.
SELECT * FROM musteriler WHERE soyad='DURAN'
--8.Soyad� DURAN olan musterilerin ad, soyad, telefon bilgilerini listeleyiniz.
SELECT ad,soyad,tel FROM musteriler WHERE soyad='DURAN'
--WHERE �ARTI �LE ""NOT"" OPERAT�R�N� KULLANIMI:
--�arta ba�l� listeleme yaparken olumsuz �art olu�turman�n bir di�er y�ntemi WHERE NOT s�zc��� kullan�lmal�
--9.BURSA'dakiler d���ndaki t�m m��terileri g�r�nt�leyin.
SELECT * FROM musteriler WHERE NOT sehir='BURSA'

--WHERE �ARTI �LE AND OR NOT OPERAT�RLER�N�N KULLANIMI:
/*
AND:�artlar� t�m�n�n sa�lanmas� gerekti�inde kullan�l�r.
OR: �artlardan en az birinin sa�lanmas� gerekti�inde kullan�l�r.
NOT:Olumsuz �art olu�turmak i�in kullan�l�r.
�NEML� NOT NOT DEFTER� OLAN NOT: VE = AND, VEYA = OR, NOT=DE��LSE
*/

--10. Fiyat� 500 ile 1000 aras�nda olan (500 ve 1000 dahil) b�t�n �r�nleri listeleyiniz.
SELECT * FROM urunler WHERE fiyat>=500 AND fiyat<=1000
--11.ANKARA veya Bursa'da ya�ayan m��terilerin m��teri numaras�, ad ve soyad bilgilerini listeleyiniz.
SELECT m_no,ad,soyad FROM musteriler WHERE sehir='ANKARA' OR sehir='BURSA'
--12. Stokta en az 1 �r�n bulunan b�t�n �r�nlerin �r�n isimlerini ve stok miktarlar�n� listeleyiniz.
SELECT ad,stok FROM urunler WHERE stok>=1
--13. �zmir, Bursa veya Ankara'daki m��terileri listeliyiniz.
SELECT * FROM musteriler WHERE sehir='IZMIR' OR sehir='BURSA' OR sehir='ANKARA'

--WHERE �ARTI �LE IN S�ZC���N�N KULLANIMI.
/*
Belli de�erler aras�nda arama yapmak i�in ""IN"" oparet�r� kullan�l�r.
�rne�in �zmir veya Ankara �ehirlerinden birinde ya�ayan m��teriler derken bu iki �ehirden herhangi birinde ko�ulu sa�lamas� istemektedir.
*/
--13. sorunun IN ile ��z�m�
SELECT * FROM musteriler WHERE sehir IN('IZMIR', 'BURSA', 'ANKARA')

--WHERE �ARTI �LE BETWEEN S�ZC���N�N KULLANIMI:
/*
�ki de�er aras�ndaki kay�tlar� sorgular.
	Ba�lang�� ve biti� de�erlerini dahil eder.
Yani <= ve >= gibi �al���r.
Kar��la�t�r�lacak de�erler aras�nda AND oparet�r� kullan�l�r.
*/
--10.SORUNUN BETWEEN �LE ��Z�M�:
SELECT * FROM urunler WHERE fiyat BETWEEN 500 AND 1000
--14.Fiyat� 500 ile 1000 aras�nda olan (500 ve 1000 dahil !!!DE��L!!) b�t�n �r�nleri listeleyiniz. BETWEEN KULLANAMAYIZ!!!!!!!
SELECT * FROM urunler WHERE fiyat>500 and fiyat<1000

--15.Ad� CEYDA veya DERYA olan m��terileri listeleyiniz
--1.YOL
SELECT * FROM musteriler WHERE ad= 'CEYDA' OR ad='DERYA'
--2.YOL
SELECT * FROM musteriler WHERE ad IN('CEYDA','DERYA')

--16.KONAK il�esinde olmayan m��terileri listeleyiniz.
SELECT * FROM musteriler WHERE NOT adres='KONAK'

--17. KONAK veya PEND�K il�elerinden olmayan m��terileri listeleyiniz.
SELECT * FROM musteriler WHERE NOT adres!='KONAK' OR adres!='PENDIK'
SELECT * FROM musteriler WHERE adres NOT IN ('KONAK', 'PENDIK')

--WHERE �ARTI �LE L�KE S�ZC���N�N KULLANIMI:
--�artl� ifadelerde alan i�inde bulunan de�erin benzer bir k�l�fa uyup uymad���n� denetler.
--Bir alan i�erisinde belirli bir metni veya kal�b� aramak i�in kullan�l�r.
--�RNE��N;Bir a��klama alan� i�erisinde benzer kelimeleri bulmak i�in LIKE operat�r� kullan�labilir.

/*L�KE ile kullan�lan ifadeler:
_1 adet karakteri ifade eder.
% 0veya daha fazla adet karakteri ifade eder.
*/
--�RN:B harfi ile ba�layan m��terileri listeleyiniz
select*from musteriler WHERE ad='B'
--SORUDA �STENEN BA� HARF�N� B OLAMSI
SELECT*FROM musteriler WHERE ad LIKE 'B%'--B �LE BA�LASIN DEVAMINDA 0 VEYA DAHA FAZLA KARAKTER ANLAMINA GELIR.
--BURAK BATUHAN BERNA BEYZA BUKET BARIS BERKAY

--�rn A HARF� �LE B�TEN SEH�RLER� L�STEYE
--ANKARA ADANA MAN�SA MU�LA URFA BURSA
SELECT*FROM musteriler WHERE sehir LIKE '%A'--BASI NE OLURSA OLSUN SONU A �LE B�T�S�N

--���NDE TV GECEN URUNLER� L�STELEY�N�Z....0VEYA daha FALA KARAKTER....TV TV....0veya DAHA fazlakarakter .....
--..ya....0veya DAHAfazlakarakter...tv.....0veyaDAHA fazla

SELECT*FROM urunler WHERE ad LIKE '%TV%'

--�S�M� K �LE BASLAMAYAN MUSTER�LERI L�STELEYINIZ

SELECT*FROM musteriler WHERE NOT ad LIKE 'K%'

-- ismi s ile baslayan ve tv ile biten urunleri listeley�n�z
select*from urunler where ad LIKE 'S%' AND ad LIKE '%TV'

--�rn HOTMA�L hesaba sah�p oaln musterilerin AD. SOYAD, e mail bilgileriniz listeley�n�z

select ad ,soyad,email from musteriler WHERE email LIKE '%@HOTMA�L%'

--505,506,555,554 �LE BASLAYAN TELEFON NUMARALARINI TURKTELEKEOM HATTINI G�STERD���N� "VARSAYARAK" AVEA SAHIP
--MUSTER�LERI L�STELEYINIZ
SELECT*FROM musteriler WHERE tel LIKE '505%' OR tel LIKE ''

--IKINCI HARFI E ILE BASLAYAN 

SELECT*FROM musteriler WHERE ad LIKE '_E%'
--�S�M� DORT KARAKTERL� OLAN 
SELECT*FROM musteriler WHERE ad LIKE '____'
--"MYNET"HESABI OLAMAYANALARI L�STELEYINIZ
SELECT*FROM musteriler WHERE email NOT LIKE '%MYNET%'

--ADINI 3.KARAKTER� R OLUP SONU R OLAMAYANLARI LSITELEYINIZ
SELECT*FROM musteriler WHERE ad LIKE '__R%' AND ad NOT LIKE'%R'

--alanlaara takma isim (alias)kullan�m�
/*veri taban�nda herhang bir de�i�iklik yapmadan listeleem sonucunda alan isminin kullan�c�
taraf�ndan anla�il�r olmas�n� salamak i�in daha anlaml� alan ba�l�klar� verilebilir
bunun i�inde AS kelimesi kullan�l�r
GENEL KULLANIMI:
SELECT alanad� AD takmad FROM tabload�
SELECT alanad� AStakmaad,alanad�2,as takmaad2,....alanad�n AS takmadn FROM tabload�
VEYA
SELECT alanad� [ takmad] FROM tabload�
*/

--musteri isimlerin muster�_ad� BASL���YLA L�STELEYEL�M
select ad AS 'MUSTER�_ADI'FROM musteriler
--VEYA;
select ad [MUSTER�_ADI]FROM musteriler

--msurei isimlerini MUSTER�ADI ba�l���yla listeleyelim
select ad AS 'MUSTER�ADI'FROM musteriler
--VEYA;
select ad [MUSTER�AD]FROM musteriler


--musteri ad ve s�yad AD SOYAD BA�LILARIYLA L�STELEYINIZ
SELECT ad AS 'ADI',soyad AS 'SOYADI' FROM musteriler
--VEYA
SELECT ad  [ADI],soyad [SOYADI] FROM musteriler

--#######################---ALAN B�RLE�T�RME----######################

/*BAZI DURMLARDA B�RDEN FAZLA ALANI B�RLE�T�RMEK GEKEB�L�R.
BUNUN ���N ALAN B�RLE�TIRIRKEN+APORETORU KULLANILIR
MUSTER� VE AD SOYADINI "MUSTER� ADI SOYADI " BA�LI�IYKA TEK SUTUNDA L�STELEMEK ���N
--AD VE SOYAD ALANLARI+OPERATORU �LE B�RLE�TIRELIM

*/
SELECT ad+' '+soyad from musteriler -- NO column name ba�l���yla yan� ba�l�ks�z gelir.c�nku tabloda boule b�r alan yok
SELECT ad+' '+soyad [MUSTER� ADI SOYADI]from musteriler 


--D�KKAT :+operat�ru alan birle�t�rmek i�in kullan�l�r fakat alanlar rakamsal veriler
--i�eriyorsa bu aporetor matamatikseltoplama i�emi yapar
--orn �r�nler tablosundak� urunler� listele
select*from urunler
--urunler tablosundak�f�yat ve stok alanlar�n� birle�t�rmyey� deneyel�m
select fiyat+stok from urunler--mant�kl� bir i�lem degil sadece amac�m�z say�sal alanlar�+ile toplad�g�n�
--

--TABLO/TABLOLARDAN �LK 'n' SATIRI CEKME (TOP n)'--#########
/*TABLODAN BELL� SAYIDA SATIR SECMEK/CEKMEK/L�STELEMEK i�in SQL iel birlikte TOP ifdesi kullan�l�r
tabload� ilk 3 kayd� ,ilk kayd�,son kayd�,ilk n adet kayd� vb secmek i�in kulan�labilir
GENEL KULLANIMI:
SELECT TOP n alanad� FROM tabload�
*/
--�rn:ilk 5 musteriyi listeleyelim:
select top 5 ad from musteriler
--ilk 3 musterinin "muster� no ad soyad"bilgilerini listeleyelim
select top 3 m_no,ad,soyad from musteriler
--musteriler tablosundak� il kayd� lissteleyel�m
select top 1*from musteriler
--musteriler tablosunun ilk % 50 l�k k�sm�n� l�steleyel�m
select top 50 percent *from musteriler

--top ifades� ile tablonun belirli % s� secilebir . (top x percent )
--#####################TEKRARSIZ VER�LER� CEKME (DISTINCT)#############################--

 /*tablolarda  (DISTINCT ifade ile alanda bulunan veriler tekrar etmeden listelen�r
 DISTINCT s�zcugu tek bas�na kullan�lmaz
 genel kulna�m�
 SELECT DISTINC alanad� FROM tabload�

 */
 --orn musterilerin hang� sehirlerden oldgunu bulunuz
 select DISTINCT sehir from musteriler
 --farkl� musteri isimlerini listeleyelim
 select DISTINCT ad from musteriler
 

 --######################## ORDER BY �LE KAYITLARI SIRALAMA#################--
 /* ORDER BY kay�tlar�n belli alanlara g�re s�ralanarak listelemesini sa�lar.
 ORDER BY ile beraber 2 temel s�zcuk kullan�l�r. ASC,DESC
 ASC ASCENDING : belirtilen alana g�re artan (A-Z a-z kucukten buguye s�ralama)s�ralama yapar.
 DESC DESCENDING: belirtilen alana gore azalan(Z-A z-a buyukten kucuge s�ralama)s�ralama yapar.
 Varsay�lan s�ralma  sekli artan (ASC) d�r.
 GENEL KULLANIMI: 
 SELECT cumlec�g�  ORDER BY (s�ralamas� �stenen alan)
 */
      select*from musteriler order by ad
	  select*from musteriler order by ad asc
	  select*from musteriler order by ad  desc
	  --musteriler tablosunda ad soyad sehir tersten listeleme

	  select ad,soyad,sehir from musteriler order by  sehir asc

--***********************************DELETE �LE (((((VER�))))) S�LME**********************----------------
/*
sql de tablodan veri veya kay�t silmek i�in kullan�lan dml sorgular�d�r
GENLE KULLANIMI:
DELETE FROM tabload� WHERE sart

*****!!D�KKAT COK ONEMLI!!!!!!!!!********************************
sart belirtmeden  delete sorgsunu kullan�rsak(DELETE FROM tabloadi) tablo �c�ndek� tup kay�tlar s�l�n�r!
 tablodak� veri btunlugunu b ozmak i�in genell�lle b�r�nc�l anahtar alan�na veya tekil anahtar �zelii�i nulunan alana ""g�re sart belirtilir ve silme sorgusu yaz�l�r




*/
CREATE DATABASE X
USE X
CREATE TABLE tablo (alan varchar (25),alan2 varchar(25))
INSERT INTO tablo VALUES('AL� EKBER','B�LEN')
INSERT INTO tablo VALUES('�ZGE','YILDIZ')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('�ZGE','CAN')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('�ZGE','CAN')

SELECT*FROM tablo
DELETE FROM tablo WHERE (alan='�ZGE'AND alan2='CAN')


USE master
DROP DATABASE X


CREATE DATABASE x
USE x
CREATE TABLE tablo (id int not null primary key identity (10,5),ad varchar(25),soyad varchar(25) )
INSERT INTO tablo VALUES('AL� EKBER','B�LEN')
INSERT INTO tablo VALUES('�ZGE','YILDIZ')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('�ZGE','CAN')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('�ZGE','CAN')
SELECT*FROM tablo

DELETE FROM tablo --? HATA : sart belirtned�g�m�z i�in tabloadk� tum kay�tlar silinir!
delete from tablo where ad='�zge'--? HATA: tabloda ad� �zge olan tum kay�tlar s�l�neceg� i�n VER� BUTUNLUGU bozulur
delete from tablo where id =20 ---?DO�RU:) tablo butunlugu sa�lamak ad�na id alan�na gore silme i�lem�n� ger�ekl�er�t�r�l

--�rnek musteriler tablosuna k�s�sel  bilgilerinizi musteriler �nce ekleye�n�z sonra ekleg�n�z s�l�n

use MAGAZA
select*from musteriler
INSERT INTO musteriler  (ad ,soyad,email) values('ali','can','alicancan@yahoo.com')
delete from musteriler where m_n=14



--########################UPDATE �LE (((((VER�)))))))G�NCELLEME ######################---
/*
SQL DE kay�tlar�� /verileri g�ncelemek i�in kullan�lan DML sorgusudur.
GENEL KULLANIMI:
UPDATA tabload� SET alanad�=yan�deger WHERE �art
*/
 --�rnek:3 nolu musteriin e posta adres�n�: ceydaduran@hotmail.com olarak gunceley�n�z

   UPDATE musteriler SET email='ceydaduran@hotmail.com' WHERE m_no=3
   SELECT *FROM musteriler
 --�rnekceyda duran isimli musterinin adres bilgilerini alsancak �zm�r olarak guncelleyel�m

   UPDATE musteriler SET adres='ALSANCAK' WHERE m_no=3
   UPDATE musteriler SET sehir='IZMIR' WHERE m_no=3
   SELECT *FROM musteriler
   UPDATE musteriler SET adres='ULUS', sehir='ANKARA' WHERE m_no=3
 --�rn:tum masaustu b�lg�sayarlar�n urun f�yatalr�n� %10 ZAMLI olarak guncelleyel�m
   UPDATE urunler SET fiyat=fiyat+(fiyat*10/100) WHERE  ad LIKE '%pc'
   UPDATE urunler SET fiyat=fiyat+(fiyat*0.1) WHERE  ad LIKE '%pc'
   UPDATE urunler SET fiyat=fiyat*1.1 WHERE  ad LIKE '%pc'
   SELECT *FROM urunler WHERE ad LIKE '%pc' 
  --�rn:tum masaustu b�lg�sayarlar�n urun f�yatalr�n� %10 �ND�R�ML� olarak guncelleyel�m
   UPDATE urunler SET fiyat=fiyat-(fiyat*10/100) WHERE  ad LIKE '%pc'
   UPDATE urunler SET fiyat=fiyat-(fiyat*0.1) WHERE  ad LIKE '%pc'

   --Casper pc fiyat�n� 800 olarak de�i�tirelim.
   UPDATE urunler SET fiyat=800 WHERE ad LIKE 'Casper pc'

   --lbm pc fiyat�n� 900 olarak de�i�tirelim.
  UPDATE urunler SET fiyat=800 WHERE ad LIKE 'lbm pc'

  --IZMIR Olarak kay�tl� �ehirleri �ZM�R �eklinde g�ncelleyin
   UPDATE musteriler SET sehir='�ZM�R'WHERE ad ='IZMIR'
   SELECT*FROM musteriler

   ------------------------------------- SQL'DE FONKS�YONLAR: ----------------------------------------------------
   /* SQL'DE fonksiyonlar� genel olaran 3 gruba ay�rabiliriz:
   �DEV : �RNELERLE ARASTIR.
   SELECT UPER (neslihan) SONUC: NESL�HAN gibi
   MATEMAT�KSEL FONKS�YONLAR: MAX, MIN,COUNT, SUM,AVG
   MET�NSEL (STR�NG) FONKS�YONLAR: UPER, LOWER, LTRIM(), RTRIM(), REPLACE
   TAR�H SAAT FONKS�YONLAR:

            ####### MATEMAT�K FONKS�YONLARI #######
  **  MAX ve MIN **
  Belirtilen alandaki en y�ksek ya da en d���k de�erleri bulmak i�in kullan�l�r.

  SELECT MAX(alanadi) FROM tabloadi SQL ifadeleri.*/
 -- �RNEK:�r�nler tablosundaki �r�nlerden en pahal� olan�n�n fiyat�n� listeleyelim
  SELECT MAX(fiyat) AS 'En Y�ksek Fiyat' FROM urunler

 -- �RNEK:�r�nler tablosundaki �r�nlerden en pahal� olan�n�n fiyat�yla beraber listeleyelim
 SELECT MAX(fiyat) AS 'En Y�ksek Fiyat' FROM urunler -- SONRA
 SELECT *from urunler

  --#### SELECT MIN (alanadi) FROM tablo Adi #####
  -- �RNEK: �r�nler tablosundaki �r�nlerden en d���k olan�n�n fiyat�n� listeleyelim
   SELECT MIN (fiyat) AS 'EN D���k Fiyat' FROM urunler


  --  ** COUNT **
  --Belirtilen alandaki kay�tlar�n/verilerin say�s�n� elde etmek i�in kullan�l�r.
  --KULLANIMI: SELECT COUNT (alanadi) FROM tabloadi

  SELECT Count(m_no) [TOPLAM MUSTER� SAYISI] FROM musteriler 
  SELECT Count(ad) [TOPLAM MUSTER� SAYISI] FROM musteriler 
  -- NOT!!!D�KKAT..!;
  --Tabloda Sayma i�lemini yaparken BO� GE��LEMEZ alana g�re i�lem yap�l�rsa kay�t say�s� do�ru �ekilde elde edilir.
  --COUNT tabloda her hangi bir bo� kay�t varsa o kayd� sayma i�lemine DAH�L ETMEZ!
  /*
  NO AD
  1  AL�
  2  AHMET
  3        --BO� GE��LEMEZ OLMADI�I DURUMDA 3.BO�LUGU GORMEYECEKT�R VE YANLI� SAYACAKTIR.
  4  EMEL
  5  AY�E
  */
 --  ** SUM **
 --  Tablodaki bir alan/alandaki kay�t/verirlerin de�erlerin toplam�n� elde etmek i�in kullan�l�r.
 -- KULLANIMI: SELECT SUM alanadi FROM tabloadi
 --�RNEK: T�m �r�n t�rlerine ait toplam stok de�erini g�steriniz.
  SELECT SUM(stok) AS 'TOPLAM STOK ADED�' FROM urunler

  --** AVG **
  -- Belirtilen alandaki de�erlerin ortalamas�n� elde etmek i�in kullan�l�r.
  -- KULLANIMI: SELECT SUM alanadi FROM tabloadi
   --�RNEK: ORTALAMA  MU�TER� YA�INI TESP�T ED�N�Z.
  SELECT AVG(yas) [MUSTER�LER�N ORTALAMA YASI] FROM musteriler
  SELECT *FROM musteriler
  
--  ################# MET�NSEL (STR�NG) FONKS�YONLAR ####################
  -- 1.*** LOWER ***
  -- �stenilen alanlar� k���k harf ile g�sterir.
  -- SELECT LOWER (alanadi) FROM tabloadi
  --�RNEK
  SELECT  ad,LOWER (soyad) FROM musteriler

 -- 2.*** Upper ***
-- �stenilen alanlar� b�y�k harf ile g�sterir.
 SELECT ad, UPPER(soyad) FROM MUSTER�LER

--3. *** LEFT ***
--Verilen bir metnin soldan itibaren istenilen say�da karakterlerini geri d�nd�r�r.
SELECT LEFT ('HALKALI MESLEK� VE TEKN�K� ANADOLU L�SES�',7)
GO
--Sonu�: HALKALI

-- 4.*** RIGHT **
--Verilen bir metnin sa�dan itibaren istenilen say�da karakterlerini geri d�nd�r�r.
SELECT RIGHT ('HALKALI MESLEK� VE TEKN�K� ANADOLU L�SES�',7)
GO
--Sonu�: L�SES�

-- 5.*** CHAR ***
--0-255 aras� girilen tam say�n�n ASCII tablosundaki kar��l��� olan karakteri verir. 
--Girilen say� bu aral�k d���ndaysa NULL de�eri d�ner.
SELECT CHAR (52)
GO
--Sonu�: A

-- 6.*** ASCII ***
--Verilen bir karakterin ASCII tablosundaki de�erini veren fonksiyondur. 
--E�er bir karakter yerine bir metin girilirse metnin ilk karakterini yani en solundaki karakterinin ASCII de�erini verir.
  SELECT ASCII('A') --=65
  SELECT ASCII ('YUSUF')

 -- 7.*** LEN ***
 --Bir alandaki metnin uzunlu�unu g�rmek i�in kullan�l�r.
 --KULLANIM :SELECT LEN(alanad�) FROM tabloadi
 SELECT LEN ('HALKALI MESLEK� VE TEKN�K ANADOLU L�SES�')

 -- 8.*** REVERSE ***
 --B�R ALANDAK� MET�N�N TERS CEV�R�LMES� ���N KULLANILIR.
 --KULLANIM: SELECT REVERSE ()
  SELECT REVERSE ('HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�')
  --Sonu�: �SES�L ULODANA K�NKET EV �KELKSEM ILAKLAH

--9.*** LTRIM ***
--Verilen metnin ba��nda varsa bo�luklar� silmeye yarar.
SELECT LTRIM ('      HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�     ')
--Sonu�:HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�     '

--10.*** RTRIM ***
--Metnin sonundaki bo�luklar� silen fonksiyondur.

SELECT RTRIM ('      HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�     ')
--Sonu�:      HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�  

--Yukar�daki metnin ba��ndaki ve sonundaki bo�luklar� kald�ral�m.
SELECT RTRIM(LTRIM('      HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�     '))
SELECT LTRIM(RTRIM('      HALKALI MESKLEK� VE TEKN�K ANADOLU L�SES�     '))

--11.*** REPLACE:  3 PARAMETRES� vard�r.
--1. String ifade (tablodaki herhangi bir alandaki veri de olabilir, sadece bir string
--de olabilir.)
--2.Stringin de�i�ecek b�l�m�
--3.String ifadedeki yeni de�er.
--SELECT REPLACE(stringveri,eskimetin,yenimetin) FROM tabloadi
--HALKALI MESLEK� ve TEKN�K ANADOLU L�SES�'ni HALKALI MTAL olarak de�i�tirelim.
SELECT REPLACE('HALKALI MESLEK� ve TEKN�K ANADOLU L�SES�','MESLEK� ve TEKN�K ANADOLU L�SES�','MTAL')
--**********************************************************************************

  --12.*** Substring ***
  --�stenilen verinin bir par�as�n� g�stermek i�in kullan�l�r.
  --Bir string i�erisinden alt string almay� sa�lar.
  --3 parametresi vard�r.
  --1.string ifade (tablodaki herhangi bir alandaki veri de olabilir, sadece bir string de olabilir.)
  --2.alt stringin ba�lang�� konumu
  --3.alt stringin uzunlu�u
    SELECT SUBSTRING (' Yusuf Zenginn ',2,12)
-- SELECT SUBSTRING('stringveri','ba�lang�� konumu(int),uzunluk(int)')

--HALKALI MESLEK� ve TEKN�K ANADOLU L�SES�'nden MESLEK� VE TEKN�K ANADOLU L�SES� metnini �ekelim.
SELECT SUBSTRING('HALKALI MESLEK� ve TEKN�K ANADOLU L�SES�',9,33)
SELECT SUBSTRING('HALKALI MESLEK� ve TEKN�K ANADOLU L�SES�',9,LEN('MESLEK� ve TEKN�K ANADOLU L�SES�'))--gerek yok :)

--*********************************************************************************************

 -- M��TER�LER� SEH�RLER�NE G�RE GRUPLAYINIZ.
    select*from musteriler order by sehir 
 -- M�STER�LER� SEH�RLER�NE G�RE ARTAN SIRADA G�STER�N�Z
     select*from musteriler order by sehir desc
 -- HER �EH�RDEN KA� MUSTER�N�N OLDUGUNU G�STER�N�Z (GROUP BY)
    SELECT sehir FROM musteriler GROUP BY sehir
 -- HER KATEGOR�DEN KA� �R�N OLDUGUNU G�STER�N�Z
    SELECT u_no FROM urunler GROUP BY u_no
 -- HER KATEGOR�DEK� ORTALAMA �R�N F�YATINI BULUNUZ 
 select avg(fiyat) As 'Ortalama urun fiyat�'FROM urunler
 -- HER KATEGOR�DEK� EN Y�KSEK �R�N F�YATINI BULUN
  select *from urunler order by fiyat desc 
 -- HER KATEGOR�DEK� EN D���K �R�N F�YATINI BULUN
  select *from urunler order by fiyat desc 
 -- ADINIZI STR�NG FONKS�YONDA YAZDIRIN    
   SELECT LEN ('YUSUF')
   GO
 --  ################### TAR�H SAAT FONKS�YONLARI #############################
	 --  SORULAR;

	 -- BUGUN�N TAR�H�N� VEREN SQL SORGUSUNU YAZIN
	    select getdate()  [BUG�N�N TAR�H�]
	 -- ���NDE BULUNDU�UMUZ AYI G�STEREN SQL SORGUSUNU YAZIN	
	    SELECT MONTH(GETDATE()) [BULUNDU�UMUZ AY]
	 -- AYIN HANG� G�N�NDE OLDUGUNU G�STEREN SQL SORGUSUNU YAZIN
	    SELECT DAY(GETDATE()) [BULUNDU�UMUZ TAR�H]
	 -- KA� YA�INDA OLDUGUNUZU TAR�H SAAT FONKS�YONU �LE BULUN�
        SELECT DATEDIFF(YEAR,'2002-10-07',GETDATE()) [KA� YA�INDASIN]
	 -- KA� G�NL�K OLDU�UNUZU YAZIN
	    SELECT DATEDIFF(DAY,'2002-10-07',GETDATE()) [KA� G�NL�KS�N]
	 -- S�STEM TAR�H SAAT FONKS�YONUNU G�STEREN SQL SORGUSUNU YAZIN
	     select getdate()  [S�STEM�N TAR�H�]
	 -- S�STEM TAR�H�N� 1 HAFTA �LER�YE ALIN.
	 	SELECT DATEADD(DAY,7,GETDATE()) [1HAFTA SONRA BUG�N]

	--�RN:Tek select ifadesi ile �u anki g�n,ay,y�l bilgilerini listeleyelim.
	SELECT DAY(GETDATE()) AS 'G�N', MONTH(GETDATE()) AS 'AY', YEAR(GETDATE()) AS 'YIL'
 --*********************************************************************
  --DATEPART():
 -- �LG�L� ALANDAK� TAR�H/SAAT VER�S�NDEN �STEN�LEN B�L�MLER� ALIR. 2 PARAMETRES� VARDIR.
 --1. dd,mm,yy bilgisi
 --2. tarih bilgisi
 SELECT DATEPART(DD,GETDATE())
 SELECT DATEPART(MM,GETDATE())
 SELECT DATEPART(YY,GETDATE())

 SELECT RIGHT(DATEPART(YY,GETDATE()),2)

 --�RN:Sat��lar tablosundaki tarih alan�ndan YIL k�s�mlar�n� se�elim.
 SELECT * FROM satislar
 SELECT DATEPART(YY,tarih) FROM satislar

 --DATEADD():BEL�RT�LEN DE�ER KADAR TAR�H B�LG�S�NE EKLEME YAPAR.
 --�NEML�: Veri taban�nda herhangi bir g�ncelleme i�lemi yapmaz.
 --Sadece sorgu sonucunda elde edilen de�ere ekleme yapar ve g�r�nt�ler.
 --3 Parametresi vard�r.
 --1. eklenecek tarih b�l�m�d�r.(g�n, ay, y�l...)
 --2. Ne kadar (g�n/ay/y�l) eklenece�ini belirten ifadedir.
 --3.i�lem yap�lacak tarih bilgisini belirten ifadedir.

--***********************************************************
--�u anki sistem tarihine 2 g�n ekleyelim.
SELECT DATEADD(DAY,2,GETDATE())
--�u anki sistem tarihine 3 ay i�leyelim.
SELECT DATEADD(MM,3,GETDATE())
SELECT DATEADD(MONTH,3,GETDATE())
--�u anki sistem tarihine 1 y�l ekleyelim.
SELECT DATEADD (YY,1,GETDATE())
--�u anki sistem tarihine 1 y�l ekleyelim.(�stekkinden farkl� �ekilde ekleyelim:))
SELECT DATEADD(YEAR,1,GETDATE())

--*************************************************************
--DATEDIFF():�K� TAR�H ARASINDAK� FARKI VER�R.
--3 PARAMETRES� VARDIR.
--1.SE��LECEK TAR�H B�L�M�D�R.(G�N,AY,YIL...)
--2.�LK TAR�H DE�ER�N� BEL�RTEN �FADED�R.
--3.�K�NC� TAR�H DE�ER�N� BEL�RTEN �FADED�R.

--�RN: YA�IMIZI HESAPLAYALIM :))
SELECT DATEDIFF(YY,'2002',GETDATE())

--********************************************************
--5. ISDATE(): �LG�L� TAR�H�N GE�ERL� B�R TAR�H OLUP OLMADI�INI G�STER�R.
SELECT ISDATE ('2019-02-30') --Ge�erli bir tarih olmad���ndan 0 de�erini d�nd�r�r.
SELECT ISDATE ('2019-02-21') --Ge�erli bir tarih oldu�u i�in 1 de�erini d�nd�r�r.
SELECT ISDATE ('2019-21-02') --Ge�erli bir tarih olmad���ndan 0 de�erini d�nd�r�r.

--****************************************************
--6. SELECT DATENAME(): �LG�L� TAR�H�N G�N VEYA AY �S�MLER�N� G�STER�R.
SELECT DATENAME(DW,'2018-12-05') --WEDNESDAY
SELECT DATENAME(MONTH,'2018-12-05') --DECEMBER

--NOT:�NEML� HATIRLATMA:
--DATETIME B���M� ���N KAYIT FORMATI: YYYY-MM-DD-HH-MI-SS
--SMALLDATETIME B���M� ���N KAYIT FORMATI: YYYY-MM-DD-HH-MI-SS
--TIMESTAMP bi�imi i�in kay�t format�: BENZERS�Z B�R NUMARA ATAMASI YAPAR.
--DATE'den fark� saniyeleri daha ayr�nt�l� �ekilde alabilmesidir.

SELECT GETDATE()-- 2018-12-05 15:09:35.490
SELECT CURRENT_TIMESTAMP --2018-12-05 15:09:15.583

--****************************************************************************
--7. SYSDATETIME(): T�MESTAMP de�erini b�lgesel saat farkl�l�klar�n� g�stermeden d�nd�r�r.
SELECT SYSDATETIME() --2018-12-05- 15-13-12-8433456

--*****************************************************************
 --################################ GROUP BY #######################################
 --Tablodaki verileri belirli alan/alanlara g�re gruplamak i�in kullan�lan SQL ifadesidir.
 --Genellikle matematiksel fonksiyonlarla (COUNT,MAX,MIN,SUM,AVG)
 
 /*KULLANIMI: 
 SELECT alanadi_adi1, fonksiyon(alan_adi2)
 FROM tablo 
 GROUP BY (alan_adi)
 */

 --�RN: M��TER�LER� SEH�RLER�NE G�RE GRUPLAYINIZ.
    select ad,soyad,sehir from musteriler group by sehir ,ad,soyad

	select ad from musteriler group by sehir --HATA VER�R! GRUPLAMA VE L�STELEME KISIMLARINDA 
	--�LG�L� ALANLARI KULLANMALIYIZ.


 --�RN: HER �EH�RDEN KA� M��TER�N�N OLDU�UNU G�STER�N�Z.
     select sehir, COUNT(m_no) AS 'M��TER� SAYISI' From musteriler
	 group by sehir


 -- HER KATEGOR�DE KA� �R�N OLDUGUNU G�STER�N�Z (GROUP BY)
    SELECT k_no AS 'KATEGOR� NUMARASI',COUNT (u_no) AS 'KATEGOR�DEK� �R�N SAYISI' from urunler
	GROUP BY k_no

--Her kategorideki en pahal� �r�n� g�steriniz.
SELECT k_no AS 'KATEGOR� NUMARASI', MAX(fiyat) AS 'KATEGOR�DEK� EN PAHALI �R�N' FROM urunler GROUP BY k_no

--***********************########### HAV�NG ############*********************************
/*HAVING yap�s� temelde WHERE ile ayn� g�revi yapmaktad�r. GROUP BY ile kullan�l�r.
 Where ifadesi ile belirtilen kriter Group By uygulanmadan �nce ge�erli olurken,
 Having ifadesi ile belirtilen kriter ise group by uyguland�ktan sonra ortaya ��kan verileri 
 filtrelemek i�in kullan�l�r. Ayr�ca Where ifadesinden sonra sum, avg gibi fonksiyonlar
 kullan�lamazken, Having ile kullan�labilir.

HAVING Kullan�m Bi�imi;

SELECT alan_adlari,
FROM Tablo
GROUP BY alan_adi
HAVING alanadi operator deger*/
--******************************************************************************
--�RN: TOPLAM KAYITLI �R�N SAYISI 3 TEN �OK OLAN KATEGOR�LER� L�STELEYEL�M.

-- �lk a�ama: Her kategorilerdeki �r�nleri g�sterin
 SELECT k_no,ad from urunler GROUP BY k_no,ad

--2.a�ama her kat.deki �r�n say�s�n� bulal�m.
   SELECT k_no AS 'KATEGOR� NUMARASI',COUNT (u_no) AS 'KATEGOR�DEK� �R�N SAYISI' from urunler
GROUP BY k_no 
--3.a�ama 3'ten b�y�k �art�n� ekleyelim.
   SELECT k_no AS 'KATEGOR� NUMARASI',COUNT (u_no) AS 'KATEGOR�DEK� �R�N SAYISI' from urunler
GROUP BY k_no HAVING COUNT(u_no)>3

--�RN: M��TER� SAYISI 2 OLAN �EH�RLER� G�STER�N�Z.
SELECT * FROM musteriler ORDER BY sehir
SELECT COUNT(m_no),sehir FROM musteriler GROUP BY sehir
SELECT COUNT(m_no),sehir FROM musteriler GROUP BY sehir HAVING COUNT(m_no)=2

-- �RN:ORTALAMA �R�N F�YATI 1000'�N �ZER�NDE OLAN KATEGOR�LER� L�STELE
SELECT k_no ,AVG(fiyat)[F�YATLAR] FROM urunler GROUP BY k_no HAVING AVG(fiyat)>1000

--�R: ORTALAMA F�YATI T�M KATEGOR�LERDEK� �R�NLER�N ORTALAMA F�YATINDAN D���K OLAN KATEGOR�LER HANG�LER�D�R
 --1. A�ama t�m kategorideki �r�nlerin ortalama fiyat�(GENEL ORTALAMA);
 SELECT AVG (fiyat) FROM urunler
 --2. A�AMA
  SELECT k_no,AVG (fiyat) FROM urunler GROUP BY k_no HAVING AVG(fiyat)<(SELECT AVG (fiyat) FROM urunler)

--VER�TABANINDA SORGULAR MOD�L�
--�DEV; DAHA �NCE YAPMADI�IM �DEVLER� YAPACA�IM ! DAHA �NCE YAPTIYSA E�ER BA�KA B�R VER� TABANI �ZER�NDE �DEV�M� TEKRARDAN YAPACAGIM.
-- ANY , ALL, SOME ne i�e yarar? nas�l kullan�l�r? farklar� nelerdir?
-- @@@@@@@@@@  �DEV  @@@@@@@@@@@@
--Any:�ngilizce'de de herhangi biri anlam�na gelen any komutu sql komutumuzda da herhangi biri anlam�n� ta��r.
--All:�ngilizce'de de hepsi anlam�na gelen ALL komutu sql komutumuzda da hepsi anlam�n� ta��r.
--Some: SOME bir listedeki her bir de�ere veya bir sorgudan bir de�er kar��la�t�r�r ve bir i� sorgunun sonucu en az bir sat�r i�eriyorsa,
-- do�ru olarak de�erlendirir. SOME alt sorgudaki en az bir sat�r ile e�le�meli ve �nce kar��la�t�rma operat�rleri taraf�ndan yap�lmal�d�r.
-- En b�y�k bir de�erden daha b�y�k SOME ara�lar� ile ( > ) ' den b�y�k miktarda kullanmay� d���n�n.


-- -- -- -- -- -- --    #*#*#*#* ALT SORGULAR; *#*#*#*#*  -- -- -- -- -- -- -- -- --

/*Baz� durumlarda bir sorgudan elde edilen sonu� di�er bir sorgu i�erisinde kullan�labilmmektedir
Bu t�r durumlarda i� i�e sorgular olu�turulmaktad�r.
Kullan�lan i� i�e sorgularda yer alan i�teki sorgulara "alt sorgular " ad� verilir.

�� ��E SELECT YAPISI
ALT SORGU D�ZENLEME KURALLARI:
1- ��teki sorgu (alt sorgu) parantez i�ine yaz�l�r.
2- ��teki sorgu (alt sorgu) ORDER BY i�ermemeli.
3- ��teki sorgu (alt sorgu) ana sorgunun sa��nda yer almaktad�r.

SELECT liste FROM tablo WHERE ifade kar��la�t�rma 


(SELECT liste FROM tablo)

Kar��la�t�rma :[ANY | ALL | SOME] (Sql deyimi): Kar��la�t�rma, ifadeyi, alt sorgununun
sonu�lar� ile kar��la�t�rmaya yarayan bir kar��la�t�rma i�lecidir
ifade   : [NOT] IN (sqldeyimi):ifade,alt sorgu sonu� k�mesinde aranan ifadeye verilen add�r

�RNEKLERE GE�MEDEN �NCE VT. YEN�DEN B�R G�ZDEN GE��REL�M :)) HATIRLAYALIMMM 
*/
SELECT *FROM kategoriler
SELECT *FROM urunler 
SELECT *FROM musteriler
SELECT *FROM satislar
SELECT *FROM satis_detay

--�R: Kitap kategorisindeki �r�nleri listeleyelim
--1. urunler tablosuna bakar�z. (ama hangi k_no kitap kategorsinine ait anlayamad���m�z i�in..)
--2. kategoriler tablosuna bakar kitap kategorisinin k_nosunu not al�r�z
--3. urunler tablosuna tekrar d�ner not ald�g�m�z kno ya g�re listeleme yapar�z
SELECT k_no FROM kategoriler WHERE ad='kitap'
SELECT *From urunler where k_no=5

--B�RLE�T�RME;
SELECT *From urunler where k_no=(SELECT k_no FROM kategoriler WHERE ad='kitap')

--�R: Bilgisayar kategorisindeki �r�nleri listeleyiniz.
SELECT *From urunler where k_no=(SELECT k_no FROM kategoriler WHERE ad='bilgisayar')
SELECT *From urunler where k_no=1

--�R:IBRAHIM DURAN a toplam sat�� tutar�n� listeleyiniz.
select *from satislar
SELECT SUM (t_fiyat) from satislar Where m_no=7

--�R:Ibm pc �r�n�nden ka� adet sat�ld���n� bulunuz.
select SUM (miktar) [TOPLAM SATIS ]from satis_detay where u_no=(
select u_no from urunler where ad ='Ibm pc'
)
--�R:sto�u t�kenen �r�nlerin kategori isimlerini listeleyiniz.
SELECT ad from kategoriler where k_no IN(SELECT k_no FROM urunler WHERE stok=0)

--�R:2010-01-04-00 :00:00 tarihinden �nce kimlere �r�n sat�ld���n� bulunuz.
SELECT ad, soyad from musteriler where m_no IN(
SELECT m_no from satislar where tarih<'2010-01-04 00:00:00')

-- �stanbul veya Ankara �ehrinde ya�ayan m��terilere ait sat��lar� listeleyiniz.
select *from satislar where m_no IN(
 SELECT m_no FROM musteriler where sehir IN ('ISTANBUL','ANKARA'))

-- Sony televizyon �r�n�n�n sat�ld��� �ehir veya �ehirleri listeleyiniz.

select sehir from musteriler where m_no=(
 Select  m_no from satislar where s_no=(
  Select s_no from satis_detay where u_no=(
  select u_no from urunler where ad ='Sony tv')))

-- Cep Telefonu kategorisindeki �r�nleri sat�� tarihlerini tespit ediniz.
 select tarih from satislar where s_no IN(
select s_no from satis_detay where u_no IN(
select u_no from urunler where k_no=(
select k_no from kategoriler where ad='cep telefonu')))      
                                                                select*from satis_detay                  
                                                                select *from satislar					
                                                                 select *from musteriler
                                                                 select *from kategoriler
																 select *from urunler 
-- Derya S�nmezin Ka� adet �r�n ald���n� g�steriniz.
   select sum(miktar) from satis_detay  where s_no IN(
   select s_no from satislar where m_no IN(
  Select m_no from musteriler where ad ='DERYA' AND soyad ='S�NMEZ'))

-- Bir defada bir �e�it �r�nden en fazla �r�n alan m��terilerinin b�t�n bilgileriniz listeleyiniz.
select *from musteriler where m_no=(
SELECT m_no from satislar where s_no IN(
select s_no from satis_detay where miktar=(
SELECT max(miktar) from satis_detay )))

-- NOTT!!!; ALT SORGU YAZMAKA ���N FARKLI TABLOLAR KULLANMAK GEREKMEZ. TE TABLODA DA
--                ALT SORGU YAZAB�L�R�Z.

-- 5 Ocak'ta hangi �r�n veya �r�nler Sat�lm��t�r.
SELECT ad FROM urunler where u_no IN(
select u_no from satis_detay where s_no IN(
SELECT s_no from satislar where tarih='2010-01-05 00:00:00'))
-- �ngilizce e�itim setiyle birlikte hangi �r�nlerin sat�ld���n� g�steriniz.
--uno 20 sno=1    / uno 2/20

SELECT u_no FROM urunler where ad ='Ing e�itim seti'
-- Bal�kesir, Kocaeli veya Bursa illerine yap�lan toplam sat�� tutar�n� g�steriniz.
--�zmir ilinde olmayan m��terilere ait sat�� ve m��teri bilgilerini g�r�nt�leyiniz.
                                                           select*from satis_detay                  
                                                                select *from satislar					
                                                                 select *from musteriler
                                                                 select *from kategoriler
																 select *from urunler 

--*********************########## KARTEZYEN �ARPIMI-ALT SORGU KULLANIMLARI ###########**************************
--�RNEK ile konuyu inceleyelim.

--�RNEK: Sat�� yap�lan m��terilerin m�teri bilgilerini ve sat�� bilgilerini tablosunu kartezyen
-- birle�imi kullanarak g�sterelim.

SELECT *FROM satislar,musteriler
 WHERE satislar.m_no=musteriler.m_no

-- e�er tablo adlar�n� uzun uzun yazmamak istersek tablo ad�n�n yan�na takma ad konulabilir.
--�rne�in;  
                   SELECT *FROM satislar s, musteriler m
				   WHERE s.m_no=m.m_no

-- Ayn� sorunun ��-��e select ile ��z�m�;
SELECT *FROM musteriler WHERE m_no IN(
SELECT m_no FROM satislar)

select*from satis_detay                  
 select *from satislar
 select *from musteriler
 select *from kategoriler
 select *from urunler 
 -- Sat�lan �r�nlerden En pahal� olan� hangi �r�nd�r?

 SELECT max(t_fiyat) [EN PAHALI �R�N]
 FROM satislar,satis_detay,urunler
 WHERE 
 satis_detay.s_no=urunler.u_no



 --�zmir ilinde olmayan m��terilere ait sat�� ve m��teri bilgilerini g�r�nt�leyiniz.
SELECT *FROM musteriler, satislar 
WHERE musteriler.m_no =satislar.m_no
AND musteriler.sehir!='IZMIR'

--Televizyon alan m��terilerin no ve ad bilgilerini listeleyiniz.
SELECT DISTINCT (musteriler.m_no), musteriler.ad 
FROM kategoriler,urunler,satis_detay,satislar,musteriler
WHERE
kategoriler.ad='televizyon'
AND 
kategoriler.k_no=urunler.k_no
and
urunler.u_no=satis_detay.u_no
and
satis_detay.s_no=satislar.s_no
and
satislar.m_no=musteriler.m_no

-- M��teri numaras� 5'ten b�y�k olanlara hangi tarihlerde sat�� yap�lm��t�r.
select satislar.tarih from musteriler,satislar
where musteriler.m_no>5
and 
musteriler.m_no=satislar.m_no

--Hangi kategorideki �r�nler 1000TL'den ucuzdur?
SELECT DISTINCT(kategoriler.ad)
FROM urunler,kategoriler
WHERE urunler.fiyat<1000
and 
urunler.k_no=kategoriler.k_no

--Yap�lan her sat��taki �r�n bilgilerini listeleyiniz.
SELECT urunler.*FROM satislar,satis_detay,urunler
WHERE satislar.s_no=satis_detay.s_no AND satis_detay.u_no=urunler.u_no

--Her sat��taki �r�nlere ait kategorileri listeleyiniz.
SELECT kategoriler.* FROM satislar,satis_detay,urunler,kategoriler
WHERE satislar.s_no=urunler.u_no
AND satis_detay.u_no=urunler.u_no
and urunler.k_no=kategoriler.k_no

--�RNEK: 3 Nolu sat��ta hangi kategoriden sat�� yap�lm��t�r?
SELECT kategoriler.ad FROM satis_detay,urunler,kategoriler
where satis_detay.s_no=3
AND satis_detay.u_no=urunler.u_no
and urunler.k_no=kategoriler.k_no

-- Halkal� Mesleki ve Teknik Anadolu Lisesinden Mesleki ve Teknik Anadolu lisesini al�n.

SELECT SUBSTRING('HALKALI MESLEK� ve TEKN�K ANADOLU L�SES�',9,32)
SELECT SUBSTRING('HALKALI MTAL',(LEN('HALKALI')+2),LEN('MTAL'))

SELECT LOWER ('aY�e')
SELECT UPPER (LEFT ('ay�e',1))+lower (RIGHT ('Ay�e', (LEN('ay�e')-1)))

SELECT ad FROM musteriler
SELECT LOWER (ad) FROM  musteriler --ad�n� k���ltme
SELECT left (ad,1) FROM  musteriler -- varsay�lan ba� harfi
SELECT UPPER(LEFT (ad,1)) FROM  musteriler --ba� harflerinin b�y�k olmas�
SELECT RIGHT(ad,(LEN(ad)-1)) from musteriler --ba� harfleri hari� isimler
--Son 2 SORGUYU Birle�tirelim.
SELECT UPPER(LEFT(ad,1)+LOWER(RIGHT(ad,(LEN(ad)-1)))) FROM musteriler
--RIGHT yerine substring fonksiyonunu kullanal�m:
SELECT UPPER(LEFT(ad,1)+LOWER(SUBSTRING(ad,2,(LEN(ad)-1)))) FROM musteriler

select *from 

--BUGUNUN TAR�H� �LE 8YIL �NCE SATILMI� 
SELECT DATEDIFF(YEAR,tarih,GETDATE()) FROM satislar

CREATE TABLE personel(ad varchar(25),maa� int)
insert into personel(ad,maa�) values ('A',100)
insert into personel values ('B',150)
insert into personel values ('C',200)
insert into personel values ('D',200)
select *from personel
--�rn:tum personelin maa�lar�n� 10lira artt�r�n
   UPDATE personel SET maa�=maa�+10 
--�rn:tum personelin maa�lar�n� 10lira indirin
   UPDATE personel SET maa�=maa�-(maa�*10/100) 
   UPDATE personel SET maa�=maa�-(maa�*0.1) 

CREATE TABLE ogrenci(ad varchar(25),s1 int,s2 int,p1 int, p2 int)
insert into ogrenci values ('A',100,100,80,90,'')
insert into ogrenci values ('B',50,90,80,90,'')
insert into ogrenci values ('C',60,100,80,90,'')
ALTER TABLE ogrenci add ort int
select *from ogrenci

UPDATE ogrenci set ort=(s1+s2+p1+p2)/4 from ogrenci

--******************* TABLOLARDA B�RLE�T�RME ******************************
--JO�N---> 1.E�iti olan birle�tirme (INNER JO�N) 2.E�iti olmayan birle�tirme(OUTER JO�N)

--1. E�iti olan birle�tirme:
/*
�� birle�tirme i�eren bir sorgu �al��t�r�ld���nda, sorgu i�lemlerine yaln�zca, birle�tirilen
tablolar�n """"her ikisinde bulunan ortak de�ere sahip olan sat�rlar """"eklenir.
Her iki tablodan sadece e�le�en kay�tlar d�ner.
E�it olan birle�tirme yap�l�rken INNER JOIN deyimi kullan�l�r.

GENEL KULLANIMI:

SELECT c�mleci�i FROM  tablo1 INNER JOIN tablo2 ON.tablo1.alanx Kar��la�t�rma tablo2.alany

B�R�NC� tablodaki t�m kay�tlar� �ekip, 2.Tablodan bu kay�tlarla e�le�en kay�tlar� listeler.
*/

--�RNEKLER:
--1-) Sat�� yap�lan m��terilere ait m��teri ad�, soyad�, numaras� ve sat��lara 
--ait sat�� tarihi ve numaraas�n� g�steren tsql sorgusunu yazala�m.

SELECT m.ad,m.soyad,m.m_no,s.tarih,s.s_no
FROM musteriler m JOIN satislar s 
ON m.m_no=s.m_no
   
                                  select*from satis_detay                  
                                  select *from satislar					
                                  select *from musteriler
                                  select *from kategoriler
						     	  select *from urunler 

--2-) Yap�lan her sat��taki �r�nlere ait kategorileri listeleyiniz. 

SELECT s.s_no,k.k_no
FROM satislar s JOIN satis_detay sd
on s.s_no=sd.s_no JOIN urunler u 
on sd.u_no=u.u_no JOIN kategoriler k ON u.k_no=k.k_no

/*
-GEZD���M�Z ALANLAR-
1.Sat��lar        
2.Sat�� detay          1ve2 yi birle�tirdikden sonra
3.urunler 
4.kategoriler          3 ve 4� birle�tiririz.
*/

--3-) Her kategorideki �r�nleri listeleyiniz
--(�ncelikle kategoriler tablosuna "giyim" kategorisine ekleyelim)
INSERT INTO kategoriler VALUES ('Giyim')

select kategoriler.*,urunler.* from kategoriler
JOIN urunler on kategoriler.k_no=urunler.k_no

--JOIN CE�ITLERI:
--6 tane JOIN ce�idi vard�r.
--INNER JOIN
--LEFT JOIN
--RIGHT JOIN
--Self JOIN
/*
1-) CROSS JOIN: --> S�navda ��kmaz. 
-Her 2 kay�tdaki t�m kay�tlar� listeleyen birle�tirme �eklidir.
 Yani birinci tablodaki her kay�t i�in ikinici tablodaki t�m kay�tlar listelenir
 
�NEML�: CROSS JOIN kullan�l�rken ON s�zc��� kullan�lmaz. ��nk� kartezyen birle�imi
yap�lmaktad�r kartezyen birle�imde ko�ula bak�lmaks�z�n t�m kay�tlar listelenir.
KULLANIMI:
SELECT c�mleci�i form tabloadi1 CROSS JOIN tabloadi2 

*/
--�RNEK: A�a��daki sorgu sonucu inceleyelim.
select satislar.m_no,
musteriler.ad,musteriler.soyad,
musteriler.tel,musteriler.email 
from satislar CROSS JOIN musteriler

--�RNEK: A�a��daki sorgu sonucu inceleyelim.
SELECT satislar.s_no,musteriler.m_no,
musteriler.ad,musteriler.soyad
from satislar INNER JOIN musteriler
on satislar.m_no=musteriler.m_no

/* 
3.LEFT OUTER JOIN:
INNER JOIN'den farkl�d�r.LEFT denmesinin nedeni soldaki tablon�n esas al�narak sorgunun
�al��t�r�lmas�d�r.
D�KKAT:Soldaki tablodaki t�m kay�tlar �ekilir. Sa�daki tabloda e�le�en kay�tlar aynen yaz�l�r.
E�le�meyen kay�tlar i�in NULL de�eri g�sterilir.

--�RNEK: A�a��daki sorgu sonucu inceleyelim.
select kategoriler.ad,urunler.ad,urunler.stok
from kategoriler LEFT OUTER JOIN urunler on kategoriler.k_no=urunler.k_no

4.RIGHT OUTER JOIN:
Left outer jo�n'�n tersini yapar.
D�KKAT:Left outer ve r�ght outer jo�nlerde sorguda tablolar�n s�ras�na dikkat etmeniz gerekir.

5.FULL OUTER JOIN:
LEFT VE RIGHT OUTER birle�imleridir.

6.SELF JOIN:--SINAVDA CIKMAZ..
Tablonun kendisiyle birle�tirilme i�lemidir.Baz� durumlarda tablodaki bir bilgi yine ayn�
tablodaki ba�ka bir bilgiye referans olabilir. B�yle durumlarda tabloyu kendi ile birle�tirip sorgular� yazabiliriz.

�rne�in: �al��anlar ad�nda bir tablomuz olsun bu tabloda �al��anlara ait isim, soyisim, numara gibi bilgilerin
yan�nda y�netici bilgiside tutuyor olal�m.

�al��anno,�al��anad,�al��ansad,yoneticino
1         neslihan  koyuncu      5
2         g�khan    �zy�rek      5
3         u�ur      kavaz        2
4         olcay     �im�ek       5
5         gulhan    �zy�rek      3
*/
create table cal�sanlar (cal��anno int primary key identity (1,1),
cal��anad varchar(15),
cal�sansod varchar(15),
yoneticino int,
)
INSERT INTO cal�sanlar values ('Neslihan','Koyuncu',5)
INSERT INTO cal�sanlar values ('G�khan','�zy�rek',5)
INSERT INTO cal�sanlar values ('U�ur','Kavaz',5)
INSERT INTO cal�sanlar values ('Olcay','�im�ek',5)
INSERT INTO cal�sanlar values ('Gulhan','�zy�rek',5)
select *from cal�sanlar
select*from satis_detay                  
select *from satislar					
select *from musteriler
select *from kategoriler
select *from urunler 

--�RNEK: 4 ocak 2010 tarihinde yap�lan sat��larda hangi sat�ld�g�n� listeleyiniz.
   SELECT satislar.s_no,satislar.tarih,urunler.ad,urunler.u_no
   FROM 
   satislar JOIN satis_detay on satislar.s_no=satis_detay.s_no
   JOIN urunler on satis_detay.u_no=urunler.u_no
   where satislar.tarih='2010-01-04 00:00:00'

--�RNEK: fiyat� 500 ile 1000 aras�nda olan t�m �r�nlere ait yap�lan sat��lar� listeleyiniz.
   SELECT satislar.* from
   urunler JOIN satis_detay ON urunler.u_no=satis_detay.u_no
   JOIN satislar on satis_detay.s_no=satislar.s_no
   where urunler.fiyat BETWEEN 500 AND 1000

--�RNEK: Bilgisayar kategorisindeki fiyat� 1000 den k���k olan �r�nlere ait sat��lar� listeleyiniz.
	SELECT satislar.*from 
	kategoriler JOIN urunler on kategoriler.k_no=urunler.k_no
	            JOIN satis_detay on urunler.u_no=satis_detay.u_no
				JOIN satislar on satis_detay.s_no=satislar.s_no
	WHERE urunler.fiyat<1000 AND  kategoriler.ad='bilgisayar' 
	
--�RNEK: 06-01-2010 tarihinden �nce yap�lan sat��larda LAPTOP kategorisindeki �r�nleri sat�n alan m��terilerden
--       �ZM�R,ANKARA ve �STANBUL da oturanlar� listeleyiniz
 select musteriler.* FROM musteriler JOIN satislar on musteriler.m_no=satislar.m_no 
                                     join satis_detay on satislar.s_no=satis_detay.s_no
									 join urunler on satis_detay.u_no=urunler.u_no
									 join kategoriler on urunler.k_no=kategoriler.k_no
 WHERE satislar.tarih<'2010-01-06 00:00:00' AND kategoriler.ad='laptop' and musteriler.sehir IN('IZMIR','ANKARA','ISTANBUL')

-- �RNEK: Her kategoriden toplam ka� sat�� yap�ld���n� bulunuz.
SELECT * FROM urunler
SELECT * FROM kategoriler

SELECT kategoriler.k_no, COUNT(u_no) FROM urunler INNER JOIN kategoriler ON urunler.k_no=kategoriler.k_no
GROUP BY kategoriler.k_no

----------------------- G�R�N�MLER VIEMS --------------------
/*
Sanal tablolard�r.
Veri taban�nda asl�nda olmayan fakat daha �nce olu�turdu�umuz 
tablolardan yapt���m�z se�imler g�re kay�tlar i�eren sanal tablolard�r.

�RNE��N: Ma�aza veritaban�nda olu�turdu�umuz be� tablo vard�
(kategoriler-musteriler-sat�s_detay-satislar-urunler)
Bu tablolar �zerinde belirli kriterlere g�re alan ve kay�t se�erek
listeledi�imiz sorgu sonu�lar�n�n sanki mevcut tablolardan biriymi� gibi kullan�lmas�na
G�R�N�M diyoruz.

G�r�n�mler i�erissindeki sorgularda SQL fonksiyonlar�n�, JOIN ifadelerini, 
GROUP BY gruplama sorgular�n� ve WHERE ifadelerini kullanabiliriz.

Veritaban�nda s�k s�k kullanaca��m�z veya kulland���m�z
listeleme sorgular�n� 
daha k�sa ve h�zl� bir �ekilde �al��t�rmak i�in G�R�N�MLER kullan�l�r.

GENEL KULLANIMI:
G�r�n�m olu�turmak i�in:
CREATE VIEW g�r�n�mad� 
AS 
SELECT c�mleci�i

Veritaban�nda s�k s�k kullanaca��m�z veya kulland�g�m�z listeleme sorgular�n�
daha k�sa ve h�zl� bir �ekilde �al��t�rmak i�in G�R�N�MLER kullan�l�r..

GENEL KULLANIMI:
G�r�n�m olu�turmak i�in:
                          CREATE WIEW g�r�n�madi AS SELECT ifadesi
G�r�n�m� listelemek i�in:
                          SELECT *FROM g�r�n�madi
                          varsa �art...

G�r�n�m� silmek i�in:
                          DROP WIEW g�r�n�mad�

G�r�n�m�n� g�ncellemek i�in:
                          ALTER WIEW g�r�n�madi AS SELECT ifadesi

*/

--�RNEK: ANKARADAK� m��terileri listeleyen g�r�n�m� 'ANKARAMUSTER�' ismiyle olu�tural�m.
CREATE VIEW ANKARAMUSTER� AS SELECT *FROM musteriler WHERE sehir='ANKARA'

--       Yukar�da olu�turdu�umuz g�r�n�m� �al��t�ral�m.
SELECT *FROM ANKARAMUSTER�

--Yukar�daki g�r�n�m� Ankara'da ya�ayan ve ya�� 20'den b�y�k olanlar� listeleyecek �ekilde g�ncelliyelim
ALTER VIEW ANKARAMUSTER� AS SELECT *FROM musteriler WHERE sehir='ANKARA' AND yas>20

-- Yukard�da olu�turdu�umuz g�r�n�m� silelim.
DROP VIEW ANKARAMUSTER�

/*NOT:G�r�n�mler ile hangi t�r sorgular �al��t�r�lmaz !????

##** INSERT,UPTADE,DELET kullan�lmaz..
##** ORDER BY kullan�lmaz..
##** Fonksiyon kullan�lacaksa mutlaka AS S�ZC��� ile alanadi verilmeli.
     (�RNE��N: Max fonksiyonu kullan�lacaksa "EnY�ksekDe�er" gibi bir Takma ad� verilmesi gerekir.)

NOT: G�r�n�mler ile en  �ok hangi yap�lar kullan�l�r??
---- EN �ok i� i�e SELECT veya JOIN yap�lar� kullanabilir.
*/

--�RNEK: 5 nolu sat��taki �r�nleri g�steren 'Sat�lan�r�nAd�' isimli g�r�n�m� olu�turunuz.
--�� ��e Select �le:
CREATE VIEW Sat�lan�r�nAd� AS 
SELECT ad FROM urunler where u_no IN(
SELECT u_no FROM satis_detay WHERE s_no=5)

SELECT* FROM Sat�lan�r�nAd�

--JOIN ile:
CREATE VIEW Sat�lan�r�nAd� AS 
SELECT urunler.* FROM satis_detay JOIN urunler ON satis_detay.u_no=urunler.u_no
WHERE satis_detay.s_no=5

--�RNEK: Sat�lan �r�nleri g�steren SATILANURUNLER isimli g�r�n�m� olu�tural�m.
CREATE VIEW SATILANURUNLER AS 
SELECT urunler.* FROM satis_detay JOIN urunler ON satis_detay.u_no=urunler.u_no

--�RNEK: Sat�lan �r�nlerden sto�u 10'dan az olanlar�n g�sterelim..
SELECT * FROM SATILANURUNLER WHERE stok<10

--�RNEK: 2000 lira �zerindeki sat��lar�n hangi m��terilere yap�ld���n� bulal�m..

SELECT* FROM satislar
SELECT* FROM musteriler
--JOIN �LE:
SELECT musteriler.ad,musteriler.soyad from satislar JOIN musteriler on satislar.m_no=musteriler.m_no
WHERE t_fiyat>2000

--�� i�e Select �le;
SELECT *from musteriler WHERE m_no IN(
SELECT m_no FROM satislar WHERE t_fiyat>2000)

--Kartezyen �arp�m ile
SELECT *FROM musteriler,satislar WHERE satislar.m_no=musteriler.m_no 
AND satislar.t_fiyat>2000


-- �RNEK: Sat��lar�n hangi m��terilere yap�ld���n� listeleyen G�R�N�M� olu�turunuz..
-- (SATINALANMUSTERI)
CREATE VIEW SATINALANMUSTER� AS
SELECT musteriler.ad,musteriler.soyad FROM satislar JOIN musteriler
ON satislar.m_no=musteriler.m_no

-- �RNEK: 1 OCAK 2010 tarihindeki sat��lar�n kimlere yap�ld���n� g�steriniz..
ALTER VIEW SATINALANMUSTER� AS 
SELECT musteriler.ad,musteriler.soyad FROM satislar JOIN musteriler
ON satislar.m_no=musteriler.m_no where tarih>'2010-01-01 00:00:00'

-- 500lira �zerindeki sat��lar�n kimlere yap�ld���n� g�steriniz..
SELECT *FROM musteriler,satislar WHERE satislar.m_no=musteriler.m_no 
AND satislar.t_fiyat>500

--SON OLU�TURDU�UMUZ G�R�N�M� S�LEL�M:
DROP VIEW SATILANURUNLER

-----------------------VER� TABANI KULLANICI TANIMLARI----------------------------------
-- KULLANICI TANIMLAMA
-- VER�TABANI �ZER�NDEN KULLANICI HAKLARINI TANIMLAMA

/*-*-*-*-*-*-- DCL SORGULARI -*-*-*-*-*-*-*-*-
 Veri kontrol dili sorgular�d�r.
 GRANT, REVOKE, DENY bilinen DCL sorgular�d�r.

 Bu sorgular birden cok kullan�c�s� bulunan veritabanlar�nda kullac�lara
 YETK� VERMEK, verilen yetkileri GER� ALMAK ve YETK� SINIRLAMAK i�in kullan�rl�rlar.

 Dolay�s�yla �ncelikle veritaban�nda kullan�c�(USER) ve giris(LOGIN) tan�mlamalar� yap�lmal�d�r.
 �nceki konularda oldu�u gibi burdada olu�turma i�lemleri CREATE,
 g�ncelleme i�lemleri ALTER, silme i�lemleri de DROP ile yap�l�r.

 */

 -- 1234 �ifresine sahip GIRIS1 ad�nda bir LOGIN olu�tural�m.
 CREATE LOGIN GIRIS1 WITH PASSWORD='1234'
 
 -- Yukar�da olu�turdu�umuz GIRIS1 isimli giri�i
  -- OBJECT E. > SECURITY > LOGINS'den gorebiliri.z

-- Bu login �zerinde bir kullan�c� yani bir USER olu�tural�m:
CREATE USER kul1 FOR LOGIN GIRIS1

-- GRANT: YETK� VERMEK ���N KULLANILIR.
-- REVOKE: GRANT �LE VER�LEN YETK�LER� ESK� HAL�NE D�ND�RMEK ���N KULLANILIR.
-- DENY: GRANT�N TAM TERS�D�R YETK�LER� ENGELLEMEK ���N KULLANILIR

/* GRANT' in GENEL KULLANIMI:
GRANT(B�T�N �Z�NLER) ON (�ZNE TAB�� TUTULANLAR)(TABLO VEYA G�R�N�M(SANAL TABLO))
TO KULLANICI
*/

--�RNEK: kul1 isimli kullan�c�ya tablo olu�turma yetkisi verelim.
GRANT CREATE TABLE TO kul1

--�RNEK: kul1 isimli kullan�c�ya tablo olu�turma yetkisi verelim.
GRANT INSERT,DELETE,UPDATE TO kul1

/* DENY' in GENEL KULLANIMI:
DENY(B�T�N �Z�NLER) ON (�ZNE TAB�� TUTULANLAR)(TABLO VEYA G�R�N�M(SANAL TABLO))
TO KULLANICI
*/

--�RNEK: kul1 isimli kullan�c�ya tablo olu�turma yetkisini yasakl�yal�m.
DENY CREATE TABLE TO kul1

--�RNEK: kul1 isimli kullan�c�n�n MAGAZA vtdeki musteriler tablosuna KAYIT ekleme yetkisini yasakl�yal�m.
DENY INSERT ON musteriler TO kul1

/* REVOKE'UN GENEL KULLANIMI:
REVOKE(B�T�N �Z�NLER)
TO/FROM KULLANICI
*/
--�RNEK: kul1 isimli kullan�c�n�n t�m yetkilerini geri alal�m.
REVOKE ALL FROM kul1  -- FROM Yada TO Farketmez..

--�RNEK: kul1'e musteriler tablosu �zerinde verilen t�m yetkilerini geri alal�m.
REVOKE ALL ON musteriler TO kul1

/* !!!!! D�KKATTTT !!!!!

-* DENY �LE YASAKLANAN ��LEMLER KULLANICI TARAFINDAN H�� B�R �EK�LDE YAPILAMAZ
-* REVOKE DED���M�Z ZAMAN SADECE MEVCUT YETK�LER �ZER�NDE ��LEM YAPAB�L�R�Z.
-* KULLANICI FARKLI ROLLERDE AYNI ��� YAPMAYI S�RD�REB�L�R.
*/

-- �RNEK: kul1 isimli kullan�c�y� silelim.
DROP USER kul1

-- �RNEK: kul1 isimli giri�i silelim.
DROP LOGIN GIRIS1


-- G�R�N�M SORGULARINDA GRUPLAMA YAPMA
-- Gruplama i�lemlerinde GROUP BY ifadesini kullan�yoruz.

--�rnek: MAGAZA vt.de her kategorideki toplam �r�n say�s�n� bulal�m.
select *from urunler

select k_no,count(u_no) from urunler group by k_no --urunler.u_no vs. de olabilir.

--Yazd���m�z sorgunun KATTOPURUN isimli g�r�n�m�n� olu�tural�m
CREATE VIEW KATTOPURUN AS
select k.ad,count(u.u_no)[TOPLAM �R�N ADED�] from kategoriler k JOIN urunler u
ON k.k_no=u.k_no GROUP BY k.ad

select *from KATTOPURUN 

--TOPLAM KAYITLI �R�N SAYISI 3'TEN �OK OLAN KATEGOR�LER� L�STELEY�M 
--(G�R�N�M ADI: urunsayisi)
CREATE VIEW urunsay�s� AS
select k.ad,count(u.u_no)[�R�N ADED� 3'DEN �OK OLANLAR] from kategoriler k JOIN urunler u
ON k.k_no=u.k_no GROUP BY k.ad HAVING Count(u_no)>3

select *from urunsay�s�

--***NOT***: G�R�N�M OLU�TURULDUKDAN SONRA MEVCUT G�R�N�ME HAV�NG �ARTI EKLEYEREK SORGUYU �ALI�TIRAMAYIZ..!   (;


--�rnek: Fiyat� ortalama fiyattan daha y�ksek olan �r�nleri listeleyen bir g�r�n�m olu�turunuz.
--(G�R�N�M ADI: pahal�urunler)
CREATE VIEW pahaliurunler AS
select urunler.ad,fiyat from urunler WHERE fiyat>(SELECT AVG(fiyat) from urunler)

select *from pahaliurunler

------*** G�R�N�MLER �LE �LG�L� GEL��M�� �ZELL�KLER ***---------
-- 1.ENCRYPT�ON
-- 2.SCHEMAB�D�NG
-- 3. CHECK PO�NT
-- 1. VE 2. �ZELL�K G�R�N�M OLU�TURURKEN AS �FADES�NDEN HEMEN �NCE KULLANILIR.
-- 3. �ZELL�K �SE G�R�N�M SORGUSUNUN EN SONUNDA KULLANILIR.


/* 1.ENCRYPT�ON
With ile kullan�l�r G�R�N�M OLU�TURURKEN KULLANILAN SORGULARI ��FRELER.*/
--�RNEK;
CREATE VIEW sifreli WITH ENCRYPTION AS
SELECT *FROM kategoriler

--SELECT *FROM sifreli
--sp_helptext sifreli


--DAHA �NCEDEN OLU�TURDUGUMUZ pahaliurunler �S�ML� G�R�N�M SORGULARINI L�STEL�YEL�M.
sp_helptext pahaliurunler

--D�KKAT!!!!
-- ENCRYPT�ON ��LEM� YAPARKEN G�R�N�M ���N YAZILAN KAYNAK KODU GER� GET�RME �ANSIMIZ YOK
-- BU Y�ZDEN G�R�N�M� OLU�TURMADAN �NCE B�R YEDE��N� ALMAK GEREKEB�L�R...


/* 2.SCHEMAB�D�NG
YAPISAL OLARAK G�R�N�MLER�N TABLODAK� ALANLARLA AYNI YAPIYI PAYLA�MASINI SA�LAR.
E�ER G�R�N�M OLU�TURULURKEN BU �ZELL�K KULLANILIRSA SELECT* G�B� B�R �ZELL�K KULLANILMAZ.
VE G�R�N�MDE TABLO �SM� BEL�RT�L�RKEN TABLO ADINDAN �NCE TABLONUN SAH�B� YAZILMALIDIR.
*/
-- �RNEK --

CREATE VIEW MUSTERIADLARI WITH SCHEMABINDING AS
SELECT ad FROM dbo.musteriler

SELECT*FROM MUSTERIADLARI


/* 3. CHECK PO�NT
G�R�N�M �ZER�NDE VER� EKLEME VEYA VER� DE����KL��� YAPARKEN G�R�N�MDE KULLANILAN 
SQL YAPISINA UYMAYAN KAYITLARIN EKLENMES� VEYA DE���T�R�LMES�N� ENELLER.
*/




--F�LMVT isimli vt olustur. 
CREATE DATABASE F�LMVT
use F�LMVT
--Ekranda g�rd���n�z tablolar� olu�turun.
CREATE TABLE Filmler(Film_ID int not null primary key identity(1,1),
Ad varchar(15),
Tarih smalldatetime,
IMDB_Puan int)
CREATE TABLE Film_Tur(Film_ID int,Tur_ID int)
CREATE TABLE Oyuncu_Film(Oyuncu_ID int, Film_ID int)
CREATE TABLE Turler(Tur_ID int primary key identity(1,1), Ad Varchar(15))
CREATE TABLE Oyuncular(Oyuncu_ID int primary key identity(1,1),Ad varchar(15),
Soyad varchar(15))
--Film vtde "misafirgirisi" isimli USER olu�tur.
CREATE USER Misafir FOR LOGIN misafirgirisi

--"misafirgirisi" kullan�c�s�na "Misafir"LOGIN ve"1234" password tan�ml�yal�m
CREATE LOGIN misafirgirisi WITH PASSWORD='1234'

--misafir logini ile giri� yapan ki�ileri sadece L�STELEME hakk� ver.
GRANT SELECT to Misafir

--Verdi�imiz L�STELEME hakk�n� geri alal�m.
REVOKE ALL FROM Misafir

--Olu�turdu�umuz user'i silelim.
DROP user Misafir

--
--2.KISIM:
--1. Tom Hanks'in oynad��� filmleri g�steriniz.
SELECT Ad FROM Filmler Where Film_ID=(
Select Film_ID From Oyuncu_Film where Oyuncu_ID=(
select Oyuncu_ID from oyuncular where Ad='Tom Hanks')
-- JOIN;
SELECT filmler.Ad FROM Filmler JOIN Oyuncu_Film ON
Oyuncu_Film.Oyuncu_ID=Filmler.Film_ID JOIN Oyuncular on
Oyuncular.Oyuncu_ID=Oyuncu_Film.Oyuncu_ID WHERE Oyuncular.Ad='Tom Hanks'

--2. T�r� dram olan filmlerin adlar�n� ve IMDB puanlar�n� g�steriniz.
SELECT Filmler.ad,Filmler.IMDB_Puan FROM Film_Tur JOIN Filmler 
ON Film_Tur.Film_ID=Filmler.Film_ID
JOIN Turler on Tur_ID=Film_Tur.Tur_ID where Turler.Ad='DRAM' AND AVG(Filmler.IMDB_Puan)<Filmler.IMDB_Puan

--3. Asl�han G�rb�z'�n oynad��� film say�s�n� bulunuz.
 Select SUM(Oyuncu_Film.Film_ID) From Oyuncular 
 JOIN Oyuncu_Film ON Oyuncu_Film.Oyuncu_ID=oyuncular.Oyuncu_ID Where Oyuncular.Ad='ASLIHAN GURBUZ'

--4. IMDB Puan�, t�m filmlerin IMDB Puanlar�n�n ortalamas�ndan b�y�k olan dram filmlerin
--adlar�n�, IMDB Puanlar�n�, tarihlerini listeleyiniz.
 Select Filmler.Ad From Filmler
 JOIN Film_Tur ON Film_Tur.Film_ID=filmler.Film_ID
 JOIN Turler ON turler.Tur_ID=Film_Tur.Tur_ID Where Turler.Ad ='Dram' AND AVG (Filmler.IMDB_Puan) < Filmler.IMDB_Puan

--5. K�van� Tatl�tu�'un oynad��� dramatik filmleri listeleyiniz.
 Select * From Film_Tur
 Select * From Filmler
 Select * From Oyuncu_Film
 Select * From Oyuncular
 Select * From Turler

 select Filmler.ad From Filmler 
 JOIN Film_Tur On Film_Tur.Film_ID=Filmler.Film_ID
 JOIN Turler ON turler.Tur_ID=film_tur.Tur_ID Where Turler.Ad='DRAMAT�K'


--3.KISIM:
1--. T�m fimleri g�steren "T�MF�LMLER" isimli G�R�N�M� olu�turunuz.
 Create VIEW T�MF�LMLER as

--2. Olu�turdu�umuz g�r�n�m� sadece IMDB Puan� 8'in �zerinde olanlar� g�sterecek 
--�ekilde g�ncelleyiniz.
 Alter VIEW T�MF�LMLER as
 Select filmler.IMDB_puan From filmler Where IMDB_puan > 8

--3. Olu�turdu�unuz g�r�n�m� siliniz.
 Drop VIEW T�MF�LMLER






