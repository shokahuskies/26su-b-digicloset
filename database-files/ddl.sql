DROP DATABASE IF EXISTS group_project;
CREATE DATABASE IF NOT EXISTS group_project;

USE group_project;

DROP TABLE IF EXISTS General_User;
CREATE TABLE IF NOT EXISTS General_User (
    user_id int PRIMARY KEY,
    username text,
    firstName text,
    lastName text
);

INSERT INTO General_User
VALUES (1, 'k4ngaroo', 'Emily', 'Kang'),
       (2, 'mimi', 'Maria', 'Santiago'),
       (3, 'gWalton', 'George', 'Walton');

DROP TABLE IF EXISTS Client;
CREATE TABLE IF NOT EXISTS Client (
    client_id int PRIMARY KEY,
    company_name text,
    package_level int
);

INSERT INTO Client
VALUES (1, 'Marcy`s', 1),
       (2, 'Opera', 1),
       (3, 'CData Co.', 2);

DROP TABLE IF EXISTS Fashionista;
CREATE TABLE IF NOT EXISTS Fashionista (
  fash_user int PRIMARY KEY,
  num_outfits_created int
);

INSERT INTO Fashionista
VALUES (1, 0),
       (2, 0);

DROP TABLE IF EXISTS Clothing;
CREATE TABLE IF NOT EXISTS Clothing (
    clothing_id int PRIMARY KEY,
    name text,
    brand text,
    type text,
    image blob,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES General_User (user_id)
                                    ON UPDATE CASCADE
                                    ON DELETE SET NULL
);

INSERT INTO Clothing
VALUES (1, 'striped t-shirt', 'Never32',
        'T SHIRT', LOAD_FILE('/'), 1),
       (2, 'buttoned pants', 'BrundyNashville',
        'SHORTS', LOAD_FILE('/'), 1),
       (3, 'thick leather jacket', 'Marcy`s',
        'JACKET', LOAD_FILE('/'), 1);

DROP TABLE IF EXISTS Outfits;
CREATE TABLE IF NOT EXISTS Outfits (
    outfit_id int PRIMARY KEY,
    season text,
    create_date date,
    occasion text,
    last_worn date,
    times_worn_month int,
    times_worn_total int,
    user_id int,
    fash_user int,
    FOREIGN KEY (user_id) REFERENCES General_User (user_id)
                                   ON UPDATE CASCADE
                                   ON DELETE SET NULL,
    FOREIGN KEY (fash_user) REFERENCES Fashionista (fash_user)
                                   ON UPDATE CASCADE
                                   ON DELETE SET NULL
);

INSERT INTO Outfits
VALUES (1, 'SUMMER', '2026-08-11',
        'CASUAL', '2026-08-12', 1,
        1, 1, 1),
        (21, 'FALL', '2025-01-01',
         'CHIQUE', NULL, 0,
         0,1, NULL);

DROP TABLE IF EXISTS Pieces;
CREATE TABLE IF NOT EXISTS Pieces (
    clothing_id int NOT NULL,
    outfit_id int NOT NULL,
    PRIMARY KEY (clothing_id, outfit_id),
    FOREIGN KEY (clothing_id) REFERENCES Clothing (clothing_id)
                                  ON UPDATE CASCADE
                                  ON DELETE RESTRICT,
    FOREIGN KEY (outfit_id) REFERENCES Outfits (outfit_id)
                                  ON UPDATE CASCADE
                                  ON DELETE CASCADE
);

INSERT INTO Pieces
VALUES (1,1),
       (1, 21),
       (2, 21);

DROP TABLE IF EXISTS Closet;
CREATE TABLE IF NOT EXISTS Closet (
    closet_id int PRIMARY KEY,
    fash_user int,
    clothing_id int,
    user_id int,
    FOREIGN KEY (fash_user) REFERENCES Fashionista (fash_user)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL,
    FOREIGN KEY (clothing_id) REFERENCES Clothing (clothing_id)
                                  ON UPDATE CASCADE
                                  ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES General_User (user_id)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL
);

INSERT INTO Closet
VALUES (1, 1, 1, 1),
       (2, 1, NULL, 2),
       (3, 1, NULL, 3);

DROP TABLE IF EXISTS User_Data_Pack;
CREATE TABLE IF NOT EXISTS User_Data_Pack (
    data_pack_id int PRIMARY KEY,
    name text,
    num_user_data int,
    price decimal(9,2)
);

INSERT INTO User_Data_Pack
VALUES (1, 'NUM OUTFITS INFO', 1, 1000.55),
       (2, 'NUM CLOTHES', 1, 50000.37);

DROP TABLE IF EXISTS User_Profile;
CREATE TABLE IF NOT EXISTS User_Profile (
    profile_index int AUTO_INCREMENT PRIMARY KEY,
    join_date date,
    num_clothing int,
    num_outfits int,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES General_User (user_id)
                                        ON UPDATE CASCADE
                                        ON DELETE SET NULL
);

INSERT INTO User_Profile (join_date, num_clothing, num_outfits, user_id)
VALUES ('2024-01-01', 3,
        2, 1),
        ('2024-12-1', 0,
         0, 2);


DROP TABLE IF EXISTS Data_Pack_Data;
CREATE TABLE IF NOT EXISTS Data_Pack_Data (
    profile_index int NOT NULL,
    data_pack_id int NOT NULL,
    PRIMARY KEY (profile_index, data_pack_id),
    FOREIGN KEY (profile_index) REFERENCES User_Profile (profile_index)
                                          ON UPDATE CASCADE
                                          ON DELETE CASCADE,
    FOREIGN KEY (data_pack_id) REFERENCES User_Data_Pack (data_pack_id)
                                          ON UPDATE CASCADE
                                          ON DELETE CASCADE
);

INSERT INTO Data_Pack_Data
VALUES (1, 1),
       (2,1);

DROP TABLE IF EXISTS Data_Receipt;
CREATE TABLE IF NOT EXISTS Data_Receipt (
    client_id int NOT NULL,
    data_pack_id int NOT NULL,
    PRIMARY KEY (client_id, data_pack_id),
    FOREIGN KEY (client_id) REFERENCES Client (client_id)
                                        ON UPDATE CASCADE
                                        ON DELETE CASCADE,
    FOREIGN KEY (data_pack_id) REFERENCES User_Data_Pack (data_pack_id)
                                        ON UPDATE CASCADE
                                        ON DELETE CASCADE
);

INSERT INTO Data_Receipt
VALUES (1, 1),
       (1,2);

DROP TABLE IF EXISTS Issue;
CREATE TABLE IF NOT EXISTS Issue (
    issue_id int PRIMARY KEY,
    category text,
    description text,
    status bool,
    client_id int,
    user_id int,
    FOREIGN KEY (client_id) REFERENCES Client (client_id)
                                 ON UPDATE CASCADE
                                 ON DELETE SET NULL,
    FOREIGN KEY (user_id) REFERENCES General_User (user_id)
                                 ON UPDATE CASCADE
                                 ON DELETE CASCADE
);

INSERT INTO Issue
VALUES (193, 'ACCOUNT', 'my account email wont update',
        0, 1, NULL),
        (310, 'APP', 'the app wont load for me',
         0, NULL, 1);

