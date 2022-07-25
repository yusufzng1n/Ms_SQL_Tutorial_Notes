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
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'SQL eðitim seti',260,15)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'Ing eðitim seti',240,20)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'ASP.net eðitim seti',250,13)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'Php and mysql',300,22)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'Almanca eðitim seti',240,10)
INSERT INTO urunler (k_no,ad,fiyat,stok) VALUES(5,'temel Biliþim seti',350,3)

SELECT * FROM urunler

INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('KEMAL','KAYA',20,'5053389282','kemal@hotmail.com','BORNOVA','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('MEHMET','ÇETIN',21,'5557682374','mehmet@gmail.com','EGEKENT','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('CEYDA','DURAN',18,'5331136728','ceyda@hotmail.com','PENDIK','ISTANBUL')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('SERDAR','ÇOLAK',19,'5325547644','serdar@hotmail.com','ULUS','ANKARA')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('DERYA','SÖNMEZ',23,'5374456372','derya@hotmail.com','BAKIRKÖY','ISTANBUL')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('AYÞE','ÖLMEZ',22,'5553354726','ayse@gmail.com','AVCILAR','ISTANBUL')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('IBRAHIM','DURAN',21,'5556476352','ibrahim@yahoo.com','KONAK','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('SELMA','YAVUZ',21,'5336456287','selma@mynet.com','ALSANCAK','IZMIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('BURAK','TAN',25,'5432213435','burak@yhaoo.com','ÇANKAYA','ANKARA')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('KENAN','YILDIZ',18,'5443242536','kenan@gmail.com','YENIMAHALLE','BURSA')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('LEYLA','TURAN',19,'5332257387','leyla@hotmail.com','BANDIRMA','BALIKESIR')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('GÜNEÞ','BURCU',23,'5224545654','gunes@yahoo.com','MARMARIS','KOCAELI')
INSERT INTO musteriler (ad,soyad,yas,tel,email,adres,sehir) VALUES('PETEK','BAÞAK',25,'5532259858','petek@mynet.com','ESENLER','BURSA')

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

----------*******SELECT ÝLE VERÝ SORGULAMA*********----------------
--SELECT : TABLODAN KAYIT SEÇMEYÝ SAÐLAYAN DML SORGUSUDUR.
/*
Genel kullanýmý:
	SELECT alanadi FROM tabloadi
	þeklindedir.
		SELECT alanadi1,alanadi2,...,alanadin FROM tabloadi
		SELECT*FROM tabloadi
		þeklinde kullanýlýr.
*/
--ÖR:1. müsteriler tablosunda t.daki müþteri isim soyisim ve þehir bilgilerini listeleyiniz.

SELECT ad,soyad,sehir FROM musteriler

--2. Ürünler tablosundaki bütün kayýtlarý listeleyiniz.

SELECT * FROM urunler
SELECT u_no,k_no,ad,fiyat,stok FROM urunler
--SELECT ÝLE "WHERE" ÞARTININ KULLANIMI:
--Þarta baðlý listeleme sorgusu yapýlacaksa SELECT kullanýmý aþaðýdaki gibi olur;
	--SELECT alanadi FROM tabloadi WHERE þart
	--SELECT alanadi1,alanad,2,....,alanadin FROM tabloadi WHERE þart

--3.Ankara ilindeki müþterileri listeleyiniz.
SELECT * FROM musteriler WHERE sehir='ANKARA'

--4.BURSA dýþýndaki tüm þehirleri görüntüleyin.
SELECT sehir FROM musteriler WHERE sehir!='BURSA'
SELECT sehir FROM musteriler WHERE sehir<>'BURSA'
--NOT: olumsuz þart oluþturmak için <> != eþit deðil operatörleri kullanýlýr.
--5. STOKTA KALMAYAN ÜRÜMNLERÝ SIRALAYINIZ.
SELECT * FROM urunler WHERE stok=0
SELECT * FROM urunler WHERE stok<1
--6. Stokta bulunan ürünleri listeleyiniz.
SELECT * FROM urunler WHERE stok>0
SELECT * FROM urunler WHERE stok!=0
SELECT * FROM urunler WHERE stok>=1
--7. Soyadý DURAN olan tüm müþteri bilgilerini listeleyiniz.
SELECT * FROM musteriler WHERE soyad='DURAN'
--8.Soyadý DURAN olan musterilerin ad, soyad, telefon bilgilerini listeleyiniz.
SELECT ad,soyad,tel FROM musteriler WHERE soyad='DURAN'
--WHERE ÞARTI ÝLE ""NOT"" OPERATÖRÜNÜ KULLANIMI:
--Þarta baðlý listeleme yaparken olumsuz þart oluþturmanýn bir diðer yöntemi WHERE NOT sözcüðü kullanýlmalý
--9.BURSA'dakiler dýþýndaki tüm müþterileri görüntüleyin.
SELECT * FROM musteriler WHERE NOT sehir='BURSA'

--WHERE ÞARTI ÝLE AND OR NOT OPERATÖRLERÝNÝN KULLANIMI:
/*
AND:Þartlarý tümünün saðlanmasý gerektiðinde kullanýlýr.
OR: Þartlardan en az birinin saðlanmasý gerektiðinde kullanýlýr.
NOT:Olumsuz þart oluþturmak için kullanýlýr.
ÖNEMLÝ NOT NOT DEFTERÝ OLAN NOT: VE = AND, VEYA = OR, NOT=DEÐÝLSE
*/

--10. Fiyatý 500 ile 1000 arasýnda olan (500 ve 1000 dahil) bütün ürünleri listeleyiniz.
SELECT * FROM urunler WHERE fiyat>=500 AND fiyat<=1000
--11.ANKARA veya Bursa'da yaþayan müþterilerin müþteri numarasý, ad ve soyad bilgilerini listeleyiniz.
SELECT m_no,ad,soyad FROM musteriler WHERE sehir='ANKARA' OR sehir='BURSA'
--12. Stokta en az 1 ürün bulunan bütün ürünlerin ürün isimlerini ve stok miktarlarýný listeleyiniz.
SELECT ad,stok FROM urunler WHERE stok>=1
--13. Ýzmir, Bursa veya Ankara'daki müþterileri listeliyiniz.
SELECT * FROM musteriler WHERE sehir='IZMIR' OR sehir='BURSA' OR sehir='ANKARA'

--WHERE ÞARTI ÝLE IN SÖZCÜÐÜNÜN KULLANIMI.
/*
Belli deðerler arasýnda arama yapmak için ""IN"" oparetörü kullanýlýr.
Örneðin Ýzmir veya Ankara þehirlerinden birinde yaþayan müþteriler derken bu iki þehirden herhangi birinde koþulu saðlamasý istemektedir.
*/
--13. sorunun IN ile çözümü
SELECT * FROM musteriler WHERE sehir IN('IZMIR', 'BURSA', 'ANKARA')

--WHERE ÞARTI ÝLE BETWEEN SÖZCÜÐÜNÜN KULLANIMI:
/*
Ýki deðer arasýndaki kayýtlarý sorgular.
	Baþlangýç ve bitiþ deðerlerini dahil eder.
Yani <= ve >= gibi çalýþýr.
Karþýlaþtýrýlacak deðerler arasýnda AND oparetörü kullanýlýr.
*/
--10.SORUNUN BETWEEN ÝLE ÇÖZÜMÜ:
SELECT * FROM urunler WHERE fiyat BETWEEN 500 AND 1000
--14.Fiyatý 500 ile 1000 arasýnda olan (500 ve 1000 dahil !!!DEÐÝL!!) bütün ürünleri listeleyiniz. BETWEEN KULLANAMAYIZ!!!!!!!
SELECT * FROM urunler WHERE fiyat>500 and fiyat<1000

--15.Adý CEYDA veya DERYA olan müþterileri listeleyiniz
--1.YOL
SELECT * FROM musteriler WHERE ad= 'CEYDA' OR ad='DERYA'
--2.YOL
SELECT * FROM musteriler WHERE ad IN('CEYDA','DERYA')

--16.KONAK ilçesinde olmayan müþterileri listeleyiniz.
SELECT * FROM musteriler WHERE NOT adres='KONAK'

--17. KONAK veya PENDÝK ilçelerinden olmayan müþterileri listeleyiniz.
SELECT * FROM musteriler WHERE NOT adres!='KONAK' OR adres!='PENDIK'
SELECT * FROM musteriler WHERE adres NOT IN ('KONAK', 'PENDIK')

--WHERE ÞARTI ÝLE LÝKE SÖZCÜÐÜNÜN KULLANIMI:
--Þartlý ifadelerde alan içinde bulunan deðerin benzer bir kýlýfa uyup uymadýðýný denetler.
--Bir alan içerisinde belirli bir metni veya kalýbý aramak için kullanýlýr.
--ÖRNEÐÝN;Bir açýklama alaný içerisinde benzer kelimeleri bulmak için LIKE operatörü kullanýlabilir.

/*LÝKE ile kullanýlan ifadeler:
_1 adet karakteri ifade eder.
% 0veya daha fazla adet karakteri ifade eder.
*/
--ÖRN:B harfi ile baþlayan müþterileri listeleyiniz
select*from musteriler WHERE ad='B'
--SORUDA ÝSTENEN BAÞ HARFÝNÝ B OLAMSI
SELECT*FROM musteriler WHERE ad LIKE 'B%'--B ÝLE BAÞLASIN DEVAMINDA 0 VEYA DAHA FAZLA KARAKTER ANLAMINA GELIR.
--BURAK BATUHAN BERNA BEYZA BUKET BARIS BERKAY

--örn A HARFÝ ÝLE BÝTEN SEHÝRLERÝ LÝSTEYE
--ANKARA ADANA MANÝSA MUÐLA URFA BURSA
SELECT*FROM musteriler WHERE sehir LIKE '%A'--BASI NE OLURSA OLSUN SONU A ÝLE BÝTÝSÝN

--ÝÇÝNDE TV GECEN URUNLERÝ LÝSTELEYÝNÝZ....0VEYA daha FALA KARAKTER....TV TV....0veya DAHA fazlakarakter .....
--..ya....0veya DAHAfazlakarakter...tv.....0veyaDAHA fazla

SELECT*FROM urunler WHERE ad LIKE '%TV%'

--ÝSÝMÝ K ÝLE BASLAMAYAN MUSTERÝLERI LÝSTELEYINIZ

SELECT*FROM musteriler WHERE NOT ad LIKE 'K%'

-- ismi s ile baslayan ve tv ile biten urunleri listeleyýnýz
select*from urunler where ad LIKE 'S%' AND ad LIKE '%TV'

--örn HOTMAÝL hesaba sahýp oaln musterilerin AD. SOYAD, e mail bilgileriniz listeleyýnýz

select ad ,soyad,email from musteriler WHERE email LIKE '%@HOTMAÝL%'

--505,506,555,554 ÝLE BASLAYAN TELEFON NUMARALARINI TURKTELEKEOM HATTINI GÖSTERDÝÐÝNÝ "VARSAYARAK" AVEA SAHIP
--MUSTERÝLERI LÝSTELEYINIZ
SELECT*FROM musteriler WHERE tel LIKE '505%' OR tel LIKE ''

--IKINCI HARFI E ILE BASLAYAN 

SELECT*FROM musteriler WHERE ad LIKE '_E%'
--ÝSÝMÝ DORT KARAKTERLÝ OLAN 
SELECT*FROM musteriler WHERE ad LIKE '____'
--"MYNET"HESABI OLAMAYANALARI LÝSTELEYINIZ
SELECT*FROM musteriler WHERE email NOT LIKE '%MYNET%'

--ADINI 3.KARAKTERÝ R OLUP SONU R OLAMAYANLARI LSITELEYINIZ
SELECT*FROM musteriler WHERE ad LIKE '__R%' AND ad NOT LIKE'%R'

--alanlaara takma isim (alias)kullanýmý
/*veri tabanýnda herhang bir deðiþiklik yapmadan listeleem sonucunda alan isminin kullanýcý
tarafýndan anlaþilýr olmasýný salamak için daha anlamlý alan baþlýklarý verilebilir
bunun içinde AS kelimesi kullanýlýr
GENEL KULLANIMI:
SELECT alanadý AD takmad FROM tabloadý
SELECT alanadý AStakmaad,alanadý2,as takmaad2,....alanadýn AS takmadn FROM tabloadý
VEYA
SELECT alanadý [ takmad] FROM tabloadý
*/

--musteri isimlerin musterý_adý BASLÝÝÐYLA LÝSTELEYELÝM
select ad AS 'MUSTERÝ_ADI'FROM musteriler
--VEYA;
select ad [MUSTERÝ_ADI]FROM musteriler

--msurei isimlerini MUSTERÝADI baþlýðýyla listeleyelim
select ad AS 'MUSTERÝADI'FROM musteriler
--VEYA;
select ad [MUSTERÝAD]FROM musteriler


--musteri ad ve sýyad AD SOYAD BAÞLILARIYLA LÝSTELEYINIZ
SELECT ad AS 'ADI',soyad AS 'SOYADI' FROM musteriler
--VEYA
SELECT ad  [ADI],soyad [SOYADI] FROM musteriler

--#######################---ALAN BÝRLEÞTÝRME----######################

/*BAZI DURMLARDA BÝRDEN FAZLA ALANI BÝRLEÞTÝRMEK GEKEBÝLÝR.
BUNUN ÝÇÝN ALAN BÝRLEÞTIRIRKEN+APORETORU KULLANILIR
MUSTERÝ VE AD SOYADINI "MUSTERÝ ADI SOYADI " BAÞLIÐIYKA TEK SUTUNDA LÝSTELEMEK ÝÇÝN
--AD VE SOYAD ALANLARI+OPERATORU ÝLE BÝRLEÞTIRELIM

*/
SELECT ad+' '+soyad from musteriler -- NO column name baþlýðýyla yaný baþlýksýz gelir.cünku tabloda boule býr alan yok
SELECT ad+' '+soyad [MUSTERÝ ADI SOYADI]from musteriler 


--DÝKKAT :+operatöru alan birleþtýrmek için kullanýlýr fakat alanlar rakamsal veriler
--içeriyorsa bu aporetor matamatikseltoplama iþemi yapar
--orn ürünler tablosundaký urunlerý listele
select*from urunler
--urunler tablosundakýfýyat ve stok alanlarýný birleþtýrmyeyý deneyelým
select fiyat+stok from urunler--mantýklý bir iþlem degil sadece amacýmýz sayýsal alanlarý+ile topladýgýný
--

--TABLO/TABLOLARDAN ÝLK 'n' SATIRI CEKME (TOP n)'--#########
/*TABLODAN BELLÝ SAYIDA SATIR SECMEK/CEKMEK/LÝSTELEMEK için SQL iel birlikte TOP ifdesi kullanýlýr
tabloadý ilk 3 kaydý ,ilk kaydý,son kaydý,ilk n adet kaydý vb secmek için kulanýlabilir
GENEL KULLANIMI:
SELECT TOP n alanadý FROM tabloadý
*/
--örn:ilk 5 musteriyi listeleyelim:
select top 5 ad from musteriler
--ilk 3 musterinin "musterý no ad soyad"bilgilerini listeleyelim
select top 3 m_no,ad,soyad from musteriler
--musteriler tablosundaký il kaydý lissteleyelým
select top 1*from musteriler
--musteriler tablosunun ilk % 50 lýk kýsmýný lýsteleyelým
select top 50 percent *from musteriler

--top ifadesý ile tablonun belirli % sý secilebir . (top x percent )
--#####################TEKRARSIZ VERÝLERÝ CEKME (DISTINCT)#############################--

 /*tablolarda  (DISTINCT ifade ile alanda bulunan veriler tekrar etmeden listelenýr
 DISTINCT sözcugu tek basýna kullanýlmaz
 genel kulnaýmý
 SELECT DISTINC alanadý FROM tabloadý

 */
 --orn musterilerin hangý sehirlerden oldgunu bulunuz
 select DISTINCT sehir from musteriler
 --farklý musteri isimlerini listeleyelim
 select DISTINCT ad from musteriler
 

 --######################## ORDER BY ÝLE KAYITLARI SIRALAMA#################--
 /* ORDER BY kayýtlarýn belli alanlara göre sýralanarak listelemesini saðlar.
 ORDER BY ile beraber 2 temel sözcuk kullanýlýr. ASC,DESC
 ASC ASCENDING : belirtilen alana göre artan (A-Z a-z kucukten buguye sýralama)sýralama yapar.
 DESC DESCENDING: belirtilen alana gore azalan(Z-A z-a buyukten kucuge sýralama)sýralama yapar.
 Varsayýlan sýralma  sekli artan (ASC) dýr.
 GENEL KULLANIMI: 
 SELECT cumlecýgý  ORDER BY (sýralamasý ýstenen alan)
 */
      select*from musteriler order by ad
	  select*from musteriler order by ad asc
	  select*from musteriler order by ad  desc
	  --musteriler tablosunda ad soyad sehir tersten listeleme

	  select ad,soyad,sehir from musteriler order by  sehir asc

--***********************************DELETE ÝLE (((((VERÝ))))) SÝLME**********************----------------
/*
sql de tablodan veri veya kayýt silmek için kullanýlan dml sorgularýdýr
GENLE KULLANIMI:
DELETE FROM tabloadý WHERE sart

*****!!DÝKKAT COK ONEMLI!!!!!!!!!********************************
sart belirtmeden  delete sorgsunu kullanýrsak(DELETE FROM tabloadi) tablo ýcýndeký tup kayýtlar sýlýnýr!
 tablodaký veri btunlugunu b ozmak için genellýlle býrýncýl anahtar alanýna veya tekil anahtar özeliiði nulunan alana ""göre sart belirtilir ve silme sorgusu yazýlýr




*/
CREATE DATABASE X
USE X
CREATE TABLE tablo (alan varchar (25),alan2 varchar(25))
INSERT INTO tablo VALUES('ALÝ EKBER','BÝLEN')
INSERT INTO tablo VALUES('ÖZGE','YILDIZ')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('ÖZGE','CAN')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('ÖZGE','CAN')

SELECT*FROM tablo
DELETE FROM tablo WHERE (alan='ÖZGE'AND alan2='CAN')


USE master
DROP DATABASE X


CREATE DATABASE x
USE x
CREATE TABLE tablo (id int not null primary key identity (10,5),ad varchar(25),soyad varchar(25) )
INSERT INTO tablo VALUES('ALÝ EKBER','BÝLEN')
INSERT INTO tablo VALUES('ÖZGE','YILDIZ')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('ÖZGE','CAN')
INSERT INTO tablo VALUES('EMEL','YILDIZ')
INSERT INTO tablo VALUES('ÖZGE','CAN')
SELECT*FROM tablo

DELETE FROM tablo --? HATA : sart belirtnedýgýmýz için tabloadký tum kayýtlar silinir!
delete from tablo where ad='özge'--? HATA: tabloda adý özge olan tum kayýtlar sýlýnecegý içn VERÝ BUTUNLUGU bozulur
delete from tablo where id =20 ---?DOÐRU:) tablo butunlugu saðlamak adýna id alanýna gore silme iþlemýný gerçeklþerýtýrýl

--örnek musteriler tablosuna kýsýsel  bilgilerinizi musteriler önce ekleyeýnýz sonra eklegýnýz sýlýn

use MAGAZA
select*from musteriler
INSERT INTO musteriler  (ad ,soyad,email) values('ali','can','alicancan@yahoo.com')
delete from musteriler where m_n=14



--########################UPDATE ÝLE (((((VERÝ)))))))GÜNCELLEME ######################---
/*
SQL DE kayýtlarýý /verileri güncelemek için kullanýlan DML sorgusudur.
GENEL KULLANIMI:
UPDATA tabloadý SET alanadý=yanýdeger WHERE þart
*/
 --örnek:3 nolu musteriin e posta adresýný: ceydaduran@hotmail.com olarak gunceleyýnýz

   UPDATE musteriler SET email='ceydaduran@hotmail.com' WHERE m_no=3
   SELECT *FROM musteriler
 --örnekceyda duran isimli musterinin adres bilgilerini alsancak ýzmýr olarak guncelleyelým

   UPDATE musteriler SET adres='ALSANCAK' WHERE m_no=3
   UPDATE musteriler SET sehir='IZMIR' WHERE m_no=3
   SELECT *FROM musteriler
   UPDATE musteriler SET adres='ULUS', sehir='ANKARA' WHERE m_no=3
 --örn:tum masaustu býlgýsayarlarýn urun fýyatalrýný %10 ZAMLI olarak guncelleyelým
   UPDATE urunler SET fiyat=fiyat+(fiyat*10/100) WHERE  ad LIKE '%pc'
   UPDATE urunler SET fiyat=fiyat+(fiyat*0.1) WHERE  ad LIKE '%pc'
   UPDATE urunler SET fiyat=fiyat*1.1 WHERE  ad LIKE '%pc'
   SELECT *FROM urunler WHERE ad LIKE '%pc' 
  --örn:tum masaustu býlgýsayarlarýn urun fýyatalrýný %10 ÝNDÝRÝMLÝ olarak guncelleyelým
   UPDATE urunler SET fiyat=fiyat-(fiyat*10/100) WHERE  ad LIKE '%pc'
   UPDATE urunler SET fiyat=fiyat-(fiyat*0.1) WHERE  ad LIKE '%pc'

   --Casper pc fiyatýný 800 olarak deðiþtirelim.
   UPDATE urunler SET fiyat=800 WHERE ad LIKE 'Casper pc'

   --lbm pc fiyatýný 900 olarak deðiþtirelim.
  UPDATE urunler SET fiyat=800 WHERE ad LIKE 'lbm pc'

  --IZMIR Olarak kayýtlý þehirleri ÝZMÝR þeklinde güncelleyin
   UPDATE musteriler SET sehir='ÝZMÝR'WHERE ad ='IZMIR'
   SELECT*FROM musteriler

   ------------------------------------- SQL'DE FONKSÝYONLAR: ----------------------------------------------------
   /* SQL'DE fonksiyonlarý genel olaran 3 gruba ayýrabiliriz:
   ÖDEV : ÖRNELERLE ARASTIR.
   SELECT UPER (neslihan) SONUC: NESLÝHAN gibi
   MATEMATÝKSEL FONKSÝYONLAR: MAX, MIN,COUNT, SUM,AVG
   METÝNSEL (STRÝNG) FONKSÝYONLAR: UPER, LOWER, LTRIM(), RTRIM(), REPLACE
   TARÝH SAAT FONKSÝYONLAR:

            ####### MATEMATÝK FONKSÝYONLARI #######
  **  MAX ve MIN **
  Belirtilen alandaki en yüksek ya da en düþük deðerleri bulmak için kullanýlýr.

  SELECT MAX(alanadi) FROM tabloadi SQL ifadeleri.*/
 -- ÖRNEK:Ürünler tablosundaki ürünlerden en pahalý olanýnýn fiyatýný listeleyelim
  SELECT MAX(fiyat) AS 'En Yüksek Fiyat' FROM urunler

 -- ÖRNEK:Ürünler tablosundaki ürünlerden en pahalý olanýnýn fiyatýyla beraber listeleyelim
 SELECT MAX(fiyat) AS 'En Yüksek Fiyat' FROM urunler -- SONRA
 SELECT *from urunler

  --#### SELECT MIN (alanadi) FROM tablo Adi #####
  -- ÖRNEK: Ürünler tablosundaki ürünlerden en düþük olanýnýn fiyatýný listeleyelim
   SELECT MIN (fiyat) AS 'EN Düþük Fiyat' FROM urunler


  --  ** COUNT **
  --Belirtilen alandaki kayýtlarýn/verilerin sayýsýný elde etmek için kullanýlýr.
  --KULLANIMI: SELECT COUNT (alanadi) FROM tabloadi

  SELECT Count(m_no) [TOPLAM MUSTERÝ SAYISI] FROM musteriler 
  SELECT Count(ad) [TOPLAM MUSTERÝ SAYISI] FROM musteriler 
  -- NOT!!!DÝKKAT..!;
  --Tabloda Sayma iþlemini yaparken BOÞ GEÇÝLEMEZ alana göre iþlem yapýlýrsa kayýt sayýsý doðru þekilde elde edilir.
  --COUNT tabloda her hangi bir boþ kayýt varsa o kaydý sayma iþlemine DAHÝL ETMEZ!
  /*
  NO AD
  1  ALÝ
  2  AHMET
  3        --BOÞ GEÇÝLEMEZ OLMADIÐI DURUMDA 3.BOÞLUGU GORMEYECEKTÝR VE YANLIÞ SAYACAKTIR.
  4  EMEL
  5  AYÞE
  */
 --  ** SUM **
 --  Tablodaki bir alan/alandaki kayýt/verirlerin deðerlerin toplamýný elde etmek için kullanýlýr.
 -- KULLANIMI: SELECT SUM alanadi FROM tabloadi
 --ÖRNEK: Tüm ürün türlerine ait toplam stok deðerini gösteriniz.
  SELECT SUM(stok) AS 'TOPLAM STOK ADEDÝ' FROM urunler

  --** AVG **
  -- Belirtilen alandaki deðerlerin ortalamasýný elde etmek için kullanýlýr.
  -- KULLANIMI: SELECT SUM alanadi FROM tabloadi
   --ÖRNEK: ORTALAMA  MUÞTERÝ YAÞINI TESPÝT EDÝNÝZ.
  SELECT AVG(yas) [MUSTERÝLERÝN ORTALAMA YASI] FROM musteriler
  SELECT *FROM musteriler
  
--  ################# METÝNSEL (STRÝNG) FONKSÝYONLAR ####################
  -- 1.*** LOWER ***
  -- Ýstenilen alanlarý küçük harf ile gösterir.
  -- SELECT LOWER (alanadi) FROM tabloadi
  --ÖRNEK
  SELECT  ad,LOWER (soyad) FROM musteriler

 -- 2.*** Upper ***
-- Ýstenilen alanlarý büyük harf ile gösterir.
 SELECT ad, UPPER(soyad) FROM MUSTERÝLER

--3. *** LEFT ***
--Verilen bir metnin soldan itibaren istenilen sayýda karakterlerini geri döndürür.
SELECT LEFT ('HALKALI MESLEKÝ VE TEKNÝKÝ ANADOLU LÝSESÝ',7)
GO
--Sonuç: HALKALI

-- 4.*** RIGHT **
--Verilen bir metnin saðdan itibaren istenilen sayýda karakterlerini geri döndürür.
SELECT RIGHT ('HALKALI MESLEKÝ VE TEKNÝKÝ ANADOLU LÝSESÝ',7)
GO
--Sonuç: LÝSESÝ

-- 5.*** CHAR ***
--0-255 arasý girilen tam sayýnýn ASCII tablosundaki karþýlýðý olan karakteri verir. 
--Girilen sayý bu aralýk dýþýndaysa NULL deðeri döner.
SELECT CHAR (52)
GO
--Sonuç: A

-- 6.*** ASCII ***
--Verilen bir karakterin ASCII tablosundaki deðerini veren fonksiyondur. 
--Eðer bir karakter yerine bir metin girilirse metnin ilk karakterini yani en solundaki karakterinin ASCII deðerini verir.
  SELECT ASCII('A') --=65
  SELECT ASCII ('YUSUF')

 -- 7.*** LEN ***
 --Bir alandaki metnin uzunluðunu görmek için kullanýlýr.
 --KULLANIM :SELECT LEN(alanadý) FROM tabloadi
 SELECT LEN ('HALKALI MESLEKÝ VE TEKNÝK ANADOLU LÝSESÝ')

 -- 8.*** REVERSE ***
 --BÝR ALANDAKÝ METÝNÝN TERS CEVÝRÝLMESÝ ÝÇÝN KULLANILIR.
 --KULLANIM: SELECT REVERSE ()
  SELECT REVERSE ('HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ')
  --Sonuç: ÝSESÝL ULODANA KÝNKET EV ÝKELKSEM ILAKLAH

--9.*** LTRIM ***
--Verilen metnin baþýnda varsa boþluklarý silmeye yarar.
SELECT LTRIM ('      HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ     ')
--Sonuç:HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ     '

--10.*** RTRIM ***
--Metnin sonundaki boþluklarý silen fonksiyondur.

SELECT RTRIM ('      HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ     ')
--Sonuç:      HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ  

--Yukarýdaki metnin baþýndaki ve sonundaki boþluklarý kaldýralým.
SELECT RTRIM(LTRIM('      HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ     '))
SELECT LTRIM(RTRIM('      HALKALI MESKLEKÝ VE TEKNÝK ANADOLU LÝSESÝ     '))

--11.*** REPLACE:  3 PARAMETRESÝ vardýr.
--1. String ifade (tablodaki herhangi bir alandaki veri de olabilir, sadece bir string
--de olabilir.)
--2.Stringin deðiþecek bölümü
--3.String ifadedeki yeni deðer.
--SELECT REPLACE(stringveri,eskimetin,yenimetin) FROM tabloadi
--HALKALI MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ'ni HALKALI MTAL olarak deðiþtirelim.
SELECT REPLACE('HALKALI MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ','MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ','MTAL')
--**********************************************************************************

  --12.*** Substring ***
  --Ýstenilen verinin bir parçasýný göstermek için kullanýlýr.
  --Bir string içerisinden alt string almayý saðlar.
  --3 parametresi vardýr.
  --1.string ifade (tablodaki herhangi bir alandaki veri de olabilir, sadece bir string de olabilir.)
  --2.alt stringin baþlangýç konumu
  --3.alt stringin uzunluðu
    SELECT SUBSTRING (' Yusuf Zenginn ',2,12)
-- SELECT SUBSTRING('stringveri','baþlangýç konumu(int),uzunluk(int)')

--HALKALI MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ'nden MESLEKÝ VE TEKNÝK ANADOLU LÝSESÝ metnini çekelim.
SELECT SUBSTRING('HALKALI MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ',9,33)
SELECT SUBSTRING('HALKALI MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ',9,LEN('MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ'))--gerek yok :)

