SELECT 
    location.id_location,
    location.date_debut,
    location.date_fin,
    client.nom,
    client.prenom
FROM location
JOIN client
    ON location.id_client = client.id_client;



SELECT 
    location.id_location,
    location.date_debut,
    location.date_fin,
    vehicule.marque,
    vehicule.modele
FROM location
JOIN vehicule
    ON location.id_vehicule = vehicule.id_vehicule;


SELECT 
    location.id_location,
    station_depart.nom AS nom_station_depart,
    station_arrivee.nom AS nom_station_arrivee
FROM location
JOIN station AS station_depart
    ON location.id_station_depart = station_depart.id_station
JOIN station AS station_arrivee
    ON location.id_station_arrivee = station_arrivee.id_station;