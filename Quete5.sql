SELECT * 
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC 
LIMIT 3;

SELECT  
   ville,
   COUNT(*) AS nombre_vehicules
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY ville 
ORDER BY nombre_vehicules DESC 
LIMIT 1;

SELECT client.nom, COUNT(id_location) AS nombre_locations
FROM client
INNER JOIN location ON client.id_client = location.id_client
GROUP BY client.nom
HAVING COUNT(location.id_location) >= 2;


SELECT *
FROM vehicule
LEFT JOIN location ON vehicule.id_vehicule = location.id_vehicule
WHERE location.id_vehicule IS NULL;