--*********************************************************************************************

 -- MÜÞTERÝLERÝ SEHÝRLERÝNE GÖRE GRUPLAYINIZ.
    select*from musteriler order by sehir 
 -- MÜSTERÝLERÝ SEHÝRLERÝNE GÖRE ARTAN SIRADA GÖSTERÝNÝZ
     select*from musteriler order by sehir desc
 -- HER ÞEHÝRDEN KAÇ MUSTERÝNÝN OLDUGUNU GÖSTERÝNÝZ (GROUP BY)
    SELECT sehir FROM musteriler GROUP BY sehir
 -- HER KATEGORÝDEN KAÇ ÜRÜN OLDUGUNU GÖSTERÝNÝZ
    SELECT u_no FROM urunler GROUP BY u_no
 -- HER KATEGORÝDEKÝ ORTALAMA ÜRÜN FÝYATINI BULUNUZ 
 select avg(fiyat) As 'Ortalama urun fiyatý'FROM urunler
 -- HER KATEGORÝDEKÝ EN YÜKSEK ÜRÜN FÝYATINI BULUN
  select *from urunler order by fiyat desc 
 -- HER KATEGORÝDEKÝ EN DÜÞÜK ÜRÜN FÝYATINI BULUN
  select *from urunler order by fiyat desc 
 -- ADINIZI STRÝNG FONKSÝYONDA YAZDIRIN    
   SELECT LEN ('YUSUF')
   GO
 --  ################### TARÝH SAAT FONKSÝYONLARI #############################
	 --  SORULAR;

	 -- BUGUNÜN TARÝHÝNÝ VEREN SQL SORGUSUNU YAZIN
	    select getdate()  [BUGÜNÜN TARÝHÝ]
	 -- ÝÇÝNDE BULUNDUÐUMUZ AYI GÖSTEREN SQL SORGUSUNU YAZIN	
	    SELECT MONTH(GETDATE()) [BULUNDUÐUMUZ AY]
	 -- AYIN HANGÝ GÜNÜNDE OLDUGUNU GÖSTEREN SQL SORGUSUNU YAZIN
	    SELECT DAY(GETDATE()) [BULUNDUÐUMUZ TARÝH]
	 -- KAÇ YAÞINDA OLDUGUNUZU TARÝH SAAT FONKSÝYONU ÝLE BULUNÜ
        SELECT DATEDIFF(YEAR,'2002-10-07',GETDATE()) [KAÇ YAÞINDASIN]
	 -- KAÇ GÜNLÜK OLDUÐUNUZU YAZIN
	    SELECT DATEDIFF(DAY,'2002-10-07',GETDATE()) [KAÇ GÜNLÜKSÜN]
	 -- SÝSTEM TARÝH SAAT FONKSÝYONUNU GÖSTEREN SQL SORGUSUNU YAZIN
	     select getdate()  [SÝSTEMÝN TARÝHÝ]
	 -- SÝSTEM TARÝHÝNÝ 1 HAFTA ÝLERÝYE ALIN.
	 	SELECT DATEADD(DAY,7,GETDATE()) [1HAFTA SONRA BUGÜN]

	--ÖRN:Tek select ifadesi ile þu anki gün,ay,yýl bilgilerini listeleyelim.
	SELECT DAY(GETDATE()) AS 'GÜN', MONTH(GETDATE()) AS 'AY', YEAR(GETDATE()) AS 'YIL'
 --*********************************************************************
  --DATEPART():
 -- ÝLGÝLÝ ALANDAKÝ TARÝH/SAAT VERÝSÝNDEN ÝSTENÝLEN BÖLÜMLERÝ ALIR. 2 PARAMETRESÝ VARDIR.
 --1. dd,mm,yy bilgisi
 --2. tarih bilgisi
 SELECT DATEPART(DD,GETDATE())
 SELECT DATEPART(MM,GETDATE())
 SELECT DATEPART(YY,GETDATE())

 SELECT RIGHT(DATEPART(YY,GETDATE()),2)

 --ÖRN:Satýþlar tablosundaki tarih alanýndan YIL kýsýmlarýný seçelim.
 SELECT * FROM satislar
 SELECT DATEPART(YY,tarih) FROM satislar

 --DATEADD():BELÝRTÝLEN DEÐER KADAR TARÝH BÝLGÝSÝNE EKLEME YAPAR.
 --ÖNEMLÝ: Veri tabanýnda herhangi bir güncelleme iþlemi yapmaz.
 --Sadece sorgu sonucunda elde edilen deðere ekleme yapar ve görüntüler.
 --3 Parametresi vardýr.
 --1. eklenecek tarih bölümüdür.(gün, ay, yýl...)
 --2. Ne kadar (gün/ay/yýl) ekleneceðini belirten ifadedir.
 --3.iþlem yapýlacak tarih bilgisini belirten ifadedir.

