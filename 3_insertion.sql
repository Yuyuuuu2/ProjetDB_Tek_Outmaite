-- ============================================================
-- Remplissage de la base de données figurines_db
-- Ordre : tables sans clés étrangères puis avec clés étrangères
-- ============================================================

-- ============================================================
-- 1. TABLES SANS CLÉS ÉTRANGÈRES
-- ============================================================

-- ------------------------------------------------------------
-- 1.1 EMPLACEMENT
-- ------------------------------------------------------------
INSERT INTO Emplacement (emplacement_id, code, zone) VALUES
('EMP001', 'A01', 'Zone A'),
('EMP002', 'A02', 'Zone A'),
('EMP003', 'A03', 'Zone A'),
('EMP004', 'B01', 'Zone B'),
('EMP005', 'B02', 'Zone B'),
('EMP006', 'B03', 'Zone B'),
('EMP007', 'C01', 'Zone C'),
('EMP008', 'C02', 'Zone C'),
('EMP009', 'C03', 'Zone C'),
('EMP010', 'D01', 'Zone D'),
('EMP011', 'D02', 'Zone D'),
('EMP012', 'D03', 'Zone D'),
('EMP013', 'E01', 'Zone E'),
('EMP014', 'E02', 'Zone E'),
('EMP015', 'E03', 'Zone E');

-- ------------------------------------------------------------
-- 1.2 FOURNISSEUR
-- ------------------------------------------------------------
INSERT INTO Fournisseur (fournisseur_id, nom, pays, delai_livraison) VALUES
('FOU001', 'Bandai Namco', 'Japon', 15),
('FOU002', 'Good Smile Company', 'Japon', 20),
('FOU003', 'Kotobukiya', 'Japon', 18),
('FOU004', 'Hot Toys', 'Hong Kong', 30),
('FOU005', 'Sideshow Collectibles', 'États-Unis', 25),
('FOU006', 'Funko', 'États-Unis', 10),
('FOU007', 'Banpresto', 'Japon', 12),
('FOU008', 'Megahouse', 'Japon', 22),
('FOU009', 'Alter', 'Japon', 20),
('FOU010', 'Max Factory', 'Japon', 18);

-- ------------------------------------------------------------
-- 1.3 CLIENT
-- ------------------------------------------------------------
INSERT INTO Client (client_id, nom, prenom, email, adresse) VALUES
('CLI001', 'Dupont', 'Jean', 'jean.dupont@email.com', '12 rue de Paris, 75001 Paris'),
('CLI002', 'Martin', 'Sophie', 'sophie.martin@email.com', '8 avenue Lyon, 69000 Lyon'),
('CLI003', 'Bernard', 'Lucas', 'lucas.bernard@email.com', '5 rue Marseille, 13000 Marseille'),
('CLI004', 'Petit', 'Emma', 'emma.petit@email.com', '22 rue Toulouse, 31000 Toulouse'),
('CLI005', 'Robert', 'Hugo', 'hugo.robert@email.com', '14 rue Nice, 06000 Nice'),
('CLI006', 'Richard', 'Léa', 'lea.richard@email.com', '3 rue Nantes, 44000 Nantes'),
('CLI007', 'Durand', 'Nathan', 'nathan.durand@email.com', '9 rue Strasbourg, 67000 Strasbourg'),
('CLI008', 'Moreau', 'Chloé', 'chloe.moreau@email.com', '17 rue Bordeaux, 33000 Bordeaux'),
('CLI009', 'Simon', 'Enzo', 'enzo.simon@email.com', '6 rue Lille, 59000 Lille'),
('CLI010', 'Laurent', 'Manon', 'manon.laurent@email.com', '11 rue Rennes, 35000 Rennes'),
('CLI011', 'Lefebvre', 'Théo', 'theo.lefebvre@email.com', '2 rue Montpellier, 34000 Montpellier'),
('CLI012', 'Michel', 'Camille', 'camille.michel@email.com', '19 rue Grenoble, 38000 Grenoble'),
('CLI013', 'Garcia', 'Louis', 'louis.garcia@email.com', '7 rue Dijon, 21000 Dijon'),
('CLI014', 'David', 'Inès', 'ines.david@email.com', '13 rue Angers, 49000 Angers'),
('CLI015', 'Bertrand', 'Jules', 'jules.bertrand@email.com', '4 rue Reims, 51100 Reims'),
('CLI016', 'Roux', 'Sarah', 'sarah.roux@email.com', '10 rue Le Havre, 76600 Le Havre'),
('CLI017', 'Vincent', 'Adam', 'adam.vincent@email.com', '15 rue Saint-Étienne, 42000 Saint-Étienne'),
('CLI018', 'Fournier', 'Lina', 'lina.fournier@email.com', '8 rue Toulon, 83000 Toulon'),
('CLI019', 'Morel', 'Raphaël', 'raphael.morel@email.com', '21 rue Nancy, 54000 Nancy'),
('CLI020', 'Girard', 'Jade', 'jade.girard@email.com', '6 rue Metz, 57000 Metz');

