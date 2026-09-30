# Mini Projet de Base de Données - TEK et Outmaite ING1 NEW3 - README


## INTRODUCTION

Voici le processus de suivi de notre avancée dans la matière TI503N - Base De Données 1: Concepts de Base
Contributeurs:
- Kévin-Seng TEK (Yuyuuuu2)
- Adame OUTMAITE (Adotm232)

Ce projet consiste en la création d'une Base de Données destinée à une entreprise chargée de vente et d'entrepôt de figurines de collection de mangas et robots. Elle a donc été réalisée en prenant en compte les
propriétés d'une figurine mais aussi le processus de vente, les clients et le stockage des figurines.


## PARTIE 1
Afin d'obtenir le dictionnaire brut ainsi que les règles de travail, nous avons utilisé un prompt qui a été envoyé à une IA générative, ici DeepSeek. 
Voici le prompt:
Tu travailles dans le domaine du commerce spécialisé dans la distribution et la vente de figurines de collection. Ton entreprise a comme activité de concevoir, importer, distribuer et vendre des figurines générales inspirées de licences manga, anime, jeux vidéo et cinéma, de type Bandai. C’est une entreprise comme Bandai Namco, Good Smile Company, Kotobukiya ou Hot Toys. Les données ont été collectées sur le catalogue de figurines, les licences et personnages, les fournisseurs, les stocks, les clients, les commandes, les paiements, les livraisons, les prix et les promotions. Inspire-toi des sites officiels Bandai Namco et Premium Bandai, des catalogues Good Smile Company et d’articles sur la distribution de produits dérivés.
Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.
D’abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.

Réponse de l'IAG : 

### Règles de gestion des données

- L’entreprise vend des figurines de collection issues de licences manga, anime, jeux vidéo et cinéma, ainsi que des créations originales.
- Chaque figurine possède une référence unique, un nom commercial, une licence ou série, un personnage, un fabricant, une gamme et une catégorie.
- Une figurine appartient à une seule licence, un seul personnage, une seule gamme et une seule catégorie.
- Une figurine peut être fournie par un ou plusieurs fournisseurs.
- Chaque fournisseur possède une référence, un nom, un pays et un délai de livraison.
- Une figurine est stockée dans un entrepôt à un emplacement donné.
- Le stock d’une figurine est suivi par une quantité disponible et un seuil d’alerte.
- Lorsque le stock atteint le seuil d’alerte, une demande de réapprovisionnement peut être déclenchée.
- Chaque figurine possède un prix de vente HT, un taux de TVA et un prix de vente TTC.
- Une promotion peut s’appliquer à une figurine sous la forme d’un taux de remise.
- Un client est identifié par un identifiant unique. Il possède un nom, un prénom, un email et une adresse de livraison.
- Un client peut passer plusieurs commandes.
- Une commande est identifiée par un numéro unique. Elle contient une date, un statut, un mode de paiement, un montant payé et une date de paiement.
- Une commande contient une ou plusieurs lignes de commande.
- Chaque ligne de commande concerne une seule figurine, une quantité commandée et le prix unitaire appliqué au moment de la commande.
- Une commande peut être en attente, payée, en préparation, expédiée, livrée ou annulée.
- Une commande peut faire l’objet d’une ou plusieurs livraisons.
- Une livraison possède un numéro de suivi, un transporteur et une date de livraison.
- Les données clients sont conservées pour le suivi des commandes et la relation client.

### Dictionnaire de données brutes