--***********************************************************
--Þu anki sistem tarihine 2 gün ekleyelim.
SELECT DATEADD(DAY,2,GETDATE())
--Þu anki sistem tarihine 3 ay iþleyelim.
SELECT DATEADD(MM,3,GETDATE())
SELECT DATEADD(MONTH,3,GETDATE())
--Þu anki sistem tarihine 1 yýl ekleyelim.
SELECT DATEADD (YY,1,GETDATE())
--Þu anki sistem tarihine 1 yýl ekleyelim.(Üstekkinden farklý þekilde ekleyelim:))
SELECT DATEADD(YEAR,1,GETDATE())

--*************************************************************
--DATEDIFF():ÝKÝ TARÝH ARASINDAKÝ FARKI VERÝR.
--3 PARAMETRESÝ VARDIR.
--1.SEÇÝLECEK TARÝH BÖLÜMÜDÜR.(GÜN,AY,YIL...)
--2.ÝLK TARÝH DEÐERÝNÝ BELÝRTEN ÝFADEDÝR.
--3.ÝKÝNCÝ TARÝH DEÐERÝNÝ BELÝRTEN ÝFADEDÝR.

--ÖRN: YAÞIMIZI HESAPLAYALIM :))
SELECT DATEDIFF(YY,'2002',GETDATE())

