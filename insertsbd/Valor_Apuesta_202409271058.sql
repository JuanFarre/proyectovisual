USE loteriaVB;
GO

INSERT INTO Valor_Apuesta (IdValorApuesta,IdJuego,IdModalidad,Vap_ValApu) VALUES
     (1,4,1,6.00),
     (2,4,3,8.00),
     (3,4,7,10.00),
     (4,5,1,2.00),
     (5,5,3,2.50),
     (6,5,7,3.00),
     (7,13,1,5.00),
     (8,17,1,2.00),
     (9,17,1,2.00),
     (10,18,1,2.00);
INSERT INTO Valor_Apuesta (IdValorApuesta,IdJuego,IdModalidad,Vap_ValApu) VALUES
     (11,18,1,2.00),
     (12,29,1,1.00),
     (13,30,1,5.00),
     (14,50,1,18.00),
     (15,51,1,4.50);

	 SELECT * FROM dbo.Valor_Apuesta_sorteo