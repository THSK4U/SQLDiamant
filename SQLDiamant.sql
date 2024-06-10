create database Diamant;

use Diamant;

CREATE TABLE Invités (
    id_invite int not null primary key,
    nom varchar(255),
    statut varchar(255)
);
CREATE TABLE Rooms (
    id_room int not null primary key,
    nom varchar(255)
);

CREATE TABLE Mouvements (
    id int primary key,
    id_invite int,
    id_room int,
    time date,
    FOREIGN KEY (id_invite) REFERENCES Invités(id_invite),
    FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);


CREATE TABLE Objets (
  id_objet Int primary key,
  nom_objet varchar(255),
  id_room INT,
  FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

CREATE TABLE Indices (
    id_indice INT PRIMARY KEY,
    description TEXT,
    id_room Int,
	FOREIGN KEY (id_room) REFERENCES Rooms(id_room)
);

INSERT INTO Invités (id_invite, nom, statut) VALUES (1, 'Jean Dupont', 'Suspect'); 
INSERT INTO Invités (id_invite, nom, statut) VALUES (2, 'Marie Curie', 'Innocent'); 
INSERT INTO Invités (id_invite, nom, statut) VALUES (3, 'Albert Einstein', 'Suspect'); 
INSERT INTO Invités (id_invite, nom, statut) VALUES (4, 'Isaac Newton', 'Innocent'); 
INSERT INTO Invités (id_invite, nom, statut) VALUES (5, 'Niels Bohr', 'Suspect');
INSERT INTO rooms (id_room, nom) VALUES (1, 'Salle de Bal'); 
INSERT INTO rooms (id_room, nom) VALUES (2, 'Bibliothèque'); 
INSERT INTO rooms (id_room, nom) VALUES (3, 'Cuisine'); 
INSERT INTO rooms (id_room, nom) VALUES (4, 'Salon'); 
INSERT INTO rooms (id_room, nom) VALUES (5, 'Jardin');
INSERT INTO Mouvements (id,  id_invite, id_room, time) VALUES
(1,1, 1, '2023-06-01'),
(2,2, 1, '2023-06-01'),
(3,3, 2, '2023-06-01'),
(4,4, 3, '2023-06-01'),
(5,1, 2, '2023-06-02');
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (1, 'Vase Ancien', 1); 
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (2, 'Tableau de Maître', 2); 
INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (3, 'Statue en Bronze', 3);
 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (4, 'Coffre à Bijoux', 2);
 INSERT INTO Objets (id_objet, nom_objet, id_room) VALUES (5, 'Lampe en Cristal', 4);
 INSERT INTO Indices (id_indice, description, id_room) VALUES (1, 'Empreintes de pas trouvées près du vase', 1); 
 INSERT INTO Indices (id_indice, description, id_room) VALUES (2, 'Traces de sang sur la table', 2); 
 INSERT INTO Indices (id_indice, description, id_room) VALUES (3, 'Foulard déchiré retrouvé sur le sol', 3); 
 INSERT INTO Indices (id_indice, description, id_room) VALUES (4, 'Clé ancienne trouvée sous le canapé', 4); 
 INSERT INTO Indices (id_indice, description, id_room) VALUES (5, 'Bijou abandonné dans le jardin', 5);

select * from Invités;
select nom,statut from Invités;
select count(*) from invités;
select count(*) from invités where statut = 'Suspect';