--********************************************************
--5. ISDATE(): ÝLGÝLÝ TARÝHÝN GEÇERLÝ BÝR TARÝH OLUP OLMADIÐINI GÖSTERÝR.
SELECT ISDATE ('2019-02-30') --Geçerli bir tarih olmadýðýndan 0 deðerini döndürür.
SELECT ISDATE ('2019-02-21') --Geçerli bir tarih olduðu için 1 deðerini döndürür.
SELECT ISDATE ('2019-21-02') --Geçerli bir tarih olmadýðýndan 0 deðerini döndürür.

--****************************************************
--6. SELECT DATENAME(): ÝLGÝLÝ TARÝHÝN GÜN VEYA AY ÝSÝMLERÝNÝ GÖSTERÝR.
SELECT DATENAME(DW,'2018-12-05') --WEDNESDAY
SELECT DATENAME(MONTH,'2018-12-05') --DECEMBER

--NOT:ÖNEMLÝ HATIRLATMA:
--DATETIME BÝÇÝMÝ ÝÇÝN KAYIT FORMATI: YYYY-MM-DD-HH-MI-SS
--SMALLDATETIME BÝÇÝMÝ ÝÇÝN KAYIT FORMATI: YYYY-MM-DD-HH-MI-SS
--TIMESTAMP biçimi için kayýt formatý: BENZERSÝZ BÝR NUMARA ATAMASI YAPAR.
--DATE'den farký saniyeleri daha ayrýntýlý þekilde alabilmesidir.

SELECT GETDATE()-- 2018-12-05 15:09:35.490
SELECT CURRENT_TIMESTAMP --2018-12-05 15:09:15.583

--****************************************************************************
--7. SYSDATETIME(): TÝMESTAMP deðerini bölgesel saat farklýlýklarýný göstermeden döndürür.
SELECT SYSDATETIME() --2018-12-05- 15-13-12-8433456

--*****************************************************************
 --################################ GROUP BY #######################################
 --Tablodaki verileri belirli alan/alanlara göre gruplamak için kullanýlan SQL ifadesidir.
 --Genellikle matematiksel fonksiyonlarla (COUNT,MAX,MIN,SUM,AVG)
 
 /*KULLANIMI: 
 SELECT alanadi_adi1, fonksiyon(alan_adi2)
 FROM tablo 
 GROUP BY (alan_adi)
 */

 --ÖRN: MÜÞTERÝLERÝ SEHÝRLERÝNE GÖRE GRUPLAYINIZ.
    select ad,soyad,sehir from musteriler group by sehir ,ad,soyad

	select ad from musteriler group by sehir --HATA VERÝR! GRUPLAMA VE LÝSTELEME KISIMLARINDA 
	--ÝLGÝLÝ ALANLARI KULLANMALIYIZ.


 --ÖRN: HER ÞEHÝRDEN KAÇ MÜÞTERÝNÝN OLDUÐUNU GÖSTERÝNÝZ.
     select sehir, COUNT(m_no) AS 'MÜÞTERÝ SAYISI' From musteriler
	 group by sehir


 -- HER KATEGORÝDE KAÇ ÜRÜN OLDUGUNU GÖSTERÝNÝZ (GROUP BY)
    SELECT k_no AS 'KATEGORÝ NUMARASI',COUNT (u_no) AS 'KATEGORÝDEKÝ ÜRÜN SAYISI' from urunler
	GROUP BY k_no

--Her kategorideki en pahalý ürünü gösteriniz.
SELECT k_no AS 'KATEGORÝ NUMARASI', MAX(fiyat) AS 'KATEGORÝDEKÝ EN PAHALI ÜRÜN' FROM urunler GROUP BY k_no

--***********************########### HAVÝNG ############*********************************
/*HAVING yapýsý temelde WHERE ile ayný görevi yapmaktadýr. GROUP BY ile kullanýlýr.
 Where ifadesi ile belirtilen kriter Group By uygulanmadan önce geçerli olurken,
 Having ifadesi ile belirtilen kriter ise group by uygulandýktan sonra ortaya çýkan verileri 
 filtrelemek için kullanýlýr. Ayrýca Where ifadesinden sonra sum, avg gibi fonksiyonlar
 kullanýlamazken, Having ile kullanýlabilir.

HAVING Kullaným Biçimi;

SELECT alan_adlari,
FROM Tablo
GROUP BY alan_adi
HAVING alanadi operator deger*/
--******************************************************************************
--ÖRN: TOPLAM KAYITLI ÜRÜN SAYISI 3 TEN ÇOK OLAN KATEGORÝLERÝ LÝSTELEYELÝM.

-- Ýlk aþama: Her kategorilerdeki ürünleri gösterin
 SELECT k_no,ad from urunler GROUP BY k_no,ad

--2.aþama her kat.deki ürün sayýsýný bulalým.
   SELECT k_no AS 'KATEGORÝ NUMARASI',COUNT (u_no) AS 'KATEGORÝDEKÝ ÜRÜN SAYISI' from urunler
GROUP BY k_no 
--3.aþama 3'ten büyük þartýný ekleyelim.
   SELECT k_no AS 'KATEGORÝ NUMARASI',COUNT (u_no) AS 'KATEGORÝDEKÝ ÜRÜN SAYISI' from urunler
GROUP BY k_no HAVING COUNT(u_no)>3

--ÖRN: MÜÞTERÝ SAYISI 2 OLAN ÞEHÝRLERÝ GÖSTERÝNÝZ.
SELECT * FROM musteriler ORDER BY sehir
SELECT COUNT(m_no),sehir FROM musteriler GROUP BY sehir
SELECT COUNT(m_no),sehir FROM musteriler GROUP BY sehir HAVING COUNT(m_no)=2

-- ÖRN:ORTALAMA ÜRÜN FÝYATI 1000'ÝN ÜZERÝNDE OLAN KATEGORÝLERÝ LÝSTELE
SELECT k_no ,AVG(fiyat)[FÝYATLAR] FROM urunler GROUP BY k_no HAVING AVG(fiyat)>1000

