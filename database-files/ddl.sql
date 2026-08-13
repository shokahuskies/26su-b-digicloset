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
VALUES (1, 'striped t-shirt', 'Never32', 'T SHIRT', LOAD_FILE('/'), 1),
       (2, 'buttoned pants', 'BrundyNashville', 'SHORTS', LOAD_FILE('/'), 1),
       (3, 'thick leather jacket', 'Marcy`s', 'JACKET', LOAD_FILE('/'), 1),
    -- User 2: 0 items

    -- User 3: 2 items
    (4, 'dark blue jeans', 'Levi`s', 'PANTS', LOAD_FILE('/'), 3),
    (5, 'gray crewneck sweater', 'Northline', 'SWEATER', LOAD_FILE('/'), 3),

    -- User 4: 4 items
    (6, 'white graphic t-shirt', 'Urban Thread', 'T SHIRT', LOAD_FILE('/'), 4),
    (7, 'black slim jeans', 'StreetMode', 'PANTS', LOAD_FILE('/'), 4),
    (8, 'olive green bomber jacket', 'Apex Apparel', 'JACKET', LOAD_FILE('/'), 4),
    (9, 'gray pullover hoodie', 'Campus Club', 'HOODIE', LOAD_FILE('/'), 4),

    -- User 5: 1 item
    (10, 'floral summer dress', 'Rose & Co', 'DRESS', LOAD_FILE('/'), 5),

    -- User 6: 0 items

    -- User 7: 3 items
    (11, 'black polo shirt', 'Fairway Classics', 'SHIRT', LOAD_FILE('/'), 7),
    (12, 'beige chinos', 'Oak Street', 'PANTS', LOAD_FILE('/'), 7),
    (13, 'navy blue jacket', 'Harbor Outfitters', 'JACKET', LOAD_FILE('/'), 7),

    -- User 8: 0 items

    -- User 9: 4 items
    (14, 'black tank top', 'FlexFit', 'TANK TOP', LOAD_FILE('/'), 9),
    (15, 'gray athletic leggings', 'MoveWell', 'LEGGINGS', LOAD_FILE('/'), 9),
    (16, 'black zip-up hoodie', 'Summit Gear', 'HOODIE', LOAD_FILE('/'), 9),
    (17, 'white athletic t-shirt', 'FlexFit', 'T SHIRT', LOAD_FILE('/'), 9),

    -- User 10: 1 item
    (18, 'pleated black skirt', 'Modern Muse', 'SKIRT', LOAD_FILE('/'), 10),

    -- User 11: 0 items

    -- User 12: 2 items
    (19, 'light blue button-up shirt', 'Coastal Basics', 'SHIRT', LOAD_FILE('/'), 12),
    (20, 'khaki pants', 'Oak Street', 'PANTS', LOAD_FILE('/'), 12),

    -- User 13: 5 items
    (21, 'plain black t-shirt', 'Cotton House', 'T SHIRT', LOAD_FILE('/'), 13),
    (22, 'blue straight-leg jeans', 'West Coast Denim', 'PANTS', LOAD_FILE('/'), 13),
    (23, 'cream cardigan', 'Willow & Thread', 'SWEATER', LOAD_FILE('/'), 13),
    (24, 'brown corduroy jacket', 'Heritage Wear', 'JACKET', LOAD_FILE('/'), 13),
    (25, 'black denim shorts', 'West Coast Denim', 'SHORTS', LOAD_FILE('/'), 13),

    -- User 14: 0 items

    -- User 15: 2 items
    (26, 'red flannel shirt', 'Timber Road', 'SHIRT', LOAD_FILE('/'), 15),
    (27, 'dark gray cargo pants', 'TrailWorks', 'PANTS', LOAD_FILE('/'), 15),

    -- User 16: 3 items
    (28, 'black midi dress', 'Velvet Lane', 'DRESS', LOAD_FILE('/'), 16),
    (29, 'cream knit cardigan', 'Luxe Knit', 'SWEATER', LOAD_FILE('/'), 16),
    (30, 'black leather jacket', 'Midnight Label', 'JACKET', LOAD_FILE('/'), 16),

    -- User 17: 0 items

    -- User 18: 1 item
    (31, 'vintage band t-shirt', 'Rockline', 'T SHIRT', LOAD_FILE('/'), 18),

    -- User 19: 4 items
    (32, 'navy crewneck sweatshirt', 'Summit Gear', 'SWEATSHIRT', LOAD_FILE('/'), 19),
    (33, 'light wash jeans', 'Everyday Denim', 'PANTS', LOAD_FILE('/'), 19),
    (34, 'white long sleeve shirt', 'Cotton House', 'SHIRT', LOAD_FILE('/'), 19),
    (35, 'black puffer jacket', 'EverPeak', 'JACKET', LOAD_FILE('/'), 19),

    -- User 20: 0 items

    -- User 21: 2 items
    (36, 'ribbed beige top', 'Modern Muse', 'TOP', LOAD_FILE('/'), 21),
    (37, 'wide-leg black trousers', 'City Form', 'PANTS', LOAD_FILE('/'), 21),

    -- User 22: 3 items
    (38, 'striped polo shirt', 'Fairway Classics', 'SHIRT', LOAD_FILE('/'), 22),
    (39, 'navy chino shorts', 'Harbor Outfitters', 'SHORTS', LOAD_FILE('/'), 22),
    (40, 'lightweight windbreaker', 'StormPeak', 'JACKET', LOAD_FILE('/'), 22),

    -- User 23: 0 items

    -- User 24: 5 items
    (41, 'oversized gray t-shirt', 'Urban Thread', 'T SHIRT', LOAD_FILE('/'), 24),
    (42, 'black cargo pants', 'StreetMode', 'PANTS', LOAD_FILE('/'), 24),
    (43, 'cream oversized hoodie', 'Campus Club', 'HOODIE', LOAD_FILE('/'), 24),
    (44, 'blue denim jacket', 'Blue Harbor', 'JACKET', LOAD_FILE('/'), 24),
    (45, 'olive cargo shorts', 'TrailWorks', 'SHORTS', LOAD_FILE('/'), 24),

    -- User 25: 1 item
    (46, 'black fitted dress', 'Velvet Lane', 'DRESS', LOAD_FILE('/'), 25),

    -- User 26: 0 items

    -- User 27: 3 items
    (47, 'cream polo shirt', 'Coastal Basics', 'SHIRT', LOAD_FILE('/'), 27),
    (48, 'dark wash jeans', 'Levi`s', 'PANTS', LOAD_FILE('/'), 27),
    (49, 'gray zip-up jacket', 'Northline', 'JACKET', LOAD_FILE('/'), 27),

    -- User 28: 2 items
    (50, 'green graphic t-shirt', 'StreetMode', 'T SHIRT', LOAD_FILE('/'), 28),
    (51, 'tan cargo pants', 'TrailWorks', 'PANTS', LOAD_FILE('/'), 28),

    -- User 29: 0 items

    -- User 30: 4 items
    (52, 'white cropped t-shirt', 'Modern Muse', 'T SHIRT', LOAD_FILE('/'), 30),
    (53, 'high-waisted blue jeans', 'West Coast Denim', 'PANTS', LOAD_FILE('/'), 30),
    (54, 'black leather jacket', 'Midnight Label', 'JACKET', LOAD_FILE('/'), 30),
    (55, 'gray knit sweater', 'Luxe Knit', 'SWEATER', LOAD_FILE('/'), 30),

    -- User 31: 0 items
    -- User 32: 0 items

    -- User 33: 2 items
    (56, 'navy button-up shirt', 'Harbor Outfitters', 'SHIRT', LOAD_FILE('/'), 33),
    (57, 'gray chinos', 'Oak Street', 'PANTS', LOAD_FILE('/'), 33),

    -- User 34: 1 item
    (58, 'yellow summer dress', 'Rose & Co', 'DRESS', LOAD_FILE('/'), 34),

    -- User 35: 3 items
    (59, 'black oversized t-shirt', 'Cotton House', 'T SHIRT', LOAD_FILE('/'), 35),
    (60, 'blue relaxed jeans', 'Everyday Denim', 'PANTS', LOAD_FILE('/'), 35),
    (61, 'brown bomber jacket', 'Heritage Wear', 'JACKET', LOAD_FILE('/'), 35),

    -- User 36: 0 items

    -- User 37: 2 items
    (62, 'burgundy sweater', 'Northline', 'SWEATER', LOAD_FILE('/'), 37),
    (63, 'black straight-leg pants', 'City Form', 'PANTS', LOAD_FILE('/'), 37),

    -- User 38: 0 items

    -- User 39: 4 items
    (64, 'navy t-shirt', 'Cotton House', 'T SHIRT', LOAD_FILE('/'), 39),
    (65, 'khaki shorts', 'TrailWorks', 'SHORTS', LOAD_FILE('/'), 39),
    (66, 'light gray hoodie', 'Campus Club', 'HOODIE', LOAD_FILE('/'), 39),
    (67, 'blue denim jacket', 'Blue Harbor', 'JACKET', LOAD_FILE('/'), 39),

    -- User 40: 1 item
    (68, 'black pleated skirt', 'Modern Muse', 'SKIRT', LOAD_FILE('/'), 40),

    -- User 41: 0 items

    -- User 42: 3 items
    (69, 'cream t-shirt', 'Cotton House', 'T SHIRT', LOAD_FILE('/'), 42),
    (70, 'dark blue jeans', 'Levi`s', 'PANTS', LOAD_FILE('/'), 42),
    (71, 'olive green jacket', 'Apex Apparel', 'JACKET', LOAD_FILE('/'), 42),

    -- User 43: 2 items
    (72, 'white button-up shirt', 'Coastal Basics', 'SHIRT', LOAD_FILE('/'), 43),
    (73, 'black trousers', 'City Form', 'PANTS', LOAD_FILE('/'), 43);

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
VALUES (1, 'SUMMER', '2026-08-11', 'CASUAL', '2026-08-12', 1, 1, 1, 1),
        (21, 'FALL', '2025-01-01', 'CHIQUE', NULL, 0, 0,1, NULL),
    -- User 3
    (2, 'FALL', '2026-08-01', 'CASUAL', '2026-08-09', 2, 6, 3, NULL),
    (3, 'WINTER', '2026-07-15', 'CASUAL', '2026-08-02', 1, 4, 3, NULL),

    -- User 4
    (4, 'FALL', '2026-07-20', 'CASUAL', '2026-08-10', 3, 8, 4, NULL),
    (5, 'SPRING', '2026-06-12', 'CASUAL', '2026-07-28', 1, 3, 4, NULL),
    (6, 'FALL', '2026-07-05', 'CASUAL', NULL, 0, 0, 4, NULL),

    -- User 7
    (7, 'SUMMER', '2026-07-18', 'CASUAL', '2026-08-06', 2, 5, 7, NULL),
    (8, 'FALL', '2026-06-25', 'BUSINESS CASUAL', '2026-07-31', 1, 3, 7, NULL),

    -- User 9
    (9, 'SUMMER', '2026-07-01', 'CASUAL', '2026-08-04', 2, 7, 9, NULL),
    (10, 'FALL', '2026-06-18', 'CASUAL', '2026-07-25', 1, 4, 9, NULL),
    (11, 'SUMMER', '2026-07-22', 'ATHLETIC', '2026-08-11', 4, 9, 9, NULL),

    -- User 12
    (12, 'FALL', '2026-07-10', 'CASUAL', NULL, 0, 0, 12, NULL),
    (13, 'FALL', '2026-06-30', 'BUSINESS CASUAL', '2026-08-01', 2, 5, 12, NULL),

    -- User 13
    (14, 'FALL', '2026-07-02', 'CASUAL', '2026-08-08', 2, 6, 13, NULL),
    (15, 'WINTER', '2026-05-14', 'CASUAL', '2026-07-20', 1, 3, 13, NULL),
    (16, 'SPRING', '2026-04-20', 'CASUAL', '2026-06-15', 1, 2, 13, NULL),
    (17, 'FALL', '2026-07-08', 'CASUAL', '2026-08-05', 2, 4, 13, NULL),

    -- User 15
    (18, 'SUMMER', '2026-07-12', 'CASUAL', '2026-08-07', 2, 5, 15, NULL),
    (19, 'FALL', '2026-06-21', 'CASUAL', '2026-07-30', 1, 3, 15, NULL),

    -- User 16
    (20, 'FALL', '2026-07-03', 'CASUAL', '2026-08-03', 2, 6, 16, NULL),
    (22, 'WINTER', '2026-05-29', 'CHIQUE', '2026-07-18', 1, 2, 16, NULL),

    -- User 19
    (23, 'SUMMER', '2026-07-25', 'CASUAL', '2026-08-12', 3, 8, 19, NULL),
    (24, 'FALL', '2026-06-10', 'CASUAL', '2026-07-29', 2, 5, 19, NULL),
    (25, 'WINTER', '2026-05-20', 'CASUAL', NULL, 0, 0, 19, NULL),

    -- User 21
    (26, 'SPRING', '2026-06-05', 'BUSINESS CASUAL', '2026-07-22', 1, 3, 21, NULL),

    -- User 22
    (27, 'SUMMER', '2026-07-14', 'CASUAL', '2026-08-09', 2, 5, 22, NULL),
    (28, 'SPRING', '2026-06-17', 'CASUAL', '2026-07-27', 1, 2, 22, NULL),

    -- User 24
    (29, 'FALL', '2026-07-06', 'CASUAL', '2026-08-01', 2, 4, 24, NULL),
    (30, 'SUMMER', '2026-06-28', 'CASUAL', '2026-08-10', 3, 7, 24, NULL),
    (31, 'FALL', '2026-07-19', 'CASUAL', '2026-08-06', 1, 3, 24, NULL),
    (32, 'WINTER', '2026-05-25', 'CASUAL', '2026-07-15', 1, 2, 24, NULL),

    -- User 27
    (33, 'SUMMER', '2026-07-30', 'CASUAL', '2026-08-07', 2, 4, 27, NULL),
    (34, 'FALL', '2026-06-24', 'BUSINESS CASUAL', '2026-07-26', 1, 2, 27, NULL),

    -- User 28
    (35, 'SUMMER', '2026-07-16', 'CASUAL', '2026-08-08', 2, 5, 28, NULL),
    (36, 'FALL', '2026-06-15', 'CASUAL', '2026-07-23', 1, 2, 28, NULL),

    -- User 30
    (37, 'FALL', '2026-07-11', 'CASUAL', '2026-08-04', 2, 5, 30, NULL),
    (38, 'WINTER', '2026-05-30', 'CASUAL', '2026-07-19', 1, 3, 30, NULL),
    (39, 'SPRING', '2026-06-08', 'CHIQUE', '2026-07-31', 1, 2, 30, NULL),

    -- User 33
    (40, 'FALL', '2026-07-04', 'BUSINESS CASUAL', '2026-08-02', 2, 4, 33, NULL),

    -- User 35
    (41, 'SUMMER', '2026-07-23', 'CASUAL', '2026-08-07', 2, 4, 35, NULL),
    (42, 'FALL', '2026-06-27', 'CASUAL', '2026-07-28', 1, 3, 35, NULL),

    -- User 37
    (43, 'FALL', '2026-07-09', 'CASUAL', '2026-08-05', 1, 3, 37, NULL),

    -- User 39
    (44, 'SUMMER', '2026-07-27', 'CASUAL', '2026-08-09', 2, 4, 39, NULL),
    (45, 'FALL', '2026-06-19', 'CASUAL', '2026-07-30', 1, 2, 39, NULL),

    -- User 42
    (46, 'SUMMER', '2026-07-31', 'CASUAL', '2026-08-12', 2, 5, 42, NULL),
    (47, 'FALL', '2026-06-23', 'CASUAL', '2026-07-24', 1, 3, 42, NULL),

    -- User 43
    (48, 'FALL', '2026-07-13', 'BUSINESS CASUAL', '2026-08-06', 2, 4, 43, NULL);

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
       (2, 21),
    -- User 1
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 21),
    (2, 21),

    -- User 3
    (4, 2),
    (5, 2),
    (4, 3),
    (5, 3),

    -- User 4
    (6, 4),
    (7, 4),
    (8, 4),
    (6, 5),
    (7, 5),
    (6, 6),
    (7, 6),
    (8, 6),

    -- User 7
    (11, 7),
    (12, 7),
    (11, 8),
    (12, 8),
    (13, 8),

    -- User 9
    (14, 9),
    (15, 9),
    (16, 9),
    (14, 10),
    (17, 10),
    (14, 11),
    (15, 11),
    (16, 11),
    (17, 11),

    -- User 12
    (19, 12),
    (20, 12),
    (19, 13),
    (20, 13),

    -- User 13
    (21, 14),
    (22, 14),
    (23, 14),
    (21, 15),
    (22, 15),
    (21, 16),
    (23, 16),
    (24, 16),
    (21, 17),
    (22, 17),
    (24, 17),

    -- User 15
    (26, 18),
    (27, 18),
    (26, 19),
    (27, 19),

    -- User 16
    (28, 20),
    (29, 20),
    (28, 22),
    (29, 22),
    (30, 22),

    -- User 19
    (32, 23),
    (33, 23),
    (34, 23),
    (32, 24),
    (33, 24),
    (35, 24),
    (32, 25),
    (33, 25),

    -- User 21
    (36, 26),
    (37, 26),

    -- User 22
    (38, 27),
    (39, 27),
    (38, 28),
    (40, 28),

    -- User 24
    (41, 29),
    (42, 29),
    (43, 29),
    (41, 30),
    (42, 30),
    (44, 30),
    (41, 31),
    (42, 31),
    (45, 31),
    (44, 32),
    (45, 32),

    -- User 27
    (47, 33),
    (48, 33),
    (47, 34),
    (48, 34),

    -- User 28
    (50, 35),
    (51, 35),
    (50, 36),
    (51, 36),

    -- User 30
    (52, 37),
    (53, 37),
    (54, 37),
    (52, 38),
    (53, 38),
    (55, 38),
    (52, 39),
    (54, 39),

    -- User 33
    (56, 40),
    (57, 40),

    -- User 35
    (59, 41),
    (60, 41),
    (61, 41),
    (59, 42),
    (60, 42),

    -- User 37
    (62, 43),
    (63, 43),

    -- User 39
    (64, 44),
    (65, 44),
    (66, 44),
    (64, 45),
    (65, 45),
    (67, 45),

    -- User 42
    (69, 46),
    (70, 46),
    (71, 46),
    (69, 47),
    (70, 47),

    -- User 43
    (72, 48),
    (73, 48);

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

