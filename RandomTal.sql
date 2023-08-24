CREATE DATABASE Performance;

USE Performance;

SELECT * FROM RandomTal
WHERE RandomNumber = 4711;

SELECT COUNT(ID) AS 'Count', RandomNumber FROM RandomTal
GROUP BY RandomNumber
ORDER BY Count ASC;
--63 gange

SELECT COUNT(ID) AS 'Count', RandomNumber FROM RandomTal
GROUP BY RandomNumber
ORDER BY count DESC;
--140 gange

--De(t) mest sjælde tal er: 5218
--De(t) mest hyppige tal er: 109 & 2034


