
-- 1. REQUÊTES SIMPLES (Filtres et Tri)


-- 1.1. Afficher toutes les figurines de la licence "Dragon Ball Z"
SELECT figurine_id, figurine_nom, figurine_personnage, prix_ttc 
FROM Figurine 
WHERE figurine_licence = 'Dragon Ball Z';

-- 1.2. Lister les clients habitant à Paris (ou contenant 'Paris' dans l'adresse)
SELECT client_id, nom, prenom, email 
FROM Client 
WHERE adresse LIKE '%Paris%';

-- 1.3. Afficher les 5 figurines les plus chères (Prix TTC)
-- (Note : Remplacer LIMIT 5 par TOP 5 si vous utilisez SQL Server)
SELECT figurine_nom, figurine_licence, prix_ttc 
FROM Figurine 
ORDER BY prix_ttc DESC 
LIMIT 5;

-- 1.4. Afficher les commandes annulées ou en attente
SELECT commande_id, date_commande, statut, client_id 
FROM Commande 
WHERE statut IN ('annulée', 'en attente');



-- 2. REQUÊTES AVEC JOINTURES (Relations entre tables)


-- 2.1. Afficher le détail des commandes avec le nom et prénom du client
SELECT c.commande_id, c.date_commande, c.statut, c.montant_paie, cl.nom, cl.prenom
FROM Commande c
INNER JOIN Client cl ON c.client_id = cl.client_id
ORDER BY c.date_commande DESC;

-- 2.2. Afficher les figurines commandées dans la commande 'CMD001' avec leur quantité
SELECT f.figurine_nom, co.quantite_commandee, co.prix_unitaire, co.taux_remise
FROM Composer co
INNER JOIN Figurine f ON co.figurine_id = f.figurine_id
WHERE co.commande_id = 'CMD001';

-- 2.3. Afficher les fournisseurs qui fournissent la figurine 'FIG001'
SELECT f.nom AS fournisseur_nom, fo.prix_achat, fo.delai
FROM Fournir fo
INNER JOIN Fournisseur f ON fo.fournisseur_id = f.fournisseur_id
WHERE fo.figurine_id = 'FIG001';

-- 2.4. Afficher l'état des stocks (Quantité disponible par entrepôt et emplacement)
SELECT f.figurine_nom, e.nom AS entrepot, emp.code AS emplacement, s.quantite_stock, s.seuil_alerte
FROM Stocker s
INNER JOIN Figurine f ON s.figurine_id = f.figurine_id
INNER JOIN Entrepot e ON s.entrepot_id = e.entrepot_id
INNER JOIN Emplacement emp ON s.emplacement_id = emp.emplacement_id
ORDER BY f.figurine_nom;

-- 2.5. Afficher les variantes de figurines avec leur figurine de base
-- (Exploite la clé étrangère auto-référente figurine_id_1)
SELECT f1.figurine_nom AS variante, f1.variante_type, f2.figurine_nom AS figurine_de_base
FROM Figurine f1
INNER JOIN Figurine f2 ON f1.figurine_id_1 = f2.figurine_id
WHERE f1.figurine_id_1 IS NOT NULL;



-- 3. REQUÊTES D'AGRÉGATION (GROUP BY, SUM, COUNT)


-- 3.1. Calculer le chiffre d'affaires total par mode de paiement
SELECT mode_paiement, SUM(montant_paie) AS total_encaisse
FROM Commande
WHERE statut != 'annulée'
GROUP BY mode_paiement;

-- 3.2. Afficher le nombre de commandes passées par chaque client
SELECT cl.nom, cl.prenom, COUNT(c.commande_id) AS nombre_commandes
FROM Client cl
LEFT JOIN Commande c ON cl.client_id = c.client_id
GROUP BY cl.client_id, cl.nom, cl.prenom
ORDER BY nombre_commandes DESC;

-- 3.3. Trouver les 3 figurines les plus vendues (en quantité)
SELECT f.figurine_nom, SUM(co.quantite_commandee) AS total_vendu
FROM Composer co
INNER JOIN Figurine f ON co.figurine_id = f.figurine_id
GROUP BY f.figurine_id, f.figurine_nom
ORDER BY total_vendu DESC
LIMIT 3;

-- 3.4. Calculer le panier moyen des commandes livrées
SELECT AVG(montant_paie) AS panier_moyen
FROM Commande
WHERE statut = 'livrée';



-- 4. SOUS-REQUÊTES (Requêtes imbriquées)

-- 4.1. Trouver les clients qui n'ont jamais passé de commande
SELECT nom, prenom, email 
FROM Client 
WHERE client_id NOT IN (SELECT client_id FROM Commande);

-- 4.2. Afficher les figurines dont le stock est inférieur ou égal au seuil d'alerte
SELECT f.figurine_nom, s.quantite_stock, s.seuil_alerte, e.nom AS entrepot
FROM Stocker s
INNER JOIN Figurine f ON s.figurine_id = f.figurine_id
INNER JOIN Entrepot e ON s.entrepot_id = e.entrepot_id
WHERE s.quantite_stock <= s.seuil_alerte;

-- 4.3. Trouver la figurine la plus chère de chaque licence
SELECT figurine_licence, figurine_nom, prix_ttc
FROM Figurine f1
WHERE prix_ttc = (
    SELECT MAX(prix_ttc) 
    FROM Figurine f2 
    WHERE f1.figurine_licence = f2.figurine_licence
);



-- 5. REQUÊTES DE MODIFICATION (UPDATE / DELETE)


-- 5.1. Mettre à jour le statut d'une commande (Ex: passer CMD012 à 'payée')
UPDATE Commande 
SET statut = 'payée', montant_paie = 66.00, date_paiement = CURRENT_DATE
WHERE commande_id = 'CMD012';

-- 5.2. Diminuer le stock d'une figurine après une vente (Ex: Retirer 2 unités de la FIG001 dans l'entrepôt ENT001)
UPDATE Stocker 
SET quantite_stock = quantite_stock - 2
WHERE figurine_id = 'FIG001' AND entrepot_id = 'ENT001';

-- 5.3. Supprimer une commande annulée et ses dépendances (Ex: CMD007)
-- (Il faut d'abord supprimer dans les tables filles à cause des contraintes de clés étrangères)
DELETE FROM Composer WHERE commande_id = 'CMD007';
DELETE FROM Livraison WHERE commande_id = 'CMD007';
DELETE FROM Commande WHERE commande_id = 'CMD007';



-- 6. CRÉATION D'UNE VUE (Pour faciliter les rapports)


-- 6.1. Créer une vue récapitulative des commandes avec le total calculé des articles
CREATE VIEW Vue_Recap_Commandes AS
SELECT 
    c.commande_id,
    c.date_commande,
    cl.nom AS client_nom,
    c.statut,
    c.montant_paie AS montant_declare,
    SUM(co.quantite_commandee * co.prix_unitaire * (1 - co.taux_remise/100)) AS montant_calcule_articles
FROM Commande c
JOIN Client cl ON c.client_id = cl.client_id
JOIN Composer co ON c.commande_id = co.commande_id
GROUP BY c.commande_id, c.date_commande, cl.nom, c.statut, c.montant_paie;

-- Pour afficher le résultat de la vue :
-- SELECT * FROM Vue_Recap_Commandes;