-- ------------------------------------------------------------
-- 1.4 ENTREPOT
-- ------------------------------------------------------------
INSERT INTO Entrepot (entrepot_id, nom, adresse) VALUES
('ENT001', 'Entrepôt Paris Nord', '12 rue de la Logistique, 93200 Saint-Denis'),
('ENT002', 'Entrepôt Lyon Sud', '45 avenue du Stock, 69800 Saint-Priest'),
('ENT003', 'Entrepôt Marseille', '8 boulevard des Colis, 13015 Marseille'),
('ENT004', 'Entrepôt Lille', '23 rue du Dépôt, 59200 Tourcoing'),
('ENT005', 'Entrepôt Bordeaux', '17 quai des Marchandises, 33300 Bordeaux');

-- ------------------------------------------------------------
-- 1.5 PROMOTION
-- ------------------------------------------------------------
INSERT INTO Promotion (promotion_id, taux_remise, date_debut, date_fin) VALUES
('PRO001', 10.00, '2025-01-01', '2025-01-31'),
('PRO002', 15.00, '2025-02-01', '2025-02-28'),
('PRO003', 20.00, '2025-03-01', '2025-03-31'),
('PRO004', 5.00,  '2025-04-01', '2025-04-30'),
('PRO005', 25.00, '2025-05-01', '2025-05-31'),
('PRO006', 30.00, '2025-06-01', '2025-06-30'),
('PRO007', 12.00, '2025-07-01', '2025-07-31'),
('PRO008', 18.00, '2025-08-01', '2025-08-31'),
('PRO009', 22.00, '2025-09-01', '2025-09-30'),
('PRO010', 35.00, '2025-10-01', '2025-10-31');

-- ============================================================
-- 2. TABLES AVEC CLÉS ÉTRANGÈRES
-- ============================================================