--ÖR: ORTALAMA FÝYATI TÜM KATEGORÝLERDEKÝ ÜRÜNLERÝN ORTALAMA FÝYATINDAN DÜÞÜK OLAN KATEGORÝLER HANGÝLERÝDÝR
 --1. Aþama tüm kategorideki ürünlerin ortalama fiyatý(GENEL ORTALAMA);
 SELECT AVG (fiyat) FROM urunler
 --2. AÞAMA
  SELECT k_no,AVG (fiyat) FROM urunler GROUP BY k_no HAVING AVG(fiyat)<(SELECT AVG (fiyat) FROM urunler)

--VERÝTABANINDA SORGULAR MODÜLÜ
--ÖDEV; DAHA ÖNCE YAPMADIÐIM ÖDEVLERÝ YAPACAÐIM ! DAHA ÖNCE YAPTIYSA EÐER BAÞKA BÝR VERÝ TABANI ÜZERÝNDE ÖDEVÝMÝ TEKRARDAN YAPACAGIM.
-- ANY , ALL, SOME ne iþe yarar? nasýl kullanýlýr? farklarý nelerdir?
-- @@@@@@@@@@  ÖDEV  @@@@@@@@@@@@
--Any:Ýngilizce'de de herhangi biri anlamýna gelen any komutu sql komutumuzda da herhangi biri anlamýný taþýr.
--All:Ýngilizce'de de hepsi anlamýna gelen ALL komutu sql komutumuzda da hepsi anlamýný taþýr.
--Some: SOME bir listedeki her bir deðere veya bir sorgudan bir deðer karþýlaþtýrýr ve bir iç sorgunun sonucu en az bir satýr içeriyorsa,
-- doðru olarak deðerlendirir. SOME alt sorgudaki en az bir satýr ile eþleþmeli ve önce karþýlaþtýrma operatörleri tarafýndan yapýlmalýdýr.
-- En büyük bir deðerden daha büyük SOME araçlarý ile ( > ) ' den büyük miktarda kullanmayý düþünün.


-- -- -- -- -- -- --    #*#*#*#* ALT SORGULAR; *#*#*#*#*  -- -- -- -- -- -- -- -- --

/*Bazý durumlarda bir sorgudan elde edilen sonuç diðer bir sorgu içerisinde kullanýlabilmmektedir
Bu tür durumlarda iç içe sorgular oluþturulmaktadýr.
Kullanýlan iç içe sorgularda yer alan içteki sorgulara "alt sorgular " adý verilir.

ÝÇ ÝÇE SELECT YAPISI
ALT SORGU DÜZENLEME KURALLARI:
1- Ýçteki sorgu (alt sorgu) parantez içine yazýlýr.
2- Ýçteki sorgu (alt sorgu) ORDER BY içermemeli.
3- Ýçteki sorgu (alt sorgu) ana sorgunun saðýnda yer almaktadýr.

SELECT liste FROM tablo WHERE ifade karþýlaþtýrma 


(SELECT liste FROM tablo)

Karþýlaþtýrma :[ANY | ALL | SOME] (Sql deyimi): Karþýlaþtýrma, ifadeyi, alt sorgununun
sonuçlarý ile karþýlaþtýrmaya yarayan bir karþýlaþtýrma iþlecidir
ifade   : [NOT] IN (sqldeyimi):ifade,alt sorgu sonuç kümesinde aranan ifadeye verilen addýr

ÖRNEKLERE GEÇMEDEN ÖNCE VT. YENÝDEN BÝR GÖZDEN GEÇÝRELÝM :)) HATIRLAYALIMMM 
*/
SELECT *FROM kategoriler
SELECT *FROM urunler 
SELECT *FROM musteriler
SELECT *FROM satislar
SELECT *FROM satis_detay

--ÖR: Kitap kategorisindeki ürünleri listeleyelim
--1. urunler tablosuna bakarýz. (ama hangi k_no kitap kategorsinine ait anlayamadýðýmýz için..)
--2. kategoriler tablosuna bakar kitap kategorisinin k_nosunu not alýrýz
--3. urunler tablosuna tekrar döner not aldýgýmýz kno ya göre listeleme yaparýz
SELECT k_no FROM kategoriler WHERE ad='kitap'
SELECT *From urunler where k_no=5

--BÝRLEÞTÝRME;
SELECT *From urunler where k_no=(SELECT k_no FROM kategoriler WHERE ad='kitap')

--ÖR: Bilgisayar kategorisindeki ürünleri listeleyiniz.
SELECT *From urunler where k_no=(SELECT k_no FROM kategoriler WHERE ad='bilgisayar')
SELECT *From urunler where k_no=1

--ÖR:IBRAHIM DURAN a toplam satýþ tutarýný listeleyiniz.
select *from satislar
SELECT SUM (t_fiyat) from satislar Where m_no=7

--ÖR:Ibm pc ürününden kaç adet satýldýðýný bulunuz.
select SUM (miktar) [TOPLAM SATIS ]from satis_detay where u_no=(
select u_no from urunler where ad ='Ibm pc'
)
--ÖR:stoðu tükenen ürünlerin kategori isimlerini listeleyiniz.
SELECT ad from kategoriler where k_no IN(SELECT k_no FROM urunler WHERE stok=0)

--ÖR:2010-01-04-00 :00:00 tarihinden önce kimlere ürün satýldýðýný bulunuz.
SELECT ad, soyad from musteriler where m_no IN(
SELECT m_no from satislar where tarih<'2010-01-04 00:00:00')

-- Ýstanbul veya Ankara þehrinde yaþayan müþterilere ait satýþlarý listeleyiniz.
select *from satislar where m_no IN(
 SELECT m_no FROM musteriler where sehir IN ('ISTANBUL','ANKARA'))

-- Sony televizyon ürününün satýldýðý þehir veya þehirleri listeleyiniz.

select sehir from musteriler where m_no=(
 Select  m_no from satislar where s_no=(
  Select s_no from satis_detay where u_no=(
  select u_no from urunler where ad ='Sony tv')))

-- Cep Telefonu kategorisindeki ürünleri satýþ tarihlerini tespit ediniz.
 select tarih from satislar where s_no IN(
select s_no from satis_detay where u_no IN(
select u_no from urunler where k_no=(
select k_no from kategoriler where ad='cep telefonu')))      
                                                                select*from satis_detay                  
                                                                select *from satislar					
                                                                 select *from musteriler
                                                                 select *from kategoriler
																 select *from urunler 
-- Derya Sönmezin Kaç adet ürün aldýðýný gösteriniz.
   select sum(miktar) from satis_detay  where s_no IN(
   select s_no from satislar where m_no IN(
  Select m_no from musteriler where ad ='DERYA' AND soyad ='SÖNMEZ'))

-- Bir defada bir çeþit üründen en fazla ürün alan müþterilerinin bütün bilgileriniz listeleyiniz.
select *from musteriler where m_no=(
SELECT m_no from satislar where s_no IN(
select s_no from satis_detay where miktar=(
SELECT max(miktar) from satis_detay )))

-- NOTT!!!; ALT SORGU YAZMAKA ÝÇÝN FARKLI TABLOLAR KULLANMAK GEREKMEZ. TE TABLODA DA
--                ALT SORGU YAZABÝLÝRÝZ.

-- 5 Ocak'ta hangi ürün veya ürünler Satýlmýþtýr.
SELECT ad FROM urunler where u_no IN(
select u_no from satis_detay where s_no IN(
SELECT s_no from satislar where tarih='2010-01-05 00:00:00'))
-- Ýngilizce eðitim setiyle birlikte hangi ürünlerin satýldýðýný gösteriniz.
--uno 20 sno=1    / uno 2/20

SELECT u_no FROM urunler where ad ='Ing eðitim seti'
-- Balýkesir, Kocaeli veya Bursa illerine yapýlan toplam satýþ tutarýný gösteriniz.
--Ýzmir ilinde olmayan müþterilere ait satýþ ve müþteri bilgilerini görüntüleyiniz.
                                                           select*from satis_detay                  
                                                                select *from satislar					
                                                                 select *from musteriler
                                                                 select *from kategoriler
																 select *from urunler 

--*********************########## KARTEZYEN ÇARPIMI-ALT SORGU KULLANIMLARI ###########**************************
--ÖRNEK ile konuyu inceleyelim.

--ÖRNEK: Satýþ yapýlan müþterilerin müteri bilgilerini ve satýþ bilgilerini tablosunu kartezyen
-- birleþimi kullanarak gösterelim.

SELECT *FROM satislar,musteriler
 WHERE satislar.m_no=musteriler.m_no

-- eðer tablo adlarýný uzun uzun yazmamak istersek tablo adýnýn yanýna takma ad konulabilir.
--örneðin;  
                   SELECT *FROM satislar s, musteriler m
				   WHERE s.m_no=m.m_no

-- Ayný sorunun Ýç-Ýçe select ile çözümü;
SELECT *FROM musteriler WHERE m_no IN(
SELECT m_no FROM satislar)

select*from satis_detay                  
 select *from satislar
 select *from musteriler
 select *from kategoriler
 select *from urunler 
 -- Satýlan Ürünlerden En pahalý olaný hangi üründür?

 SELECT max(t_fiyat) [EN PAHALI ÜRÜN]
 FROM satislar,satis_detay,urunler
 WHERE 
 satis_detay.s_no=urunler.u_no



 --Ýzmir ilinde olmayan müþterilere ait satýþ ve müþteri bilgilerini görüntüleyiniz.
SELECT *FROM musteriler, satislar 
WHERE musteriler.m_no =satislar.m_no
AND musteriler.sehir!='IZMIR'

--Televizyon alan müþterilerin no ve ad bilgilerini listeleyiniz.
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

-- Müþteri numarasý 5'ten büyük olanlara hangi tarihlerde satýþ yapýlmýþtýr.
select satislar.tarih from musteriler,satislar
where musteriler.m_no>5
and 
musteriler.m_no=satislar.m_no

--Hangi kategorideki ürünler 1000TL'den ucuzdur?
SELECT DISTINCT(kategoriler.ad)
FROM urunler,kategoriler
WHERE urunler.fiyat<1000
and 
urunler.k_no=kategoriler.k_no

--Yapýlan her satýþtaki ürün bilgilerini listeleyiniz.
SELECT urunler.*FROM satislar,satis_detay,urunler
WHERE satislar.s_no=satis_detay.s_no AND satis_detay.u_no=urunler.u_no

--Her satýþtaki ürünlere ait kategorileri listeleyiniz.
SELECT kategoriler.* FROM satislar,satis_detay,urunler,kategoriler
WHERE satislar.s_no=urunler.u_no
AND satis_detay.u_no=urunler.u_no
and urunler.k_no=kategoriler.k_no

