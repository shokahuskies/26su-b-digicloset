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

INSERT INTO General_User --alan
VALUES (1, 'k4ngaroo', 'Emily', 'Kang'),
       (2, 'mimi', 'Maria', 'Santiago'),
       (3, 'gWalton', 'George', 'Walton');

-- Mock data from Mockaroo
insert into General_User (user_id, username, firstName, lastName) values (4, 'alegonidec3', 'Adrianna', 'Legonidec');
insert into General_User (user_id, username, firstName, lastName) values (5, 'cchaperling4', 'Catlaina', 'Chaperling');
insert into General_User (user_id, username, firstName, lastName) values (6, 'natterley5', 'Nerti', 'Atterley');
insert into General_User (user_id, username, firstName, lastName) values (7, 'tphipardshears6', 'Thorstein', 'Phipard-Shears');
insert into General_User (user_id, username, firstName, lastName) values (8, 'lwhitnell7', 'Lanae', 'Whitnell');
insert into General_User (user_id, username, firstName, lastName) values (9, 'nhaggis8', 'Nana', 'Haggis');
insert into General_User (user_id, username, firstName, lastName) values (10, 'jmaccombe9', 'Jillane', 'MacCombe');
insert into General_User (user_id, username, firstName, lastName) values (11, 'ffrunksa', 'Fallon', 'Frunks');
insert into General_User (user_id, username, firstName, lastName) values (12, 'phundalb', 'Pansie', 'Hundal');
insert into General_User (user_id, username, firstName, lastName) values (13, 'zscaddenc', 'Zechariah', 'Scadden');
insert into General_User (user_id, username, firstName, lastName) values (14, 'hjermind', 'Huey', 'Jermin');
insert into General_User (user_id, username, firstName, lastName) values (15, 'kcharlesworthe', 'Klemens', 'Charlesworth');
insert into General_User (user_id, username, firstName, lastName) values (16, 'njacobssenf', 'Nadia', 'Jacobssen');
insert into General_User (user_id, username, firstName, lastName) values (17, 'gailwardg', 'Gus', 'Ailward');
insert into General_User (user_id, username, firstName, lastName) values (18, 'cduffh', 'Chery', 'Duff');
insert into General_User (user_id, username, firstName, lastName) values (19, 'ckybirdi', 'Chris', 'Kybird');
insert into General_User (user_id, username, firstName, lastName) values (20, 'asnyderj', 'Antonin', 'Snyder');
insert into General_User (user_id, username, firstName, lastName) values (21, 'nguidik', 'Nathanil', 'Guidi');
insert into General_User (user_id, username, firstName, lastName) values (22, 'nlinnelll', 'Naoma', 'Linnell');
insert into General_User (user_id, username, firstName, lastName) values (23, 'sbishellm', 'Stace', 'Bishell');
insert into General_User (user_id, username, firstName, lastName) values (24, 'sboothern', 'Stafford', 'Boother');
insert into General_User (user_id, username, firstName, lastName) values (25, 'lnusso', 'Lindon', 'Nuss');
insert into General_User (user_id, username, firstName, lastName) values (26, 'mameryp', 'Melamie', 'Amery');
insert into General_User (user_id, username, firstName, lastName) values (27, 'tvendittoq', 'Titus', 'Venditto');
insert into General_User (user_id, username, firstName, lastName) values (28, 'fbothar', 'Fleur', 'Botha');
insert into General_User (user_id, username, firstName, lastName) values (29, 'lgrogors', 'Loleta', 'Grogor');
insert into General_User (user_id, username, firstName, lastName) values (30, 'kchomleyt', 'Kat', 'Chomley');
insert into General_User (user_id, username, firstName, lastName) values (31, 'jvenneru', 'Jordanna', 'Venner');
insert into General_User (user_id, username, firstName, lastName) values (32, 'urandv', 'Ugo', 'Rand');
insert into General_User (user_id, username, firstName, lastName) values (33, 'cpeploew', 'Codie', 'Peploe');
insert into General_User (user_id, username, firstName, lastName) values (34, 'mnewallx', 'Maible', 'Newall');
insert into General_User (user_id, username, firstName, lastName) values (35, 'lrochelly', 'Loren', 'Rochell');
insert into General_User (user_id, username, firstName, lastName) values (36, 'eomalleyz', 'Eimile', 'O''Malley');
insert into General_User (user_id, username, firstName, lastName) values (37, 'wpoytres10', 'Winnifred', 'Poytres');
insert into General_User (user_id, username, firstName, lastName) values (38, 'ablankley11', 'Armin', 'Blankley');
insert into General_User (user_id, username, firstName, lastName) values (39, 'lprentice12', 'Lilli', 'Prentice');
insert into General_User (user_id, username, firstName, lastName) values (40, 'bdebney13', 'Billy', 'Debney');