INSERT INTO User_Data_Pack
VALUES
    (1, 'NUM OUTFITS INFO', 22, 1000.55),
    (2, 'NUM CLOTHES', 28, 50000.37),
    (3, 'NUM USER PROFILES', 43, 7500.00),
    (4, 'NUM USERS WITH 2+ CLOTHES', 22, 6250.75),
    (5, 'NUM USERS WITH 3+ CLOTHES', 14, 4800.50),
    (6, 'NUM USERS WITH 4+ CLOTHES', 7, 3250.25),
    (7, 'NUM USERS WITH 5 CLOTHES', 2, 1800.00),
    (8, 'NUM USERS WITH 1 CLOTHING ITEM', 6, 2100.40),
    (9, 'NUM USERS WITH NO CLOTHES', 15, 1500.35),
    (10, 'NUM USERS WITH NO OUTFITS', 21, 1750.60),
    (11, 'NUM SUMMER OUTFITS', 13, 2850.45),
    (12, 'NUM FALL OUTFITS', 24, 4200.80),
    (13, 'NUM WINTER OUTFITS', 6, 1950.30),
    (14, 'NUM SPRING OUTFITS', 5, 1650.75),
    (15, 'NUM CASUAL OUTFITS', 19, 3500.50),
    (16, 'NUM BUSINESS CASUAL OUTFITS', 6, 2750.65),
    (17, 'NUM ATHLETIC OUTFITS', 1, 950.25),
    (18, 'NUM CHIQUE OUTFITS', 3, 1250.40),
    (19, 'NUM T SHIRTS', 11, 3850.55),
    (20, 'NUM PANTS', 17, 5200.75),
    (21, 'NUM JACKETS', 13, 4650.35),
    (22, 'NUM SHIRTS', 8, 3100.60),
    (23, 'NUM SHORTS', 5, 2250.45),
    (24, 'NUM SWEATERS', 5, 2950.80),
    (25, 'NUM HOODIES', 4, 2400.25),
    (26, 'NUM DRESSES', 4, 3400.50),
    (27, 'NUM SKIRTS', 2, 1850.75),
    (28, 'NUM TANK TOPS', 1, 1100.40),
    (29, 'NUM LEGGINGS', 1, 1050.65),
    (30, 'NUM SWEATSHIRTS', 1, 1350.30);

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
VALUES
    -- User 1
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 11),
    (1, 12),
    (1, 15),
    (1, 19),
    (1, 20),
    (1, 21),
    (1, 23),

    -- User 2
    (2, 3),
    (2, 9),
    (2, 10),

    -- User 3
    (3, 1),
    (3, 2),
    (3, 3),
    (3, 4),
    (3, 20),
    (3, 24),
    (3, 12),
    (3, 13),

    -- User 4
    (4, 1),
    (4, 2),
    (4, 3),
    (4, 4),
    (4, 5),
    (4, 6),
    (4, 11),
    (4, 12),
    (4, 15),
    (4, 19),
    (4, 20),
    (4, 21),
    (4, 25),

    -- User 5
    (5, 2),
    (5, 3),
    (5, 8),
    (5, 26),

    -- User 6
    (6, 3),
    (6, 9),
    (6, 10),

    -- User 7
    (7, 1),
    (7, 2),
    (7, 3),
    (7, 4),
    (7, 5),
    (7, 11),
    (7, 12),
    (7, 15),
    (7, 20),
    (7, 21),
    (7, 22),

    -- User 8
    (8, 3),
    (8, 9),
    (8, 10),

    -- User 9
    (9, 1),
    (9, 2),
    (9, 3),
    (9, 4),
    (9, 5),
    (9, 6),
    (9, 11),
    (9, 12),
    (9, 15),
    (9, 17),
    (9, 19),
    (9, 25),
    (9, 28),
    (9, 29),

    -- User 10
    (10, 2),
    (10, 3),
    (10, 8),
    (10, 27),

    -- User 11
    (11, 3),
    (11, 9),
    (11, 10),

    -- User 12
    (12, 1),
    (12, 2),
    (12, 3),
    (12, 4),
    (12, 20),
    (12, 22),
    (12, 12),
    (12, 16),

    -- User 13
    (13, 1),
    (13, 2),
    (13, 3),
    (13, 4),
    (13, 5),
    (13, 6),
    (13, 7),
    (13, 11),
    (13, 12),
    (13, 13),
    (13, 14),
    (13, 15),
    (13, 19),
    (13, 20),
    (13, 21),
    (13, 23),
    (13, 24),

    -- User 14
    (14, 3),
    (14, 9),
    (14, 10),

    -- User 15
    (15, 1),
    (15, 2),
    (15, 3),
    (15, 4),
    (15, 5),
    (15, 12),
    (15, 15),
    (15, 20),
    (15, 22),

    -- User 16
    (16, 1),
    (16, 2),
    (16, 3),
    (16, 4),
    (16, 5),
    (16, 11),
    (16, 12),
    (16, 13),
    (16, 15),
    (16, 18),
    (16, 21),
    (16, 24),
    (16, 26),

    -- User 17
    (17, 3),
    (17, 9),
    (17, 10),

    -- User 18
    (18, 2),
    (18, 3),
    (18, 8),
    (18, 10),
    (18, 19),

    -- User 19
    (19, 1),
    (19, 2),
    (19, 3),
    (19, 4),
    (19, 5),
    (19, 6),
    (19, 11),
    (19, 12),
    (19, 13),
    (19, 15),
    (19, 20),
    (19, 21),
    (19, 22),
    (19, 24),
    (19, 25),

    -- User 20
    (20, 3),
    (20, 9),
    (20, 10),

    -- User 21
    (21, 1),
    (21, 2),
    (21, 3),
    (21, 4),
    (21, 20),
    (21, 16),

    -- User 22
    (22, 1),
    (22, 2),
    (22, 3),
    (22, 4),
    (22, 5),
    (22, 11),
    (22, 14),
    (22, 15),
    (22, 22),
    (22, 23),
    (22, 21),

    -- User 23
    (23, 3),
    (23, 9),
    (23, 10),

    -- User 24
    (24, 1),
    (24, 2),
    (24, 3),
    (24, 4),
    (24, 5),
    (24, 6),
    (24, 7),
    (24, 11),
    (24, 12),
    (24, 13),
    (24, 15),
    (24, 19),
    (24, 20),
    (24, 21),
    (24, 23),
    (24, 25),

    -- User 25
    (25, 2),
    (25, 3),
    (25, 8),
    (25, 10),
    (25, 26),

    -- User 26
    (26, 3),
    (26, 9),
    (26, 10),

    -- User 27
    (27, 1),
    (27, 2),
    (27, 3),
    (27, 4),
    (27, 5),
    (27, 11),
    (27, 12),
    (27, 15),
    (27, 20),
    (27, 21),
    (27, 22),

    -- User 28
    (28, 1),
    (28, 2),
    (28, 3),
    (28, 4),
    (28, 11),
    (28, 12),
    (28, 15),
    (28, 19),
    (28, 20),

    -- User 29
    (29, 3),
    (29, 9),
    (29, 10),

    -- User 30
    (30, 1),
    (30, 2),
    (30, 3),
    (30, 4),
    (30, 5),
    (30, 6),
    (30, 11),
    (30, 12),
    (30, 13),
    (30, 14),
    (30, 15),
    (30, 18),
    (30, 19),
    (30, 20),
    (30, 21),
    (30, 24),

    -- User 31
    (31, 3),
    (31, 9),
    (31, 10),

    -- User 32
    (32, 3),
    (32, 9),
    (32, 10),

    -- User 33
    (33, 1),
    (33, 2),
    (33, 3),
    (33, 4),
    (33, 20),
    (33, 22),
    (33, 12),
    (33, 16),

    -- User 34
    (34, 2),
    (34, 3),
    (34, 8),
    (34, 10),
    (34, 26),

    -- User 35
    (35, 1),
    (35, 2),
    (35, 3),
    (35, 4),
    (35, 5),
    (35, 11),
    (35, 12),
    (35, 15),
    (35, 19),
    (35, 20),
    (35, 21),

    -- User 36
    (36, 3),
    (36, 9),
    (36, 10),

    -- User 37
    (37, 1),
    (37, 2),
    (37, 3),
    (37, 4),
    (37, 20),
    (37, 24),
    (37, 12),
    (37, 15),

    -- User 38
    (38, 3),
    (38, 9),
    (38, 10),

    -- User 39
    (39, 1),
    (39, 2),
    (39, 3),
    (39, 4),
    (39, 5),
    (39, 6),
    (39, 11),
    (39, 12),
    (39, 15),
    (39, 19),
    (39, 20),
    (39, 23),
    (39, 25),

    -- User 40
    (40, 2),
    (40, 3),
    (40, 8),
    (40, 10),
    (40, 27),

    -- User 41
    (41, 3),
    (41, 9),
    (41, 10),

    -- User 42
    (42, 1),
    (42, 2),
    (42, 3),
    (42, 4),
    (42, 5),
    (42, 11),
    (42, 12),
    (42, 15),
    (42, 19),
    (42, 20),
    (42, 21),

    -- User 43
    (43, 1),
    (43, 2),
    (43, 3),
    (43, 4),
    (43, 20),
    (43, 22),
    (43, 12),
    (43, 16);

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
VALUES (193, 'ACCOUNT', 'my account email wont update', 0, 1, NULL),
        (310, 'APP', 'the app wont load for me', 0, NULL, 1),
    (131, 'APP', 'the app freezes when I try to open my closet',
        0, NULL, 27),
    (132, 'ACCOUNT', 'I cannot change my password',
        1, NULL, 28),
    (133, 'CLOSET', 'my new clothing item is not appearing in my closet',
        0, NULL, 30),
    (134, 'OUTFITS', 'I cannot save a new outfit',
        0, NULL, 33),
    (135, 'OTHER', 'I am not sure how to use the outfit recommendation feature',
        1, NULL, 34),

    (136, 'APP', 'the app closes whenever I try to upload an image',
        0, NULL, 35),
    (137, 'ACCOUNT', 'my username is showing incorrectly',
        1, NULL, 37),
    (138, 'CLOSET', 'the clothing type for one of my items is incorrect',
        0, NULL, 39),
    (139, 'OUTFITS', 'my outfits are not appearing in the correct season',
        0, NULL, 40),
    (140, 'OTHER', 'I need help understanding my data',
        1, NULL, 42),
    (141, 'APP', 'the app is running very slowly',
        0, NULL, 43),
    (142, 'ACCOUNT', 'I cannot log into my account',
        0, NULL, 3),
    (143, 'CLOSET', 'I accidentally added the same clothing item twice',
        1, NULL, 4),
    (144, 'OUTFITS', 'I cannot edit one of my saved outfits',
        0, NULL, 7),
    (145, 'OTHER', 'I have a question about my account data',
        1, NULL, 9),
    (146, 'APP', 'the clothing images are not loading',
        0, NULL, 12),
    (147, 'ACCOUNT', 'I want to change the name on my account',
        1, NULL, 13),
    (148, 'CLOSET', 'one of my jackets disappeared from my closet',
        0, NULL, 15),
    (149, 'OUTFITS', 'the wrong clothing items are shown in my outfit',
        0, NULL, 16),
    (150, 'OTHER', 'I would like to report a problem with the app',
        1, NULL, 19),
    (151, 'APP', 'the app will not open after the latest update',
        0, 1, NULL),
    (152, 'ACCOUNT', 'a user is unable to update their profile information',
        0, 2, NULL),
    (153, 'CLOSET', 'clothing records are not being updated correctly',
        1, 3, NULL),
    (154, 'OUTFITS', 'the outfit count in the report appears to be incorrect',
        0, 1, NULL),
    (155, 'OTHER', 'we need additional information about the data packages',
        1, 2, NULL),
    (156, 'APP', 'the application is not displaying properly on mobile devices',
        0, 3, NULL),
    (157, 'ACCOUNT', 'a user is receiving an error when trying to log in',
        1, 1, NULL),
    (158, 'CLOSET', 'some clothing records are missing from our data',
        0, 2, NULL),
    (159, 'OUTFITS', 'outfit information is missing from the client report',
        0, 3, NULL),
    (160, 'OTHER', 'we would like to know when our data package will be updated',
        1, 1, NULL);