--ÖRNEK: 3 Nolu satýþta hangi kategoriden satýþ yapýlmýþtýr?
SELECT kategoriler.ad FROM satis_detay,urunler,kategoriler
where satis_detay.s_no=3
AND satis_detay.u_no=urunler.u_no
and urunler.k_no=kategoriler.k_no

-- Halkalý Mesleki ve Teknik Anadolu Lisesinden Mesleki ve Teknik Anadolu lisesini alýn.

SELECT SUBSTRING('HALKALI MESLEKÝ ve TEKNÝK ANADOLU LÝSESÝ',9,32)
SELECT SUBSTRING('HALKALI MTAL',(LEN('HALKALI')+2),LEN('MTAL'))

SELECT LOWER ('aYþe')
SELECT UPPER (LEFT ('ayþe',1))+lower (RIGHT ('Ayþe', (LEN('ayþe')-1)))

SELECT ad FROM musteriler
SELECT LOWER (ad) FROM  musteriler --adýný küçültme
SELECT left (ad,1) FROM  musteriler -- varsayýlan baþ harfi
SELECT UPPER(LEFT (ad,1)) FROM  musteriler --baþ harflerinin büyük olmasý
SELECT RIGHT(ad,(LEN(ad)-1)) from musteriler --baþ harfleri hariç isimler
--Son 2 SORGUYU Birleþtirelim.
SELECT UPPER(LEFT(ad,1)+LOWER(RIGHT(ad,(LEN(ad)-1)))) FROM musteriler
--RIGHT yerine substring fonksiyonunu kullanalým:
SELECT UPPER(LEFT(ad,1)+LOWER(SUBSTRING(ad,2,(LEN(ad)-1)))) FROM musteriler

select *from 

--BUGUNUN TARÝHÝ ÝLE 8YIL ÖNCE SATILMIÞ 
SELECT DATEDIFF(YEAR,tarih,GETDATE()) FROM satislar

CREATE TABLE personel(ad varchar(25),maaþ int)
insert into personel(ad,maaþ) values ('A',100)
insert into personel values ('B',150)
insert into personel values ('C',200)
insert into personel values ('D',200)
select *from personel
--örn:tum personelin maaþlarýný 10lira arttýrýn
   UPDATE personel SET maaþ=maaþ+10 
--örn:tum personelin maaþlarýný 10lira indirin
   UPDATE personel SET maaþ=maaþ-(maaþ*10/100) 
   UPDATE personel SET maaþ=maaþ-(maaþ*0.1) 

CREATE TABLE ogrenci(ad varchar(25),s1 int,s2 int,p1 int, p2 int)
insert into ogrenci values ('A',100,100,80,90,'')
insert into ogrenci values ('B',50,90,80,90,'')
insert into ogrenci values ('C',60,100,80,90,'')
ALTER TABLE ogrenci add ort int
select *from ogrenci

UPDATE ogrenci set ort=(s1+s2+p1+p2)/4 from ogrenci

--******************* TABLOLARDA BÝRLEÞTÝRME ******************************
--JOÝN---> 1.Eþiti olan birleþtirme (INNER JOÝN) 2.Eþiti olmayan birleþtirme(OUTER JOÝN)

--1. Eþiti olan birleþtirme:
/*
Ýç birleþtirme içeren bir sorgu çalýþtýrýldýðýnda, sorgu iþlemlerine yalnýzca, birleþtirilen
tablolarýn """"her ikisinde bulunan ortak deðere sahip olan satýrlar """"eklenir.
Her iki tablodan sadece eþleþen kayýtlar döner.
Eþit olan birleþtirme yapýlýrken INNER JOIN deyimi kullanýlýr.

GENEL KULLANIMI:

SELECT cümleciði FROM  tablo1 INNER JOIN tablo2 ON.tablo1.alanx Karþýlaþtýrma tablo2.alany

BÝRÝNCÝ tablodaki tüm kayýtlarý çekip, 2.Tablodan bu kayýtlarla eþleþen kayýtlarý listeler.
*/

--ÖRNEKLER:
--1-) Satýþ yapýlan müþterilere ait müþteri adý, soyadý, numarasý ve satýþlara 
--ait satýþ tarihi ve numaraasýný gösteren tsql sorgusunu yazalaým.

SELECT m.ad,m.soyad,m.m_no,s.tarih,s.s_no
FROM musteriler m JOIN satislar s 
ON m.m_no=s.m_no
   
                                  select*from satis_detay                  
                                  select *from satislar					
                                  select *from musteriler
                                  select *from kategoriler
						     	  select *from urunler 

--2-) Yapýlan her satýþtaki ürünlere ait kategorileri listeleyiniz. 

SELECT s.s_no,k.k_no
FROM satislar s JOIN satis_detay sd
on s.s_no=sd.s_no JOIN urunler u 
on sd.u_no=u.u_no JOIN kategoriler k ON u.k_no=k.k_no

/*
-GEZDÝÐÝMÝZ ALANLAR-
1.Satýþlar        
2.Satýþ detay          1ve2 yi birleþtirdikden sonra
3.urunler 
4.kategoriler          3 ve 4ü birleþtiririz.
*/

--3-) Her kategorideki ürünleri listeleyiniz
--(Öncelikle kategoriler tablosuna "giyim" kategorisine ekleyelim)
INSERT INTO kategoriler VALUES ('Giyim')

select kategoriler.*,urunler.* from kategoriler
JOIN urunler on kategoriler.k_no=urunler.k_no

--JOIN CEÞITLERI:
--6 tane JOIN ceþidi vardýr.
--INNER JOIN
--LEFT JOIN
--RIGHT JOIN
--Self JOIN
/*
1-) CROSS JOIN: --> Sýnavda Çýkmaz. 
-Her 2 kayýtdaki tüm kayýtlarý listeleyen birleþtirme þeklidir.
 Yani birinci tablodaki her kayýt için ikinici tablodaki tüm kayýtlar listelenir
 
ÖNEMLÝ: CROSS JOIN kullanýlýrken ON sözcüðü kullanýlmaz. Çünkü kartezyen birleþimi
yapýlmaktadýr kartezyen birleþimde koþula bakýlmaksýzýn tüm kayýtlar listelenir.
KULLANIMI:
SELECT cümleciði form tabloadi1 CROSS JOIN tabloadi2 

*/
--ÖRNEK: Aþaðýdaki sorgu sonucu inceleyelim.
select satislar.m_no,
musteriler.ad,musteriler.soyad,
musteriler.tel,musteriler.email 
from satislar CROSS JOIN musteriler

--ÖRNEK: Aþaðýdaki sorgu sonucu inceleyelim.
SELECT satislar.s_no,musteriler.m_no,
musteriler.ad,musteriler.soyad
from satislar INNER JOIN musteriler
on satislar.m_no=musteriler.m_no

/* 
3.LEFT OUTER JOIN:
INNER JOIN'den farklýdýr.LEFT denmesinin nedeni soldaki tablonýn esas alýnarak sorgunun
çalýþtýrýlmasýdýr.
DÝKKAT:Soldaki tablodaki tüm kayýtlar çekilir. Saðdaki tabloda eþleþen kayýtlar aynen yazýlýr.
Eþleþmeyen kayýtlar için NULL deðeri gösterilir.

--ÖRNEK: Aþaðýdaki sorgu sonucu inceleyelim.
select kategoriler.ad,urunler.ad,urunler.stok
from kategoriler LEFT OUTER JOIN urunler on kategoriler.k_no=urunler.k_no

4.RIGHT OUTER JOIN:
Left outer joýn'ýn tersini yapar.
DÝKKAT:Left outer ve rýght outer joýnlerde sorguda tablolarýn sýrasýna dikkat etmeniz gerekir.

5.FULL OUTER JOIN:
LEFT VE RIGHT OUTER birleþimleridir.

6.SELF JOIN:--SINAVDA CIKMAZ..
Tablonun kendisiyle birleþtirilme iþlemidir.Bazý durumlarda tablodaki bir bilgi yine ayný
tablodaki baþka bir bilgiye referans olabilir. Böyle durumlarda tabloyu kendi ile birleþtirip sorgularý yazabiliriz.

Örneðin: Çalýþanlar adýnda bir tablomuz olsun bu tabloda çalýþanlara ait isim, soyisim, numara gibi bilgilerin
yanýnda yönetici bilgiside tutuyor olalým.

çalýþanno,çalýþanad,çalýþansad,yoneticino
1         neslihan  koyuncu      5
2         gökhan    özyürek      5
3         uður      kavaz        2
4         olcay     þimþek       5
5         gulhan    özyürek      3
*/
create table calýsanlar (calýþanno int primary key identity (1,1),
calýþanad varchar(15),
calýsansod varchar(15),
yoneticino int,
)
INSERT INTO calýsanlar values ('Neslihan','Koyuncu',5)
INSERT INTO calýsanlar values ('Gökhan','Özyürek',5)
INSERT INTO calýsanlar values ('Uður','Kavaz',5)
INSERT INTO calýsanlar values ('Olcay','Þimþek',5)
INSERT INTO calýsanlar values ('Gulhan','Özyürek',5)
select *from calýsanlar
select*from satis_detay                  
select *from satislar					
select *from musteriler
select *from kategoriler
select *from urunler 

--ÖRNEK: 4 ocak 2010 tarihinde yapýlan satýþlarda hangi satýldýgýný listeleyiniz.
   SELECT satislar.s_no,satislar.tarih,urunler.ad,urunler.u_no
   FROM 
   satislar JOIN satis_detay on satislar.s_no=satis_detay.s_no
   JOIN urunler on satis_detay.u_no=urunler.u_no
   where satislar.tarih='2010-01-04 00:00:00'

--ÖRNEK: fiyatý 500 ile 1000 arasýnda olan tüm ürünlere ait yapýlan satýþlarý listeleyiniz.
   SELECT satislar.* from
   urunler JOIN satis_detay ON urunler.u_no=satis_detay.u_no
   JOIN satislar on satis_detay.s_no=satislar.s_no
   where urunler.fiyat BETWEEN 500 AND 1000

--ÖRNEK: Bilgisayar kategorisindeki fiyatý 1000 den küçük olan ürünlere ait satýþlarý listeleyiniz.
	SELECT satislar.*from 
	kategoriler JOIN urunler on kategoriler.k_no=urunler.k_no
	            JOIN satis_detay on urunler.u_no=satis_detay.u_no
				JOIN satislar on satis_detay.s_no=satislar.s_no
	WHERE urunler.fiyat<1000 AND  kategoriler.ad='bilgisayar' 
	
