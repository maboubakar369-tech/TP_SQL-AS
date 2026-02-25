SELECT 
   COUNT(*) AS Nombre_vehicules
FROM vehicule; 

SELECT 
   ville, 
   COUNT(*) AS nombre_vehicules
FROM vehicule
GROUP BY ville;

SELECT 
    AVG(autonomie_km) AS autonomie_moyenne
FROM vehicule; 

SELECT 
    client.nom, 
    COUNT(id_location) AS nombre_locations
FROM client
LEFT JOIN location ON client.id_client = location.id_client
GROUP BY client.nom;


    

    