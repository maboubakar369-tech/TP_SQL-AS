SELECT * 
FROM vehicule
WHERE etat = 'disponible'
ORDER BY autonomie_km DESC 
LIMIT 3;

SELECT  
   ville,
   COUNT(*) AS nombre_vehicules
FROM vehicules
WHERE etat = 'disponible'
GROUP BY ville 
ORDER BY nombre_vehicules DESC 
LIMIT 1;

SELECT clients.nom, COUNT(locations.id) AS nombre_locations
FROM clients
INNER JOIN locations ON clients.id = locations.client_id
GROUP BY clients.nom
HAVING COUNT(locations.id) >= 2;

SELECT vehicules.*
FROM vehicules
LEFT JOIN locations ON vehicules.id = locations.vehicule_id
WHERE locations.id IS NULL;