| Signification de la donnée | Type | Taille |
|---|---|---|
| Référence unique de la figurine | Alphanumérique | 20 caractères |
| Nom commercial de la figurine | Texte | 100 caractères |
| Licence ou série d’appartenance | Texte | 80 caractères |
| Personnage représenté | Texte | 80 caractères |
| Fabricant de la figurine | Texte | 80 caractères |
| Gamme de la figurine | Texte | 50 caractères |
| Catégorie de la figurine | Texte | 50 caractères |
| Hauteur de la figurine en cm | Décimal | 5 chiffres dont 2 décimales |
| Date de sortie prévue | Date | 10 caractères |
| Prix de vente HT | Décimal | 8 chiffres dont 2 décimales |
| Taux de TVA | Décimal | 4 chiffres dont 2 décimales |
| Prix de vente TTC | Décimal | 8 chiffres dont 2 décimales |
| Quantité en stock | Numérique | 6 chiffres |
| Seuil d’alerte de stock | Numérique | 6 chiffres |
| Emplacement dans l’entrepôt | Alphanumérique | 20 caractères |
| Référence du fournisseur | Alphanumérique | 20 caractères |
| Nom du fournisseur | Texte | 80 caractères |
| Délai de livraison en jours | Numérique | 3 chiffres |
| Identifiant unique du client | Alphanumérique | 20 caractères |
| Nom du client | Texte | 50 caractères |
| Prénom du client | Texte | 50 caractères |
| Email du client | Texte | 100 caractères |
| Adresse de livraison | Texte | 150 caractères |
| Numéro de commande | Alphanumérique | 20 caractères |
| Date de commande | Date | 10 caractères |
| Statut de la commande | Texte | 20 caractères |
| Quantité commandée | Numérique | 5 chiffres |
| Prix unitaire au moment de la commande | Décimal | 8 chiffres dont 2 décimales |
| Taux de remise appliqué | Décimal | 5 chiffres dont 2 décimales |
| Mode de paiement | Texte | 30 caractères |
| Montant payé | Décimal | 8 chiffres dont 2 décimales |
| Date de paiement | Date | 10 caractères |
| Numéro de suivi de livraison | Alphanumérique | 30 caractères |
| Transporteur | Texte | 50 caractères |
| Date de livraison | Date | 10 caractères |

Ce dictionnaire contient 35 données, ce qui respecte la contrainte demandée. Il peut être transmis à l’étudiant en ingénierie informatique pour la suite de la démarche MERISE.

Ainsi nous avons obtenu le MCD suivant: 
<img width="1232" height="655" alt="image" src="https://github.com/user-attachments/assets/23b943b7-7ec5-4b23-83d6-902404952fab" />


Et dont le MLD est:
Emplacement = (emplacement_id VARCHAR(20), code VARCHAR(20), zone VARCHAR(50));
Fournisseur = (fournisseur_id VARCHAR(20), nom VARCHAR(80), pays VARCHAR(50), delai_livraison INT);
Client = (client_id VARCHAR(20), nom VARCHAR(50), prenom VARCHAR(50), email VARCHAR(100), adresse VARCHAR(150));
Entrepot = (entrepot_id VARCHAR(20), nom VARCHAR(80), adresse VARCHAR(150));
Promotion = (promotion_id VARCHAR(20), taux_remise DECIMAL(5,2), date_debut DATE, date_fin DATE);
Figurine = (figurine_id VARCHAR(20), figurine_licence VARCHAR(80), figurine_nom VARCHAR(150), figurine_personnage VARCHAR(80), figurine_fabricant VARCHAR(80), figurine_gamme VARCHAR(50), figurine_categorie VARCHAR(50), figurine_hauteur DECIMAL(5,2), figurine_date_sortie DATE, prix_ht DECIMAL(10,2), taux_tva DECIMAL(5,2), prix_ttc DECIMAL(10,2), variante_type VARCHAR(50), date_sortie_variante DATE, #figurine_id_1*);
Commande = (commande_id VARCHAR(20), date_commande DATE, statut VARCHAR(20), mode_paiement VARCHAR(30), montant_paie DECIMAL(10,2), date_paiement DATE, #client_id);
Livraison = (num_suivi VARCHAR(30), transporteur VARCHAR(50), date_livraison DATE, #commande_id);
Stocker = (#emplacement_id, #entrepot_id, #figurine_id, quantite_stock INT, seuil_alerte INT);
Fournir = (#fournisseur_id, #figurine_id, prix_achat DECIMAL(10,2), delai INT);
Promouvoir = (#promotion_id, #figurine_id);
Composer = (#figurine_id, #commande_id, quantite_commandee INT, prix_unitaire DECIMAL(10,2), taux_remise DECIMAL(5,2));



## PARTIE 2