DROP TABLE IF EXISTS Client;
CREATE TABLE IF NOT EXISTS Client (
    client_id int PRIMARY KEY,
    company_name text,
    package_level int
);

INSERT INTO Client --alan
VALUES (1, 'Marcy`s', 1),
       (2, 'Opera', 1),
       (3, 'CData Co.', 2);

-- Mock data from Mockaroo
insert into Client (client_id, company_name, package_level) values (4, 'Tagtune', 2);
insert into Client (client_id, company_name, package_level) values (5, 'Twiyo', 1);
insert into Client (client_id, company_name, package_level) values (6, 'Wikibox', 3);
insert into Client (client_id, company_name, package_level) values (7, 'Jaxbean', 5);
insert into Client (client_id, company_name, package_level) values (8, 'Oloo', 4);
insert into Client (client_id, company_name, package_level) values (9, 'Topicblab', 2);
insert into Client (client_id, company_name, package_level) values (10, 'Tagopia', 2);
insert into Client (client_id, company_name, package_level) values (11, 'Katz', 3);
insert into Client (client_id, company_name, package_level) values (12, 'Meevee', 3);
insert into Client (client_id, company_name, package_level) values (13, 'Yambee', 5);
insert into Client (client_id, company_name, package_level) values (14, 'Eare', 3);
insert into Client (client_id, company_name, package_level) values (15, 'Oyoyo', 3);
insert into Client (client_id, company_name, package_level) values (16, 'Dabjam', 5);
insert into Client (client_id, company_name, package_level) values (17, 'Livetube', 1);
insert into Client (client_id, company_name, package_level) values (18, 'Browsetype', 2);
insert into Client (client_id, company_name, package_level) values (19, 'Gigazoom', 2);
insert into Client (client_id, company_name, package_level) values (20, 'Trudoo', 5);
insert into Client (client_id, company_name, package_level) values (21, 'Gabcube', 1);
insert into Client (client_id, company_name, package_level) values (22, 'Abata', 1);
insert into Client (client_id, company_name, package_level) values (23, 'Dabtype', 4);
insert into Client (client_id, company_name, package_level) values (24, 'Babbleblab', 4);
insert into Client (client_id, company_name, package_level) values (25, 'Voonder', 4);
insert into Client (client_id, company_name, package_level) values (26, 'Eayo', 3);
insert into Client (client_id, company_name, package_level) values (27, 'Blogtag', 5);
insert into Client (client_id, company_name, package_level) values (28, 'Midel', 4);
insert into Client (client_id, company_name, package_level) values (29, 'Oyondu', 3);
insert into Client (client_id, company_name, package_level) values (30, 'Kazu', 5);
insert into Client (client_id, company_name, package_level) values (31, 'Skilith', 5);
insert into Client (client_id, company_name, package_level) values (32, 'JumpXS', 1);
insert into Client (client_id, company_name, package_level) values (33, 'Meeveo', 1);
insert into Client (client_id, company_name, package_level) values (34, 'Zooxo', 5);
insert into Client (client_id, company_name, package_level) values (35, 'Blogpad', 2);
insert into Client (client_id, company_name, package_level) values (36, 'Voonyx', 1);
insert into Client (client_id, company_name, package_level) values (37, 'Livetube', 4);
insert into Client (client_id, company_name, package_level) values (38, 'Agivu', 1);
insert into Client (client_id, company_name, package_level) values (39, 'Livetube', 5);
insert into Client (client_id, company_name, package_level) values (40, 'Trupe', 3);


DROP TABLE IF EXISTS Fashionista;
CREATE TABLE IF NOT EXISTS Fashionista (
  fash_user int PRIMARY KEY,
  num_outfits_created int
);

INSERT INTO Fashionista
VALUES (1, 0),
       (2, 0);

