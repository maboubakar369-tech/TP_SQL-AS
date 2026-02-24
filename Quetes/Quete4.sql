SELECT 
   COUNT(*) AS Nombre_vehicules
FROM vehicules; 

SELECT 
   ville, 
   COUNT(*) AS nombre_vehicules
FROM vehicules
GROUP BY ville;

SELECT 
    AVG(autonomie) AS autonomie_moyenne
FROM vehicules; 

SELECT 
    clients.nom, 
    COUNT(locations.id) AS nombre_locations
FROM clients
LEFT JOIN locations ON clients.id = locations.client_id
GROUP BY clients.nom;


    