--ÖRNEK: 06-01-2010 tarihinden önce yapýlan satýþlarda LAPTOP kategorisindeki ürünleri satýn alan müþterilerden
--       ÝZMÝR,ANKARA ve ÝSTANBUL da oturanlarý listeleyiniz
 select musteriler.* FROM musteriler JOIN satislar on musteriler.m_no=satislar.m_no 
                                     join satis_detay on satislar.s_no=satis_detay.s_no
									 join urunler on satis_detay.u_no=urunler.u_no
									 join kategoriler on urunler.k_no=kategoriler.k_no
 WHERE satislar.tarih<'2010-01-06 00:00:00' AND kategoriler.ad='laptop' and musteriler.sehir IN('IZMIR','ANKARA','ISTANBUL')

-- ÖRNEK: Her kategoriden toplam kaç satýþ yapýldýðýný bulunuz.
SELECT * FROM urunler
SELECT * FROM kategoriler

SELECT kategoriler.k_no, COUNT(u_no) FROM urunler INNER JOIN kategoriler ON urunler.k_no=kategoriler.k_no
GROUP BY kategoriler.k_no

----------------------- GÖRÜNÜMLER VIEMS --------------------
/*
Sanal tablolardýr.
Veri tabanýnda aslýnda olmayan fakat daha önce oluþturduðumuz 
tablolardan yaptýðýmýz seçimler göre kayýtlar içeren sanal tablolardýr.

ÖRNEÐÝN: Maðaza veritabanýnda oluþturduðumuz beþ tablo vardý
(kategoriler-musteriler-satýs_detay-satislar-urunler)
Bu tablolar üzerinde belirli kriterlere göre alan ve kayýt seçerek
listelediðimiz sorgu sonuçlarýnýn sanki mevcut tablolardan biriymiþ gibi kullanýlmasýna
GÖRÜNÜM diyoruz.

Görünümler içerissindeki sorgularda SQL fonksiyonlarýný, JOIN ifadelerini, 
GROUP BY gruplama sorgularýný ve WHERE ifadelerini kullanabiliriz.

Veritabanýnda sýk sýk kullanacaðýmýz veya kullandýðýmýz
listeleme sorgularýný 
daha kýsa ve hýzlý bir þekilde çalýþtýrmak için GÖRÜNÜMLER kullanýlýr.

GENEL KULLANIMI:
Görünüm oluþturmak için:
CREATE VIEW görünümadý 
AS 
SELECT cümleciði

Veritabanýnda sýk sýk kullanacaðýmýz veya kullandýgýmýz listeleme sorgularýný
daha kýsa ve hýzlý bir þekilde çalýþtýrmak için GÖRÜNÜMLER kullanýlýr..

GENEL KULLANIMI:
Görünüm oluþturmak için:
                          CREATE WIEW görünümadi AS SELECT ifadesi
Görünümü listelemek için:
                          SELECT *FROM görünümadi
                          varsa þart...

Görünümü silmek için:
                          DROP WIEW görünümadý

Görünümünü güncellemek için:
                          ALTER WIEW görünümadi AS SELECT ifadesi

*/

--ÖRNEK: ANKARADAKÝ müþterileri listeleyen görünümü 'ANKARAMUSTERÝ' ismiyle oluþturalým.
CREATE VIEW ANKARAMUSTERÝ AS SELECT *FROM musteriler WHERE sehir='ANKARA'

--       Yukarýda oluþturduðumuz görünümü çalýþtýralým.
SELECT *FROM ANKARAMUSTERÝ

--Yukarýdaki görünümü Ankara'da yaþayan ve yaþý 20'den büyük olanlarý listeleyecek þekilde güncelliyelim
ALTER VIEW ANKARAMUSTERÝ AS SELECT *FROM musteriler WHERE sehir='ANKARA' AND yas>20

-- Yukardýda oluþturduðumuz görünümü silelim.
DROP VIEW ANKARAMUSTERÝ

/*NOT:Görünümler ile hangi tür sorgular çalýþtýrýlmaz !????

##** INSERT,UPTADE,DELET kullanýlmaz..
##** ORDER BY kullanýlmaz..
##** Fonksiyon kullanýlacaksa mutlaka AS SÖZCÜÐÜ ile alanadi verilmeli.
     (ÖRNEÐÝN: Max fonksiyonu kullanýlacaksa "EnYüksekDeðer" gibi bir Takma adý verilmesi gerekir.)

NOT: Görünümler ile en  çok hangi yapýlar kullanýlýr??
---- EN çok iç içe SELECT veya JOIN yapýlarý kullanabilir.
*/

--ÖRNEK: 5 nolu satýþtaki ürünleri gösteren 'SatýlanÜrünAdý' isimli görünümü oluþturunuz.
--Ýç Ýçe Select Ýle:
CREATE VIEW SatýlanÜrünAdý AS 
SELECT ad FROM urunler where u_no IN(
SELECT u_no FROM satis_detay WHERE s_no=5)

SELECT* FROM SatýlanÜrünAdý

--JOIN ile:
CREATE VIEW SatýlanÜrünAdý AS 
SELECT urunler.* FROM satis_detay JOIN urunler ON satis_detay.u_no=urunler.u_no
WHERE satis_detay.s_no=5

--ÖRNEK: Satýlan ürünleri gösteren SATILANURUNLER isimli görünümü oluþturalým.
CREATE VIEW SATILANURUNLER AS 
SELECT urunler.* FROM satis_detay JOIN urunler ON satis_detay.u_no=urunler.u_no

--ÖRNEK: Satýlan ürünlerden stoðu 10'dan az olanlarýn gösterelim..
SELECT * FROM SATILANURUNLER WHERE stok<10

--ÖRNEK: 2000 lira üzerindeki satýþlarýn hangi müþterilere yapýldýðýný bulalým..

SELECT* FROM satislar
SELECT* FROM musteriler
--JOIN ÝLE:
SELECT musteriler.ad,musteriler.soyad from satislar JOIN musteriler on satislar.m_no=musteriler.m_no
WHERE t_fiyat>2000

--ÝÇ içe Select Ýle;
SELECT *from musteriler WHERE m_no IN(
SELECT m_no FROM satislar WHERE t_fiyat>2000)

--Kartezyen çarpým ile
SELECT *FROM musteriler,satislar WHERE satislar.m_no=musteriler.m_no 
AND satislar.t_fiyat>2000


-- ÖRNEK: Satýþlarýn hangi müþterilere yapýldýðýný listeleyen GÖRÜNÜMÜ oluþturunuz..
-- (SATINALANMUSTERI)
CREATE VIEW SATINALANMUSTERÝ AS
SELECT musteriler.ad,musteriler.soyad FROM satislar JOIN musteriler
ON satislar.m_no=musteriler.m_no

-- ÖRNEK: 1 OCAK 2010 tarihindeki satýþlarýn kimlere yapýldýðýný gösteriniz..
ALTER VIEW SATINALANMUSTERÝ AS 
SELECT musteriler.ad,musteriler.soyad FROM satislar JOIN musteriler
ON satislar.m_no=musteriler.m_no where tarih>'2010-01-01 00:00:00'

-- 500lira üzerindeki satýþlarýn kimlere yapýldýðýný gösteriniz..
SELECT *FROM musteriler,satislar WHERE satislar.m_no=musteriler.m_no 
AND satislar.t_fiyat>500

--SON OLUÞTURDUÐUMUZ GÖRÜNÜMÜ SÝLELÝM:
DROP VIEW SATILANURUNLER

-----------------------VERÝ TABANI KULLANICI TANIMLARI----------------------------------
-- KULLANICI TANIMLAMA
-- VERÝTABANI ÜZERÝNDEN KULLANICI HAKLARINI TANIMLAMA

/*-*-*-*-*-*-- DCL SORGULARI -*-*-*-*-*-*-*-*-
 Veri kontrol dili sorgularýdýr.
 GRANT, REVOKE, DENY bilinen DCL sorgularýdýr.

 Bu sorgular birden cok kullanýcýsý bulunan veritabanlarýnda kullacýlara
 YETKÝ VERMEK, verilen yetkileri GERÝ ALMAK ve YETKÝ SINIRLAMAK için kullanýrlýrlar.

 Dolayýsýyla öncelikle veritabanýnda kullanýcý(USER) ve giris(LOGIN) tanýmlamalarý yapýlmalýdýr.
 Önceki konularda olduðu gibi burdada oluþturma iþlemleri CREATE,
 güncelleme iþlemleri ALTER, silme iþlemleri de DROP ile yapýlýr.

 */

 -- 1234 Þifresine sahip GIRIS1 adýnda bir LOGIN oluþturalým.
 CREATE LOGIN GIRIS1 WITH PASSWORD='1234'
 
 -- Yukarýda oluþturduðumuz GIRIS1 isimli giriþi
  -- OBJECT E. > SECURITY > LOGINS'den gorebiliri.z

-- Bu login üzerinde bir kullanýcý yani bir USER oluþturalým:
CREATE USER kul1 FOR LOGIN GIRIS1

-- GRANT: YETKÝ VERMEK ÝÇÝN KULLANILIR.
-- REVOKE: GRANT ÝLE VERÝLEN YETKÝLERÝ ESKÝ HALÝNE DÖNDÜRMEK ÝÇÝN KULLANILIR.
-- DENY: GRANTÝN TAM TERSÝDÝR YETKÝLERÝ ENGELLEMEK ÝÇÝN KULLANILIR

/* GRANT' in GENEL KULLANIMI:
GRANT(BÜTÜN ÝZÝNLER) ON (ÝZNE TABÝÝ TUTULANLAR)(TABLO VEYA GÖRÜNÜM(SANAL TABLO))
TO KULLANICI
*/

--ÖRNEK: kul1 isimli kullanýcýya tablo oluþturma yetkisi verelim.
GRANT CREATE TABLE TO kul1

--ÖRNEK: kul1 isimli kullanýcýya tablo oluþturma yetkisi verelim.
GRANT INSERT,DELETE,UPDATE TO kul1

/* DENY' in GENEL KULLANIMI:
DENY(BÜTÜN ÝZÝNLER) ON (ÝZNE TABÝÝ TUTULANLAR)(TABLO VEYA GÖRÜNÜM(SANAL TABLO))
TO KULLANICI
*/

--ÖRNEK: kul1 isimli kullanýcýya tablo oluþturma yetkisini yasaklýyalým.
DENY CREATE TABLE TO kul1

--ÖRNEK: kul1 isimli kullanýcýnýn MAGAZA vtdeki musteriler tablosuna KAYIT ekleme yetkisini yasaklýyalým.
DENY INSERT ON musteriler TO kul1

