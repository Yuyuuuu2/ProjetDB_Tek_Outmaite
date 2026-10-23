ALTER Table Promotion
ADD CONSTRAINT chk_promotion_taux CHECK (taux_remise BETWEEN 0 AND 100);

ALTER TABLE Promotion
ADD CONSTRAINT chk_promotion_dates CHECK (date_fin >= date_debut);

ALTER TABLE Figurine
ADD CONSTRAINT chk_figurine_hauteur CHECK (figurine_hauteur > 0);

ALTER TABLE Figurine
ADD CONSTRAINT chk_figurine_prix_ht CHECK (prix_ht >= 0);

ALTER TABLE Figurine 
ADD CONSTRAINT chk_figurine_taux_tva CHECK (taux_tva BETWEEN 0 AND 100);

ALTER TABLE Figurine
ADD CONSTRAINT chk_figurine_prix_ttc CHECK (prix_ttc >= 0);

ALTER TABLE Figurine
ADD CONSTRAINT chk_figurine_auto_ref CHECK (figurine_id_1 IS NULL OR figurine_id_1 <> figurine_id);

ALTER TABLE Commande
ADD CONSTRAINT chk_commande_montant CHECK (montant_paie >= 0);

ALTER TABLE Commande
ADD CONSTRAINT chk_commande_statut CHECK (statut IN ('en attente', 'payée', 'en préparation', 'expédiée', 'livrée', 'annulée'));

ALTER TABLE Commande
ADD CONSTRAINT chk_commande_mode_paiement CHECK (mode_paiement IN ('carte bancaire', 'PayPal', 'virement', 'espèces'));

ALTER TABLE Stocker
ADD CONSTRAINT chk_stocker_quantite CHECK (quantite_stock >= 0);

ALTER TABLE Stocker
ADD CONSTRAINT chk_stocker_seuil CHECK (seuil_alerte >= 0);

ALTER TABLE Fournir
ADD CONSTRAINT chk_fournir_prix CHECK (prix_achat >= 0);

ALTER TABLE Fournir
ADD CONSTRAINT chk_fournir_delai CHECK (delai >= 0);

ALTER TABLE Composer
ADD CONSTRAINT chk_composer_quantite CHECK (quantite_commandee > 0);

ALTER TABLE Composer
ADD CONSTRAINT chk_composer_prix CHECK (prix_unitaire >= 0);

ALTER TABLE Composer
ADD CONSTRAINT chk_composer_remise CHECK (taux_remise BETWEEN 0 AND 100);