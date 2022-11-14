use Marketim
CREATE TABLE YeniCalisanlar
(
Id int identity(1,1)Primary key,
YeniId int,
Yenitarih datetime
)
go
CREATE TRIGGER calisanekle
ON personel
AFTER INSERT
AS
BEGIN
DECLARE @personelId int
SELECT @personelId=ID
FROM inserted
INSERT INTO YeniCalisanlar VALUES (@personelId, GETDATE())
END
INSERT INTO personel VALUES
('Selin','Toprak','05436789467','toprakselin@gmail.com','2022-01-23',4200,0)
SELECT *FROM personel
SELECT *FROM YeniCalisanlar