-- ------------------------------------------------------------
-- 2.1 FIGURINE (auto-référence pour les variantes)
-- ------------------------------------------------------------
INSERT INTO Figurine (figurine_id, figurine_licence, figurine_nom, figurine_personnage, figurine_fabricant, figurine_gamme, figurine_categorie, figurine_hauteur, figurine_date_sortie, prix_ht, taux_tva, prix_ttc, variante_type, date_sortie_variante, figurine_id_1) VALUES
('FIG001', 'Dragon Ball Z', 'Son Goku Super Saiyan', 'Son Goku', 'Bandai', 'S.H.Figuarts', 'Action Figure', 14.00, '2024-01-15', 45.00, 20.00, 54.00, NULL, NULL, NULL),
('FIG002', 'Dragon Ball Z', 'Vegeta Super Saiyan', 'Vegeta', 'Bandai', 'S.H.Figuarts', 'Action Figure', 14.00, '2024-02-10', 45.00, 20.00, 54.00, NULL, NULL, NULL),
('FIG003', 'Naruto', 'Naruto Uzumaki Sage Mode', 'Naruto Uzumaki', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2024-03-05', 50.00, 20.00, 60.00, NULL, NULL, NULL),
('FIG004', 'Naruto', 'Sasuke Uchiha', 'Sasuke Uchiha', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2024-03-20', 50.00, 20.00, 60.00, NULL, NULL, NULL),
('FIG005', 'One Piece', 'Monkey D. Luffy', 'Luffy', 'Bandai', 'Figuarts Zero', 'Statue', 18.00, '2024-04-01', 65.00, 20.00, 78.00, NULL, NULL, NULL),
('FIG006', 'One Piece', 'Roronoa Zoro', 'Zoro', 'Bandai', 'Figuarts Zero', 'Statue', 18.00, '2024-04-15', 65.00, 20.00, 78.00, NULL, NULL, NULL),
('FIG007', 'My Hero Academia', 'Izuku Midoriya', 'Deku', 'Bandai', 'Amazing Yamaguchi', 'Action Figure', 16.00, '2024-05-01', 70.00, 20.00, 84.00, NULL, NULL, NULL),
('FIG008', 'My Hero Academia', 'Katsuki Bakugo', 'Bakugo', 'Bandai', 'Amazing Yamaguchi', 'Action Figure', 16.00, '2024-05-20', 70.00, 20.00, 84.00, NULL, NULL, NULL),
('FIG009', 'Demon Slayer', 'Tanjiro Kamado', 'Tanjiro', 'Bandai', 'Figuarts Zero', 'Statue', 17.00, '2024-06-01', 75.00, 20.00, 90.00, NULL, NULL, NULL),
('FIG010', 'Demon Slayer', 'Nezuko Kamado', 'Nezuko', 'Bandai', 'Figuarts Zero', 'Statue', 15.00, '2024-06-15', 75.00, 20.00, 90.00, NULL, NULL, NULL),
('FIG011', 'Attack on Titan', 'Eren Yeager', 'Eren', 'Good Smile Company', 'Nendoroid', 'Nendoroid', 10.00, '2024-07-01', 55.00, 20.00, 66.00, NULL, NULL, NULL),
('FIG012', 'Attack on Titan', 'Mikasa Ackerman', 'Mikasa', 'Good Smile Company', 'Nendoroid', 'Nendoroid', 10.00, '2024-07-15', 55.00, 20.00, 66.00, NULL, NULL, NULL),
('FIG013', 'Jujutsu Kaisen', 'Yuji Itadori', 'Yuji', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2024-08-01', 50.00, 20.00, 60.00, NULL, NULL, NULL),
('FIG014', 'Jujutsu Kaisen', 'Megumi Fushiguro', 'Megumi', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2024-08-15', 50.00, 20.00, 60.00, NULL, NULL, NULL),
('FIG015', 'Chainsaw Man', 'Denji', 'Denji', 'Good Smile Company', 'POP UP PARADE', 'Statue', 17.00, '2024-09-01', 45.00, 20.00, 54.00, NULL, NULL, NULL),
('FIG016', 'Chainsaw Man', 'Power', 'Power', 'Good Smile Company', 'POP UP PARADE', 'Statue', 17.00, '2024-09-15', 45.00, 20.00, 54.00, NULL, NULL, NULL),
('FIG017', 'Gundam', 'RX-78-2 Gundam', 'RX-78-2', 'Bandai', 'MG', 'Maquette', 18.00, '2024-10-01', 60.00, 20.00, 72.00, NULL, NULL, NULL),
('FIG018', 'Gundam', 'MS-06 Zaku II', 'Zaku II', 'Bandai', 'MG', 'Maquette', 18.00, '2024-10-15', 60.00, 20.00, 72.00, NULL, NULL, NULL),
('FIG019', 'Sailor Moon', 'Sailor Moon', 'Usagi Tsukino', 'Bandai', 'S.H.Figuarts', 'Action Figure', 14.00, '2024-11-01', 55.00, 20.00, 66.00, NULL, NULL, NULL),
('FIG020', 'Sailor Moon', 'Sailor Mars', 'Rei Hino', 'Bandai', 'S.H.Figuarts', 'Action Figure', 14.00, '2024-11-15', 55.00, 20.00, 66.00, NULL, NULL, NULL),
('FIG021', 'Dragon Ball Z', 'Son Goku Super Saiyan Blue', 'Son Goku', 'Bandai', 'S.H.Figuarts', 'Action Figure', 14.00, '2025-01-10', 50.00, 20.00, 60.00, 'Édition limitée', '2025-01-10', 'FIG001'),
('FIG022', 'Naruto', 'Naruto Uzumaki Six Paths', 'Naruto Uzumaki', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2025-02-01', 55.00, 20.00, 66.00, 'Variante', '2025-02-01', 'FIG003'),
('FIG023', 'One Piece', 'Monkey D. Luffy Gear 5', 'Luffy', 'Bandai', 'Figuarts Zero', 'Statue', 18.00, '2025-03-01', 70.00, 20.00, 84.00, 'Variante', '2025-03-01', 'FIG005'),
('FIG024', 'My Hero Academia', 'Izuku Midoriya Full Cowl', 'Deku', 'Bandai', 'Amazing Yamaguchi', 'Action Figure', 16.00, '2025-04-01', 75.00, 20.00, 90.00, 'Variante', '2025-04-01', 'FIG007'),
('FIG025', 'Demon Slayer', 'Tanjiro Kamado Hinokami', 'Tanjiro', 'Bandai', 'Figuarts Zero', 'Statue', 17.00, '2025-05-01', 80.00, 20.00, 96.00, 'Variante', '2025-05-01', 'FIG009'),
('FIG026', 'Jujutsu Kaisen', 'Satoru Gojo', 'Gojo', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2024-12-01', 55.00, 20.00, 66.00, NULL, NULL, NULL),
('FIG027', 'Jujutsu Kaisen', 'Nobara Kugisaki', 'Nobara', 'Bandai', 'S.H.Figuarts', 'Action Figure', 15.00, '2024-12-15', 55.00, 20.00, 66.00, NULL, NULL, NULL),
('FIG028', 'Chainsaw Man', 'Aki Hayakawa', 'Aki', 'Good Smile Company', 'POP UP PARADE', 'Statue', 17.00, '2025-01-01', 45.00, 20.00, 54.00, NULL, NULL, NULL),
('FIG029', 'Gundam', 'Unicorn Gundam', 'Unicorn', 'Bandai', 'RG', 'Maquette', 15.00, '2025-02-01', 40.00, 20.00, 48.00, NULL, NULL, NULL),
('FIG030', 'Sailor Moon', 'Sailor Jupiter', 'Makoto Kino', 'Bandai', 'S.H.Figuarts', 'Action Figure', 14.00, '2025-03-01', 55.00, 20.00, 66.00, NULL, NULL, NULL);

-- ------------------------------------------------------------
-- 2.2 COMMANDE
-- ------------------------------------------------------------
INSERT INTO Commande (commande_id, date_commande, statut, mode_paiement, montant_paie, date_paiement, client_id) VALUES
('CMD001', '2025-01-05', 'livrée', 'carte bancaire', 108.00, '2025-01-05', 'CLI001'),
('CMD002', '2025-01-10', 'livrée', 'PayPal', 60.00, '2025-01-10', 'CLI002'),
('CMD003', '2025-01-15', 'expédiée', 'carte bancaire', 78.00, '2025-01-15', 'CLI003'),
('CMD004', '2025-01-20', 'payée', 'virement', 84.00, '2025-01-20', 'CLI004'),
('CMD005', '2025-02-01', 'en préparation', 'carte bancaire', 90.00, '2025-02-01', 'CLI005'),
('CMD006', '2025-02-05', 'livrée', 'PayPal', 66.00, '2025-02-05', 'CLI006'),
('CMD007', '2025-02-10', 'annulée', 'carte bancaire', 0.00, NULL, 'CLI007'),
('CMD008', '2025-02-15', 'livrée', 'carte bancaire', 120.00, '2025-02-15', 'CLI008'),
('CMD009', '2025-02-20', 'expédiée', 'virement', 54.00, '2025-02-20', 'CLI009'),
('CMD010', '2025-03-01', 'livrée', 'PayPal', 72.00, '2025-03-01', 'CLI010'),
('CMD011', '2025-03-05', 'payée', 'carte bancaire', 66.00, '2025-03-05', 'CLI011'),
('CMD012', '2025-03-10', 'en attente', 'carte bancaire', 0.00, NULL, 'CLI012'),
('CMD013', '2025-03-15', 'livrée', 'PayPal', 84.00, '2025-03-15', 'CLI013'),
('CMD014', '2025-03-20', 'expédiée', 'carte bancaire', 60.00, '2025-03-20', 'CLI014'),
('CMD015', '2025-04-01', 'livrée', 'virement', 96.00, '2025-04-01', 'CLI015'),
('CMD016', '2025-04-05', 'payée', 'carte bancaire', 54.00, '2025-04-05', 'CLI016'),
('CMD017', '2025-04-10', 'en préparation', 'PayPal', 66.00, '2025-04-10', 'CLI017'),
('CMD018', '2025-04-15', 'livrée', 'carte bancaire', 72.00, '2025-04-15', 'CLI018'),
('CMD019', '2025-05-01', 'expédiée', 'carte bancaire', 84.00, '2025-05-01', 'CLI019'),
('CMD020', '2025-05-05', 'livrée', 'virement', 60.00, '2025-05-05', 'CLI020'),
('CMD021', '2025-05-10', 'payée', 'PayPal', 66.00, '2025-05-10', 'CLI001'),
('CMD022', '2025-05-15', 'en attente', 'carte bancaire', 0.00, NULL, 'CLI002'),
('CMD023', '2025-06-01', 'livrée', 'carte bancaire', 90.00, '2025-06-01', 'CLI003'),
('CMD024', '2025-06-05', 'expédiée', 'PayPal', 54.00, '2025-06-05', 'CLI004'),
('CMD025', '2025-06-10', 'livrée', 'virement', 72.00, '2025-06-10', 'CLI005');

-- ------------------------------------------------------------
-- 2.3 LIVRAISON
-- ------------------------------------------------------------
INSERT INTO Livraison (num_suivi, transporteur, date_livraison, commande_id) VALUES
('SUI001', 'Colissimo', '2025-01-08', 'CMD001'),
('SUI002', 'Chronopost', '2025-01-13', 'CMD002'),
('SUI003', 'DHL', '2025-01-18', 'CMD003'),
('SUI004', 'UPS', '2025-01-25', 'CMD004'),
('SUI005', 'Colissimo', '2025-02-04', 'CMD005'),
('SUI006', 'Chronopost', '2025-02-08', 'CMD006'),
('SUI007', 'DHL', '2025-02-18', 'CMD008'),
('SUI008', 'UPS', '2025-02-23', 'CMD009'),
('SUI009', 'Colissimo', '2025-03-04', 'CMD010'),
('SUI010', 'Chronopost', '2025-03-08', 'CMD011'),
('SUI011', 'DHL', '2025-03-18', 'CMD013'),
('SUI012', 'UPS', '2025-03-23', 'CMD014'),
('SUI013', 'Colissimo', '2025-04-04', 'CMD015'),
('SUI014', 'Chronopost', '2025-04-08', 'CMD016'),
('SUI015', 'DHL', '2025-04-13', 'CMD017'),
('SUI016', 'UPS', '2025-04-18', 'CMD018'),
('SUI017', 'Colissimo', '2025-05-04', 'CMD019'),
('SUI018', 'Chronopost', '2025-05-08', 'CMD020'),
('SUI019', 'DHL', '2025-05-13', 'CMD021'),
('SUI020', 'UPS', '2025-06-04', 'CMD023'),
('SUI021', 'Colissimo', '2025-06-08', 'CMD024'),
('SUI022', 'Chronopost', '2025-06-13', 'CMD025');

-- ------------------------------------------------------------
-- 2.4 STOCKER
-- ------------------------------------------------------------
INSERT INTO Stocker (emplacement_id, entrepot_id, figurine_id, quantite_stock, seuil_alerte) VALUES
('EMP001', 'ENT001', 'FIG001', 50, 10),
('EMP002', 'ENT001', 'FIG002', 40, 10),
('EMP003', 'ENT001', 'FIG003', 35, 8),
('EMP004', 'ENT001', 'FIG004', 30, 8),
('EMP005', 'ENT002', 'FIG005', 25, 5),
('EMP006', 'ENT002', 'FIG006', 20, 5),
('EMP007', 'ENT002', 'FIG007', 15, 5),
('EMP008', 'ENT002', 'FIG008', 18, 5),
('EMP009', 'ENT003', 'FIG009', 22, 6),
('EMP010', 'ENT003', 'FIG010', 20, 6),
('EMP011', 'ENT003', 'FIG011', 30, 10),
('EMP012', 'ENT003', 'FIG012', 28, 10),
('EMP013', 'ENT004', 'FIG013', 45, 12),
('EMP014', 'ENT004', 'FIG014', 42, 12),
('EMP015', 'ENT004', 'FIG015', 50, 15),
('EMP001', 'ENT001', 'FIG016', 38, 10),
('EMP002', 'ENT001', 'FIG017', 25, 8),
('EMP003', 'ENT001', 'FIG018', 22, 8),
('EMP004', 'ENT001', 'FIG019', 30, 10),
('EMP005', 'ENT002', 'FIG020', 27, 9),
('EMP006', 'ENT002', 'FIG021', 12, 4),
('EMP007', 'ENT002', 'FIG022', 10, 4),
('EMP008', 'ENT002', 'FIG023', 8, 3),
('EMP009', 'ENT003', 'FIG024', 6, 2),
('EMP010', 'ENT003', 'FIG025', 5, 2),
('EMP011', 'ENT003', 'FIG026', 40, 10),
('EMP012', 'ENT003', 'FIG027', 35, 10),
('EMP013', 'ENT004', 'FIG028', 20, 5),
('EMP014', 'ENT004', 'FIG029', 45, 12),
('EMP015', 'ENT004', 'FIG030', 30, 10);

-- ------------------------------------------------------------
-- 2.5 FOURNIR
-- ------------------------------------------------------------
INSERT INTO Fournir (fournisseur_id, figurine_id, prix_achat, delai) VALUES
('FOU001', 'FIG001', 25.00, 15),
('FOU001', 'FIG002', 25.00, 15),
('FOU001', 'FIG003', 28.00, 15),
('FOU001', 'FIG004', 28.00, 15),
('FOU001', 'FIG005', 38.00, 15),
('FOU001', 'FIG006', 38.00, 15),
('FOU001', 'FIG007', 42.00, 15),
('FOU001', 'FIG008', 42.00, 15),
('FOU001', 'FIG009', 45.00, 15),
('FOU001', 'FIG010', 45.00, 15),
('FOU002', 'FIG011', 32.00, 20),
('FOU002', 'FIG012', 32.00, 20),
('FOU002', 'FIG015', 28.00, 20),
('FOU002', 'FIG016', 28.00, 20),
('FOU002', 'FIG028', 28.00, 20),
('FOU003', 'FIG017', 35.00, 18),
('FOU003', 'FIG018', 35.00, 18),
('FOU003', 'FIG029', 25.00, 18),
('FOU004', 'FIG019', 35.00, 30),
('FOU004', 'FIG020', 35.00, 30),
('FOU005', 'FIG021', 30.00, 25),
('FOU005', 'FIG022', 33.00, 25),
('FOU005', 'FIG023', 42.00, 25),
('FOU006', 'FIG024', 45.00, 10),
('FOU006', 'FIG025', 48.00, 10),
('FOU007', 'FIG026', 33.00, 12),
('FOU007', 'FIG027', 33.00, 12),
('FOU008', 'FIG030', 35.00, 22),
('FOU009', 'FIG013', 32.00, 20),
('FOU009', 'FIG014', 32.00, 20),
('FOU010', 'FIG001', 26.00, 18),
('FOU010', 'FIG002', 26.00, 18),
('FOU010', 'FIG005', 40.00, 18),
('FOU010', 'FIG006', 40.00, 18);

-- ------------------------------------------------------------
-- 2.6 PROMOUVOIR
-- ------------------------------------------------------------
INSERT INTO Promouvoir (promotion_id, figurine_id) VALUES
('PRO001', 'FIG001'),
('PRO001', 'FIG002'),
('PRO002', 'FIG003'),
('PRO002', 'FIG004'),
('PRO003', 'FIG005'),
('PRO003', 'FIG006'),
('PRO004', 'FIG007'),
('PRO004', 'FIG008'),
('PRO005', 'FIG009'),
('PRO005', 'FIG010'),
('PRO006', 'FIG011'),
('PRO006', 'FIG012'),
('PRO007', 'FIG013'),
('PRO007', 'FIG014'),
('PRO008', 'FIG015'),
('PRO008', 'FIG016'),
('PRO009', 'FIG017'),
('PRO009', 'FIG018'),
('PRO010', 'FIG019'),
('PRO010', 'FIG020'),
('PRO001', 'FIG021'),
('PRO002', 'FIG022'),
('PRO003', 'FIG023'),
('PRO004', 'FIG024'),
('PRO005', 'FIG025'),
('PRO006', 'FIG026'),
('PRO007', 'FIG027'),
('PRO008', 'FIG028'),
('PRO009', 'FIG029'),
('PRO010', 'FIG030');

-- ------------------------------------------------------------
-- 2.7 COMPOSER (LIGNE_COMMANDE)
-- ------------------------------------------------------------
INSERT INTO Composer (figurine_id, commande_id, quantite_commandee, prix_unitaire, taux_remise) VALUES
('FIG001', 'CMD001', 2, 45.00, 10.00),
('FIG002', 'CMD001', 1, 45.00, 10.00),
('FIG003', 'CMD002', 1, 50.00, 0.00),
('FIG004', 'CMD002', 1, 50.00, 0.00),
('FIG005', 'CMD003', 1, 65.00, 0.00),
('FIG006', 'CMD003', 1, 65.00, 0.00),
('FIG007', 'CMD004', 1, 70.00, 0.00),
('FIG008', 'CMD004', 1, 70.00, 0.00),
('FIG009', 'CMD005', 1, 75.00, 0.00),
('FIG010', 'CMD005', 1, 75.00, 0.00),
('FIG011', 'CMD006', 1, 55.00, 0.00),
('FIG012', 'CMD006', 1, 55.00, 0.00),
('FIG013', 'CMD008', 2, 50.00, 0.00),
('FIG014', 'CMD008', 1, 50.00, 0.00),
('FIG015', 'CMD009', 1, 45.00, 0.00),
('FIG016', 'CMD009', 1, 45.00, 0.00),
('FIG017', 'CMD010', 1, 60.00, 0.00),
('FIG018', 'CMD010', 1, 60.00, 0.00),
('FIG019', 'CMD011', 1, 55.00, 0.00),
('FIG020', 'CMD011', 1, 55.00, 0.00),
('FIG021', 'CMD013', 1, 50.00, 0.00),
('FIG022', 'CMD013', 1, 55.00, 0.00),
('FIG023', 'CMD014', 1, 70.00, 0.00),
('FIG024', 'CMD015', 1, 75.00, 0.00),
('FIG025', 'CMD015', 1, 80.00, 0.00),
('FIG026', 'CMD016', 1, 55.00, 0.00),
('FIG027', 'CMD017', 1, 55.00, 0.00),
('FIG028', 'CMD018', 1, 45.00, 0.00),
('FIG029', 'CMD018', 1, 40.00, 0.00),
('FIG030', 'CMD019', 1, 55.00, 0.00),
('FIG001', 'CMD020', 1, 45.00, 0.00),
('FIG003', 'CMD021', 1, 50.00, 0.00),
('FIG005', 'CMD021', 1, 65.00, 0.00),
('FIG007', 'CMD023', 1, 70.00, 0.00),
('FIG009', 'CMD023', 1, 75.00, 0.00),
('FIG011', 'CMD024', 1, 55.00, 0.00),
('FIG013', 'CMD025', 1, 50.00, 0.00),
('FIG015', 'CMD025', 1, 45.00, 0.00);
