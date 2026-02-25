# TP_SQL-AS
    1-Présentation du Projet

Ce projet consiste à concevoir et administrer une base de données relationnelle pour cIAra Mobility, une entreprise de location de véhicules électriques. L'objectif est de fournir une solution robuste pour gérer une flotte de 200 véhicules, suivre les clients et analyser les performances des locations via PostgreSQL.
     2- Rapport d'Analyse Technique
A. Organisation du travail

    Méthodologie : Le projet a été réalisé de manière structurée : d'abord la définition de l'architecture des tables, puis l'importation des données, et enfin la résolution des quêtes analytiques. La répartition des tâches s'est faite par quêtes de manière progressive.

    Gestion de version (Git/GitHub) : Nous avons utilisé GitHub pour centraliser les scripts. Chaque quête validée a fait l'objet d'un commit avec un message descriptif pour assurer la traçabilité et la synchronisation du code.

    Environnement de travail : * pgAdmin 4 : Utilisé pour la création visuelle, l'administration de la base et l'exécution des requêtes de test.

        Visual Studio Code : Utilisé pour l'édition des scripts SQL et la rédaction de ce rapport technique.

B. Analyse du Modèle de Données (MCD)

    Structure de la base : La base est composée de 4 tables interconnectées : vehicule, station, client et location.

    Relations : * Chaque table dispose d'une clé primaire unique (id_...).

        La table location est la table centrale. Elle possède des clés étrangères qui pointent vers les trois autres tables.

    Pertinence : Cette structuration répond parfaitement aux besoins de cIAra Mobility car elle évite la redondance des données (le nom d'un client n'est écrit qu'une fois) et permet de suivre l'historique complet d'un véhicule à travers les différentes stations.

C. Choix Techniques et Syntaxe SQL

    Stratégie de requête : Nous avons adopté une approche de décomposition du problème. Pour les requêtes complexes, nous avons d'abord testé la sélection des données brutes avant d'appliquer les agrégations ou les tris.

    Justification des commandes :

        INNER JOIN : Utilisé pour lier les locations aux informations clients pour un affichage lisible.

        LEFT JOIN : Choisi pour la Quête 5.4 afin de trouver les véhicules orphelins de location (ceux qui n'ont aucune correspondance dans la table de fait).

        GROUP BY & HAVING : Utilisés pour calculer des moyennes et filtrer les résultats après regroupement (ex: clients ayant réalisé au moins deux locations).

    Logique de filtrage : Les besoins métiers ont été traduits par des conditions techniques précises dans la clause WHERE (ex: etat = 'Disponible').

D. Difficultés rencontrées et Solutions

    Erreurs de contraintes : Lors de la création des tables, nous avons rencontré des erreurs de clés étrangères car nous tentions de créer la table location en premier.

        Solution : Nous avons appris qu'il faut créer les tables "parentes" (indépendantes) avant les tables "enfants" qui en dépendent.

    Jointures et NULL : Identifier les véhicules n'ayant jamais été loués a été une difficulté technique.

        Solution : L'utilisation du LEFT JOIN couplé à une condition IS NULL sur la clé étrangère a permis d'isoler les véhicules sans historique.