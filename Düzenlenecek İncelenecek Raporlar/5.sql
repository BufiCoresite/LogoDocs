-- Muhasebe Kodu Olmayan Cariler
SELECT  LOGICALREF,CODE,DEFINITION_,
(SELECT COUNT(*) FROM dbo.LG_001_CRDACREF WHERE dbo.LG_001_CRDACREF.CARDREF= dbo.LG_001_CLCARD.LOGICALREF) AS say
FROM dbo.LG_001_CLCARD
WHERE (SELECT COUNT(*) FROM dbo.LG_001_CRDACREF WHERE dbo.LG_001_CRDACREF.CARDREF= dbo.LG_001_CLCARD.LOGICALREF)  < 1