-- Mock data from Mockaroo
insert into Fashionista (fash_user, num_outfits_created) values (3, 72);
insert into Fashionista (fash_user, num_outfits_created) values (4, 56);
insert into Fashionista (fash_user, num_outfits_created) values (5, 66);
insert into Fashionista (fash_user, num_outfits_created) values (6, 12);
insert into Fashionista (fash_user, num_outfits_created) values (7, 44);
insert into Fashionista (fash_user, num_outfits_created) values (8, 29);
insert into Fashionista (fash_user, num_outfits_created) values (9, 1);
insert into Fashionista (fash_user, num_outfits_created) values (10, 37);
insert into Fashionista (fash_user, num_outfits_created) values (11, 32);
insert into Fashionista (fash_user, num_outfits_created) values (12, 11);
insert into Fashionista (fash_user, num_outfits_created) values (13, 57);
insert into Fashionista (fash_user, num_outfits_created) values (14, 68);
insert into Fashionista (fash_user, num_outfits_created) values (15, 79);
insert into Fashionista (fash_user, num_outfits_created) values (16, 36);
insert into Fashionista (fash_user, num_outfits_created) values (17, 59);
insert into Fashionista (fash_user, num_outfits_created) values (18, 39);
insert into Fashionista (fash_user, num_outfits_created) values (19, 47);
insert into Fashionista (fash_user, num_outfits_created) values (20, 26);
insert into Fashionista (fash_user, num_outfits_created) values (21, 89);
insert into Fashionista (fash_user, num_outfits_created) values (22, 84);
insert into Fashionista (fash_user, num_outfits_created) values (23, 54);
insert into Fashionista (fash_user, num_outfits_created) values (24, 30);
insert into Fashionista (fash_user, num_outfits_created) values (25, 29);
insert into Fashionista (fash_user, num_outfits_created) values (26, 63);
insert into Fashionista (fash_user, num_outfits_created) values (27, 96);
insert into Fashionista (fash_user, num_outfits_created) values (28, 22);
insert into Fashionista (fash_user, num_outfits_created) values (29, 36);
insert into Fashionista (fash_user, num_outfits_created) values (30, 5);
insert into Fashionista (fash_user, num_outfits_created) values (31, 71);
insert into Fashionista (fash_user, num_outfits_created) values (32, 2);
insert into Fashionista (fash_user, num_outfits_created) values (33, 48);
insert into Fashionista (fash_user, num_outfits_created) values (34, 13);
insert into Fashionista (fash_user, num_outfits_created) values (35, 62);
insert into Fashionista (fash_user, num_outfits_created) values (36, 82);
insert into Fashionista (fash_user, num_outfits_created) values (37, 26);
insert into Fashionista (fash_user, num_outfits_created) values (38, 62);
insert into Fashionista (fash_user, num_outfits_created) values (39, 18);
insert into Fashionista (fash_user, num_outfits_created) values (40, 95);

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

INSERT INTO Clothing --grace
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

INSERT INTO Outfits --grace
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

INSERT INTO Pieces --grace
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

INSERT INTO Closet --alan
VALUES (1, 1, 1, 1),
       (2, 1, NULL, 2),
       (3, 1, NULL, 3);

-- Mock data from Mockaroo
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (4, 12, 72, 24);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (5, 38, 39, 4);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (6, 18, 17, 10);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (7, 34, 24, 20);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (8, 14, 45, 17);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (9, 23, 9, 12);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (10, 6, 70, 31);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (11, 6, 45, 9);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (12, 26, 19, 5);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (13, 15, 42, 36);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (14, 40, 28, 5);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (15, 39, 70, 2);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (16, 40, 47, 28);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (17, 1, 39, 19);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (18, 21, 41, 38);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (19, 6, 13, 22);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (20, 20, 54, 38);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (21, 6, 56, 6);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (22, 2, 56, 13);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (23, 35, 64, 15);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (24, 2, 66, 36);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (25, 13, 57, 40);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (26, 15, 67, 3);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (27, 18, 42, 22);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (28, 24, 52, 10);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (29, 20, 28, 35);
insert into Closet (closet_id, fast_user, clothing_id， user_id) values (30， 38， 2， 21);
insert into Closet (closet_id， fast_user， clothing_id， user_id) values (31， 14， 2， 32);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (32, 5, 51, 40);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (33, 30, 58, 15);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (34, 10, 1, 32);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (35, 16, 54, 36);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (36, 25, 47, 34);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (37, 8, 26, 19);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (38, 11, 60, 25);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (39, 33, 19, 4);
insert into Closet (closet_id, fast_user, clothing_id, user_id) values (40, 31, 3, 21);

DROP TABLE IF EXISTS User_Data_Pack;
CREATE TABLE IF NOT EXISTS User_Data_Pack (
    data_pack_id int PRIMARY KEY,
    name text,
    num_user_data int,
    price decimal(9,2)
);

INSERT INTO User_Data_Pack --grace
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

INSERT INTO User_Profile (join_date, num_clothing, num_outfits, user_id) --alan
VALUES ('2024-01-01', 3,
        2, 1),
        ('2024-12-1', 0,
         0, 2);

