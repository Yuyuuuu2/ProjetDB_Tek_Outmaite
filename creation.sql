CREATE TABLE Emplacement(
   emplacement_id VARCHAR(50),
   code VARCHAR(50),
   zone VARCHAR(50),
   PRIMARY KEY(emplacement_id)
);

CREATE TABLE Fournisseur(
   fournisseur_id VARCHAR(50),
   nom VARCHAR(50),
   pays VARCHAR(50),
   delai_livraison INT,
   PRIMARY KEY(fournisseur_id)
);

CREATE TABLE Client(
   client_id VARCHAR(50),
   nom VARCHAR(50),
   prenom VARCHAR(50),
   email VARCHAR(50),
   adresse VARCHAR(50),
   PRIMARY KEY(client_id)
);

CREATE TABLE Entrepot(
   entrepot_id VARCHAR(50),
   nom VARCHAR(50),
   adresse VARCHAR(50),
   PRIMARY KEY(entrepot_id)
);

CREATE TABLE Promotion(
   promotion_id VARCHAR(50),
   taux_remise DECIMAL(5,2),
   date_debut DATE,
   date_fin DATE,
   PRIMARY KEY(promotion_id)
);

CREATE TABLE Figurine(
   figurine_id VARCHAR(50),
   figurine_licence VARCHAR(50),
   figurine_nom VARCHAR(50),
   figurine_personnage VARCHAR(50),
   figurine_fabricant VARCHAR(50),
   figurine_gamme VARCHAR(50),
   figurine_categorie VARCHAR(50),
   figurine_hauteur DECIMAL(5,2),
   figurine_date_sortie DATE,
   prix_ht DECIMAL(10,2),
   taux_tva DECIMAL(5,2),
   prix_ttc DECIMAL(10,2),
   variante_type VARCHAR(50),
   date_sortie_variante DATE,
   figurine_id_1 VARCHAR(50),
   PRIMARY KEY(figurine_id),
   FOREIGN KEY(figurine_id_1) REFERENCES Figurine(figurine_id)
);

CREATE TABLE Commande(
   commande_id VARCHAR(50),
   date_commande DATE,
   statut VARCHAR(50),
   mode_paiement VARCHAR(50),
   montant_paie DECIMAL(10,2),
   date_paiement DATE,
   client_id VARCHAR(50) NOT NULL,
   PRIMARY KEY(commande_id),
   FOREIGN KEY(client_id) REFERENCES Client(client_id)
);

CREATE TABLE Livraison(
   num_suivi VARCHAR(50),
   transporteur VARCHAR(50),
   date_livraison DATE,
   commande_id VARCHAR(50) NOT NULL,
   PRIMARY KEY(num_suivi),
   UNIQUE(commande_id),
   FOREIGN KEY(commande_id) REFERENCES Commande(commande_id)
);

CREATE TABLE Stocker(
   emplacement_id VARCHAR(50),
   entrepot_id VARCHAR(50),
   figurine_id VARCHAR(50),
   quantite_stock INT,
   seuil_alerte INT,
   PRIMARY KEY(emplacement_id, entrepot_id, figurine_id),
   FOREIGN KEY(emplacement_id) REFERENCES Emplacement(emplacement_id),
   FOREIGN KEY(entrepot_id) REFERENCES Entrepot(entrepot_id),
   FOREIGN KEY(figurine_id) REFERENCES Figurine(figurine_id)
);

CREATE TABLE Fournir(
   fournisseur_id VARCHAR(50),
   figurine_id VARCHAR(50),
   prix_achat DECIMAL(10,2),
   delai INT,
   PRIMARY KEY(fournisseur_id, figurine_id),
   FOREIGN KEY(fournisseur_id) REFERENCES Fournisseur(fournisseur_id),
   FOREIGN KEY(figurine_id) REFERENCES Figurine(figurine_id)
);

CREATE TABLE Promouvoir(
   promotion_id VARCHAR(50),
   figurine_id VARCHAR(50),
   PRIMARY KEY(promotion_id, figurine_id),
   FOREIGN KEY(promotion_id) REFERENCES Promotion(promotion_id),
   FOREIGN KEY(figurine_id) REFERENCES Figurine(figurine_id)
);

CREATE TABLE Composer(
   figurine_id VARCHAR(50),
   commande_id VARCHAR(50),
   quantite_commandee INT,
   prix_unitaire DECIMAL(10,2),
   taux_remise DECIMAL(5,2),
   PRIMARY KEY(figurine_id, commande_id),
   FOREIGN KEY(figurine_id) REFERENCES Figurine(figurine_id),
   FOREIGN KEY(commande_id) REFERENCES Commande(commande_id)
);