/* REVOKE'UN GENEL KULLANIMI:
REVOKE(BÜTÜN ÝZÝNLER)
TO/FROM KULLANICI
*/
--ÖRNEK: kul1 isimli kullanýcýnýn tüm yetkilerini geri alalým.
REVOKE ALL FROM kul1  -- FROM Yada TO Farketmez..

--ÖRNEK: kul1'e musteriler tablosu üzerinde verilen tüm yetkilerini geri alalým.
REVOKE ALL ON musteriler TO kul1

/* !!!!! DÝKKATTTT !!!!!

-* DENY ÝLE YASAKLANAN ÝÞLEMLER KULLANICI TARAFINDAN HÝÇ BÝR ÞEKÝLDE YAPILAMAZ
-* REVOKE DEDÝÐÝMÝZ ZAMAN SADECE MEVCUT YETKÝLER ÜZERÝNDE ÝÞLEM YAPABÝLÝRÝZ.
-* KULLANICI FARKLI ROLLERDE AYNI ÝÞÝ YAPMAYI SÜRDÜREBÝLÝR.
*/

-- ÖRNEK: kul1 isimli kullanýcýyý silelim.
DROP USER kul1

-- ÖRNEK: kul1 isimli giriþi silelim.
DROP LOGIN GIRIS1


-- GÖRÜNÜM SORGULARINDA GRUPLAMA YAPMA
-- Gruplama iþlemlerinde GROUP BY ifadesini kullanýyoruz.

--Örnek: MAGAZA vt.de her kategorideki toplam ürün sayýsýný bulalým.
select *from urunler

select k_no,count(u_no) from urunler group by k_no --urunler.u_no vs. de olabilir.

--Yazdýðýmýz sorgunun KATTOPURUN isimli görünümünü oluþturalým
CREATE VIEW KATTOPURUN AS
select k.ad,count(u.u_no)[TOPLAM ÜRÜN ADEDÝ] from kategoriler k JOIN urunler u
ON k.k_no=u.k_no GROUP BY k.ad

select *from KATTOPURUN 

--TOPLAM KAYITLI ÜRÜN SAYISI 3'TEN ÇOK OLAN KATEGORÝLERÝ LÝSTELEYÝM 
--(GÖRÜNÜM ADI: urunsayisi)
CREATE VIEW urunsayýsý AS
select k.ad,count(u.u_no)[ÜRÜN ADEDÝ 3'DEN ÇOK OLANLAR] from kategoriler k JOIN urunler u
ON k.k_no=u.k_no GROUP BY k.ad HAVING Count(u_no)>3

select *from urunsayýsý

--***NOT***: GÖRÜNÜM OLUÞTURULDUKDAN SONRA MEVCUT GÖRÜNÜME HAVÝNG ÞARTI EKLEYEREK SORGUYU ÇALIÞTIRAMAYIZ..!   (;


--Örnek: Fiyatý ortalama fiyattan daha yüksek olan ürünleri listeleyen bir görünüm oluþturunuz.
--(GÖRÜNÜM ADI: pahalýurunler)
CREATE VIEW pahaliurunler AS
select urunler.ad,fiyat from urunler WHERE fiyat>(SELECT AVG(fiyat) from urunler)

select *from pahaliurunler

------*** GÖRÜNÜMLER ÝLE ÝLGÝLÝ GELÝÞMÝÞ ÖZELLÝKLER ***---------
-- 1.ENCRYPTÝON
-- 2.SCHEMABÝDÝNG
-- 3. CHECK POÝNT
-- 1. VE 2. ÖZELLÝK GÖRÜNÜM OLUÞTURURKEN AS ÝFADESÝNDEN HEMEN ÖNCE KULLANILIR.
-- 3. ÖZELLÝK ÝSE GÖRÜNÜM SORGUSUNUN EN SONUNDA KULLANILIR.


/* 1.ENCRYPTÝON
With ile kullanýlýr GÖRÜNÜM OLUÞTURURKEN KULLANILAN SORGULARI ÞÝFRELER.*/
--ÖRNEK;
CREATE VIEW sifreli WITH ENCRYPTION AS
SELECT *FROM kategoriler

--SELECT *FROM sifreli
--sp_helptext sifreli


--DAHA ÖNCEDEN OLUÞTURDUGUMUZ pahaliurunler ÝSÝMLÝ GÖRÜNÜM SORGULARINI LÝSTELÝYELÝM.
sp_helptext pahaliurunler

--DÝKKAT!!!!
-- ENCRYPTÝON ÝÞLEMÝ YAPARKEN GÖRÜNÜM ÝÇÝN YAZILAN KAYNAK KODU GERÝ GETÝRME ÞANSIMIZ YOK
-- BU YÜZDEN GÖRÜNÜMÜ OLUÞTURMADAN ÖNCE BÝR YEDEÐÝNÝ ALMAK GEREKEBÝLÝR...


/* 2.SCHEMABÝDÝNG
YAPISAL OLARAK GÖRÜNÜMLERÝN TABLODAKÝ ALANLARLA AYNI YAPIYI PAYLAÞMASINI SAÐLAR.
EÐER GÖRÜNÜM OLUÞTURULURKEN BU ÖZELLÝK KULLANILIRSA SELECT* GÝBÝ BÝR ÖZELLÝK KULLANILMAZ.
VE GÖRÜNÜMDE TABLO ÝSMÝ BELÝRTÝLÝRKEN TABLO ADINDAN ÖNCE TABLONUN SAHÝBÝ YAZILMALIDIR.
*/
-- ÖRNEK --

CREATE VIEW MUSTERIADLARI WITH SCHEMABINDING AS
SELECT ad FROM dbo.musteriler

SELECT*FROM MUSTERIADLARI


/* 3. CHECK POÝNT
GÖRÜNÜM ÜZERÝNDE VERÝ EKLEME VEYA VERÝ DEÐÝÞÝKLÝÐÝ YAPARKEN GÖRÜNÜMDE KULLANILAN 
SQL YAPISINA UYMAYAN KAYITLARIN EKLENMESÝ VEYA DEÐÝÞTÝRÝLMESÝNÝ ENELLER.
*/




--FÝLMVT isimli vt olustur. 
CREATE DATABASE FÝLMVT
use FÝLMVT
--Ekranda gördüðünüz tablolarý oluþturun.
CREATE TABLE Filmler(Film_ID int not null primary key identity(1,1),
Ad varchar(15),
Tarih smalldatetime,
IMDB_Puan int)
CREATE TABLE Film_Tur(Film_ID int,Tur_ID int)
CREATE TABLE Oyuncu_Film(Oyuncu_ID int, Film_ID int)
CREATE TABLE Turler(Tur_ID int primary key identity(1,1), Ad Varchar(15))
CREATE TABLE Oyuncular(Oyuncu_ID int primary key identity(1,1),Ad varchar(15),
Soyad varchar(15))
--Film vtde "misafirgirisi" isimli USER oluþtur.
CREATE USER Misafir FOR LOGIN misafirgirisi

--"misafirgirisi" kullanýcýsýna "Misafir"LOGIN ve"1234" password tanýmlýyalým
CREATE LOGIN misafirgirisi WITH PASSWORD='1234'

--misafir logini ile giriþ yapan kiþileri sadece LÝSTELEME hakký ver.
GRANT SELECT to Misafir

--Verdiðimiz LÝSTELEME hakkýný geri alalým.
REVOKE ALL FROM Misafir

--Oluþturduðumuz user'i silelim.
DROP user Misafir

--
--2.KISIM:
--1. Tom Hanks'in oynadýðý filmleri gösteriniz.
SELECT Ad FROM Filmler Where Film_ID=(
Select Film_ID From Oyuncu_Film where Oyuncu_ID=(
select Oyuncu_ID from oyuncular where Ad='Tom Hanks')
-- JOIN;
SELECT filmler.Ad FROM Filmler JOIN Oyuncu_Film ON
Oyuncu_Film.Oyuncu_ID=Filmler.Film_ID JOIN Oyuncular on
Oyuncular.Oyuncu_ID=Oyuncu_Film.Oyuncu_ID WHERE Oyuncular.Ad='Tom Hanks'

--2. Türü dram olan filmlerin adlarýný ve IMDB puanlarýný gösteriniz.
SELECT Filmler.ad,Filmler.IMDB_Puan FROM Film_Tur JOIN Filmler 
ON Film_Tur.Film_ID=Filmler.Film_ID
JOIN Turler on Tur_ID=Film_Tur.Tur_ID where Turler.Ad='DRAM' AND AVG(Filmler.IMDB_Puan)<Filmler.IMDB_Puan

--3. Aslýhan Gürbüz'ün oynadýðý film sayýsýný bulunuz.
 Select SUM(Oyuncu_Film.Film_ID) From Oyuncular 
 JOIN Oyuncu_Film ON Oyuncu_Film.Oyuncu_ID=oyuncular.Oyuncu_ID Where Oyuncular.Ad='ASLIHAN GURBUZ'

--4. IMDB Puaný, tüm filmlerin IMDB Puanlarýnýn ortalamasýndan büyük olan dram filmlerin
--adlarýný, IMDB Puanlarýný, tarihlerini listeleyiniz.
 Select Filmler.Ad From Filmler
 JOIN Film_Tur ON Film_Tur.Film_ID=filmler.Film_ID
 JOIN Turler ON turler.Tur_ID=Film_Tur.Tur_ID Where Turler.Ad ='Dram' AND AVG (Filmler.IMDB_Puan) < Filmler.IMDB_Puan

--5. Kývanç Tatlýtuð'un oynadýðý dramatik filmleri listeleyiniz.
 Select * From Film_Tur
 Select * From Filmler
 Select * From Oyuncu_Film
 Select * From Oyuncular
 Select * From Turler

 select Filmler.ad From Filmler 
 JOIN Film_Tur On Film_Tur.Film_ID=Filmler.Film_ID
 JOIN Turler ON turler.Tur_ID=film_tur.Tur_ID Where Turler.Ad='DRAMATÝK'


--3.KISIM:
1--. Tüm fimleri gösteren "TÜMFÝLMLER" isimli GÖRÜNÜMÜ oluþturunuz.
 Create VIEW TÜMFÝLMLER as

--2. Oluþturduðumuz görünümü sadece IMDB Puaný 8'in üzerinde olanlarý gösterecek 
--þekilde güncelleyiniz.
 Alter VIEW TÜMFÝLMLER as
 Select filmler.IMDB_puan From filmler Where IMDB_puan > 8

--3. Oluþturduðunuz görünümü siliniz.
 Drop VIEW TÜMFÝLMLER