-- Mock data from Mockaroo
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-08-15', 13, 22, 30);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-08-27', 23, 11, 13);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-03-04', 17, 24, 34);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-07-29', 1, 10, 8);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-04-11', 23, 8, 30);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-05-29', 1, 19, 9);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-01-21', 48, 10, 29);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-09-13', 52, 3, 15);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-11-24', 22, 6, 10);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-01-28', 51, 18, 24);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-05-18', 6, 14, 6);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-04-11', 40, 22, 39);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-08-21', 2, 5, 23);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-07-11', 52, 5, 36);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-03-12', 51, 5, 29);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-01-10', 36, 4, 3);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-02-17', 51, 3, 27);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-07-02', 43, 9, 32);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-07-28', 38, 10, 16);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-06-26', 38, 3, 26);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-11-02', 49, 14, 12);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-09-15', 23, 4, 12);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-08-09', 19, 2, 14);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-11-25', 30, 6, 31);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-04-01', 51, 15, 8);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-11-27', 24, 15, 39);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-02-22', 42, 22, 18);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-08-23', 13, 1, 40);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-03-03', 7, 23, 9);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-03-20', 5, 7, 34);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-07-26', 5, 7, 36);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-03-18', 16, 23, 29);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-04-19', 23, 14, 33);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-08-07', 8, 5, 39);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2025-06-06', 42, 21, 28);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-02-04', 40, 9, 9);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2026-04-19', 23, 19, 7);
insert into User_Profile (join_date, num_clothing, num_outfits, user_id) values ('2024-09-16', 31, 10, 30);


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

INSERT INTO Data_Receipt --alan
VALUES (1, 1),
       (1,2);

-- Mock data from Mockaroo
insert into Data_Receipt (client_id, data_pack_id) values (38, 35);
insert into Data_Receipt (client_id, data_pack_id) values (18, 263);
insert into Data_Receipt (client_id, data_pack_id) values (37, 73);
insert into Data_Receipt (client_id, data_pack_id) values (11, 196);
insert into Data_Receipt (client_id, data_pack_id) values (33, 49);
insert into Data_Receipt (client_id, data_pack_id) values (26, 218);
insert into Data_Receipt (client_id, data_pack_id) values (23, 249);
insert into Data_Receipt (client_id, data_pack_id) values (5, 302);
insert into Data_Receipt (client_id, data_pack_id) values (18, 219);
insert into Data_Receipt (client_id, data_pack_id) values (8, 20);
insert into Data_Receipt (client_id, data_pack_id) values (9, 187);
insert into Data_Receipt (client_id, data_pack_id) values (23, 186);
insert into Data_Receipt (client_id, data_pack_id) values (3, 34);
insert into Data_Receipt (client_id, data_pack_id) values (12, 253);
insert into Data_Receipt (client_id, data_pack_id) values (18, 276);
insert into Data_Receipt (client_id, data_pack_id) values (12, 20);
insert into Data_Receipt (client_id, data_pack_id) values (35, 52);
insert into Data_Receipt (client_id, data_pack_id) values (2, 248);
insert into Data_Receipt (client_id, data_pack_id) values (1, 143);
insert into Data_Receipt (client_id, data_pack_id) values (40, 121);
insert into Data_Receipt (client_id, data_pack_id) values (5, 324);
insert into Data_Receipt (client_id, data_pack_id) values (31, 174);
insert into Data_Receipt (client_id, data_pack_id) values (37, 186);
insert into Data_Receipt (client_id, data_pack_id) values (14, 158);
insert into Data_Receipt (client_id, data_pack_id) values (26, 165);
insert into Data_Receipt (client_id, data_pack_id) values (13, 14);
insert into Data_Receipt (client_id, data_pack_id) values (9, 39);
insert into Data_Receipt (client_id, data_pack_id) values (22, 26);
insert into Data_Receipt (client_id, data_pack_id) values (33, 177);
insert into Data_Receipt (client_id, data_pack_id) values (38, 283);
insert into Data_Receipt (client_id, data_pack_id) values (31, 101);
insert into Data_Receipt (client_id, data_pack_id) values (20, 83);
insert into Data_Receipt (client_id, data_pack_id) values (19, 290);
insert into Data_Receipt (client_id, data_pack_id) values (4, 211);
insert into Data_Receipt (client_id, data_pack_id) values (1, 76);
insert into Data_Receipt (client_id, data_pack_id) values (9, 4);
insert into Data_Receipt (client_id, data_pack_id) values (8, 67);
insert into Data_Receipt (client_id, data_pack_id) values (40, 84);
insert into Data_Receipt (client_id, data_pack_id) values (14, 314);
insert into Data_Receipt (client_id, data_pack_id) values (1, 18);

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

INSERT INTO Issue --grace
VALUES (193, 'ACCOUNT', 'my account email wont update',
        0, 1, NULL),
        (310, 'APP', 'the app wont load for me',
         0, NULL, 1);

