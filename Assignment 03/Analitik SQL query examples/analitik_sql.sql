-- column1 
-- Her grubun kendi içerisindeki ortalamaları ve en büyük verinin değeri arasındaki fark
SELECT gruplar AS grup,
AVG(sayi) OVER (PARTITION BY gruplar ORDER BY tarih) AS grup_ortalamaları ,
t1.sayi as enBuyukDeger
FROM table_1 AS t
JOIN (SELECT ROW_NUMBER() OVER (PARTITION BY gruplar ORDER BY tarih DESC) AS row_number, 
	gruplar AS grup,
	sayi 
	FROM table_1) AS t1 ON t1.grup = t.grup AND t1.row_number = 1 
