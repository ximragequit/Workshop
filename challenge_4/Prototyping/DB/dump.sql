-- Drop existing tables (if they exist)
DROP TABLE IF EXISTS Trip;
DROP TABLE IF EXISTS Outage;
DROP TABLE IF EXISTS Schedule;
DROP TABLE IF EXISTS WaterLevel;
DROP TABLE IF EXISTS Captain;
DROP TABLE IF EXISTS Ferry;
DROP TABLE IF EXISTS FerryLine_Ferry;
DROP TABLE IF EXISTS FerryLine;


-- Create Ferry table
CREATE TABLE IF NOT EXISTS Ferry (
  Ferry_ID INT PRIMARY KEY,
  Name TEXT,
  Availability BOOLEAN
);

INSERT INTO Ferry (Ferry_ID, Name, Availability)
VALUES
  (1, 'AIDAaura', 1),
  (2, 'AIDAbella', 1),
  (3, 'AIDAblu', 1),
  (4, 'AIDAcara', 1),
  (5, 'AIDAdiva', 1),
  (6, 'AIDAluna', 1),
  (7, 'AIDAmar', 1),
  (8, 'AIDAnova', 1),
  (9, 'AIDAperla', 1),
  (10, 'AIDAprima', 1),
  (11, 'AIDAsol', 1),
  (12, 'AIDAstella', 1),
  (13, 'AIDAvita', 1),
  (14, 'Albatros', 1),
  (15, 'Alexander von Humboldt II', 1),
  (16, 'Amadea', 1),
  (17, 'Anthem of the Seas', 1),
  (18, 'Arcadia', 1),
  (19, 'Artania', 1),
  (20, 'Astor', 1),
  (21, 'Asuka 2', 1),
  (22, 'Aurora', 1),
  (23, 'Azamara Journey', 1),
  (24, 'Azamara Pursuit', 1),
  (25, 'Azamara Quest', 1),
  (26, 'Azura', 1),
  (27, 'Balmoral', 1),
  (28, 'Barentshav', 1),
  (29, 'Barzan', 1),
  (30, 'Beluga II', 1),
  (31, 'Black Watch', 1),
  (32, 'Borkumriff', 1),
  (33, 'Boudicca', 1),
  (34, 'Braemar', 1),
  (35, 'Branddirektor Westphal', 1),
  (36, 'Bremen', 1),
  (37, 'Cap San Diego', 1),
  (38, 'Caribbean Princess', 1),
  (39, 'Carnival Legend', 1),
  (40, 'Celebrity Silhouette', 1),
  (41, 'Celestyal Odyssey', 1),
  (42, 'CMA CGM Alexander von Humboldt', 1),
  (43, 'CMA CGM Antoine de Saint Exupery', 1),
  (44, 'CMA CGM Georg Forster', 1),
  (45, 'CMA CGM Jacques Saade', 1),
  (46, 'CMA CGM Marco Polo', 1),
  (47, 'Combi Dock III', 1),
  (48, 'Costa Fortuna', 1),
  (49, 'Costa Magica', 1),
  (50, 'Costa Mediterranea', 1),
  (51, 'Costa neoRomantica', 1),
  (52, 'Costa Pacifica', 1),
  (53, 'Crystal Symphony', 1),
  (54, 'CSCL Globe', 1),
  (55, 'CSCL Indian Ocean', 1),
  (56, 'Cuauhtemoc', 1),
  (57, 'Delphin', 1),
  (58, 'de Ruyter', 1),
  (59, 'Disney Dream', 1),
  (60, 'Eclipse', 1),
  (61, 'Empress', 1),
  (62, 'Eugen Maersk', 1),
  (63, 'Europa', 1),
  (64, 'Europa 2', 1),
  (65, 'Explorer of the Seas', 1),
  (66, 'Fram', 1),
  (67, 'Fregatte Augsburg F213', 1),
  (68, 'Fregatte Evertsen', 1),
  (69, 'Fregatte Hessen', 1),
  (70, 'Fridtjof Nansen', 1),
  (71, 'FS Maria S. Merian', 1),
  (72, 'FS Meteor', 1),
  (73, 'FS Pluvier', 1),
  (74, 'FS Polarstern', 1),
  (75, 'FS Sonne', 1),
  (76, 'Funchal', 1),
  (77, 'Gann', 1),
  (78, 'Gorch Fock', 1),
  (79, 'Hamburg', 1),
  (80, 'Hanseatic', 1),
  (81, 'HANSEATIC inspiration', 1),
  (82, 'HANSEATIC nature', 1),
  (83, 'HMS Argyll', 1),
  (84, 'HMS Ark Royal', 1),
  (85, 'HMS Bulwark', 1),
  (86, 'HMS Ocean', 1),
  (87, 'HMS Illustrious', 1),
  (88, 'HMS Monmouth', 1),
  (89, 'HMS Sutherland', 1),
  (90, 'HMS Tyne', 1),
  (91, 'HNLMS Van Amstel', 1),
  (92, 'HNLMS Van Speijk', 1),
  (93, 'Independence of the Seas', 1),
  (94, 'Insignia', 1),
  (95, 'Island Princess', 1),
  (96, 'Juan Sebastian de Elcano', 1),
  (97, 'Karel Doorman', 1),
  (98, 'Kruzenshtern', 1),
  (99, 'L''Austral', 1),
  (100, 'Le Boreal', 1),
  (101, 'Le Diamant', 1),
  (102, 'Le Soleal', 1),
  (103, 'Legend of the Seas', 1),
  (104, 'Libertad', 1),
  (105, 'Ludwig Prandtl', 1),
  (106, 'Magellan', 1),
  (107, 'Marco Polo', 1),
  (108, 'Marina', 1),
  (109, 'Mein Schiff 1', 1),
  (110, 'Mein Schiff 1 (Neubau)', 1),
  (111, 'Mein Schiff 2', 1),
  (112, 'Mein Schiff 3', 1),
  (113, 'Mein Schiff 4', 1),
  (114, 'Mein Schiff 5', 1),
  (115, 'Mein Schiff 6', 1),
  (116, 'Mein Schiff Herz', 1),
  (117, 'Midnatsol', 1),
  (118, 'MIR', 1),
  (119, 'MOL Triumph', 1),
  (120, 'MS Roald Amundsen', 1),
  (121, 'MSC Grandiosa', 1),
  (122, 'MSC Lirica', 1),
  (123, 'MSC Magnifica', 1),
  (124, 'MSC Meraviglia', 1),
  (125, 'MSC Orchestra', 1),
  (126, 'MSC Preziosa', 1),
  (127, 'MSC Splendida', 1),
  (128, 'MSC Zoe', 1),
  (129, 'Navigator of the Seas', 1),
  (130, 'NE Brasil', 1),
  (131, 'Nordstjernen', 1),
  (132, 'Norwegian Escape', 1),
  (133, 'Norwegian Jade', 1),
  (134, 'Norwegian Joy', 1),
  (135, 'Oceana', 1),
  (136, 'Ocean Countess', 1),
  (137, 'Ocean Dream', 1),
  (138, 'Ocean Majesty', 1),
  (139, 'Octopus', 1),
  (140, 'Oriana', 1),
  (141, 'Ovation of the Seas', 1),
  (142, 'Pacific Princess', 1),
  (143, 'Partyschiff Hedi', 1),
  (144, 'Prinsendam', 1),
  (145, 'Quantum of the Seas', 1),
  (146, 'Queen Elizabeth', 1),
  (147, 'Queen Mary 2', 1),
  (148, 'Queen Victoria', 1),
  (149, 'Rainbow Warrior III', 1),
  (150, 'Regal Princess', 1),
  (151, 'Rotterdam', 1),
  (152, 'Royal Princess', 1),
  (153, 'Saga Pearl II', 1),
  (154, 'Saga Ruby', 1),
  (155, 'Saga Sapphire', 1),
  (156, 'Seabourn Ovation', 1),
  (157, 'Seabourn Sojourn', 1),
  (158, 'Sea Cloud', 1),
  (159, 'Sea Cloud 2', 1),
  (160, 'SeaDream I', 1),
  (161, 'Sea Spirit', 1),
  (162, 'Sedov', 1),
  (163, 'Shabab Oman', 1),
  (164, 'Shtandart', 1),
  (165, 'Silver Cloud', 1),
  (166, 'Silver Spirit', 1),
  (167, 'Silver Whisper', 1),
  (168, 'Silver Wind', 1),
  (169, 'Spirit of Discovery', 1),
  (170, 'Star Flyer', 1),
  (171, 'Star Legend', 1),
  (172, 'Star Pride', 1),
  (173, 'Stubnitz', 1),
  (174, 'The World', 1),
  (175, 'Thomson Spirit', 1),
  (176, 'Union', 1),
  (177, 'Ventura', 1),
  (178, 'Viking Sky', 1),
  (179, 'Viking Star', 1),
  (180, 'Viking Sun', 1),
  (181, 'World Explorer', 1),
  (182, 'World Odyssey', 1);

-- Create Captain table
CREATE TABLE IF NOT EXISTS Captain (
  Captain_ID INT PRIMARY KEY,
  Name TEXT,
  Availability BOOLEAN,
  Ferry_ID INT,
  FOREIGN KEY (Ferry_ID) REFERENCES Ferry(Ferry_ID)
);

INSERT INTO Captain (Captain_ID, Name, Availability, Ferry_ID)
VALUES
(1, 'John Smith', true, 1),
(2, 'Emily Johnson', true, 2),
(3, 'Michael Davis', false, 3),
(4, 'Sarah Thompson', true, 4),
(5, 'David Wilson', true, 5),
(6, 'Jennifer Martinez', true, 6),
(7, 'Christopher Lee', false, 7),
(8, 'Amanda White', true, 8),
(9, 'Matthew Hall', true, 9),
(10, 'Laura Lopez', true, 10),
(11, 'Daniel Clark', true, 11),
(12, 'Melissa Hernandez', false, 12),
(13, 'James Scott', true, 13),
(14, 'Jessica Green', true, 14),
(15, 'Ryan Adams', true, 15),
(16, 'Elizabeth Baker', true, 16),
(17, 'Andrew Carter', true, 17),
(18, 'Stephanie Murphy', false, 18),
(19, 'Jason Turner', true, 19),
(20, 'Rebecca Rivera', true, 20),
(21, 'Kevin Cook', true, 21),
(22, 'Michelle Ward', true, 22),
(23, 'Thomas Butler', false, 23),
(24, 'Kimberly Nelson', true, 24),
(25, 'Richard Cooper', true, 25),
(26, 'Amy Stewart', true, 26),
(27, 'Patrick Bell', true, 27),
(28, 'Heather Phillips', false, 28),
(29, 'Charles Reed', true, 29),
(30, 'Samantha Morgan', true, 30);

-- Create WaterLevel table
CREATE TABLE IF NOT EXISTS WaterLevel (
  WaterLevel_ID INT PRIMARY KEY,
  Timestamp DATETIME,
  WaterLevel FLOAT
);

-- Create Dock table
CREATE TABLE IF NOT EXISTS Dock (
  Dock_ID INT PRIMARY KEY,
  DockName TEXT,
  GPSCoordinates TEXT
);

 -- Create FerryLine 
CREATE TABLE IF NOT EXISTS FerryLine (
  FerryLine_ID INT Primary Key,
  Line INT
);

INSERT INTO FerryLine (FerryLine_ID, Line)
VALUES
  (1, 61),
  (2, 62),
  (3, 64),
  (4, 68),
  (5, 72),
  (6, 73),
  (7, 75);

-- Create Schedule table
CREATE TABLE IF NOT EXISTS Schedule (
  Schedule_ID INT PRIMARY KEY,
  DepartureTime TIME,
  FerryLine_ID INT,
  Dock_ID INT,
  FOREIGN KEY (FerryLine_ID) REFERENCES FerryLine(FerryLine_ID),
  FOREIGN KEY (Dock_ID) REFERENCES Dock(Dock_ID)
);

-- Create FerryLine_Ferry table
CREATE TABLE IF NOT EXISTS FerryLine_Ferry (
  FerryLine_ID INT,
  Ferry_ID INT,
  FOREIGN KEY (Ferry_ID) REFERENCES Ferry(Ferry_ID),
  FOREIGN KEY (FerryLine_ID) REFERENCES FerryLine(FerryLine_ID)
);

-- Create Trip table
CREATE TABLE IF NOT EXISTS Trip (
  Trip_ID INT PRIMARY KEY,
  Ferry_ID INT,
  FerryLine_ID INT,
  Captain_ID INT,
  DepartureTime TIME,
  Schedule_ID INT,
  FOREIGN KEY (Schedule_ID) REFERENCES Schedule(Schedule_ID),
  FOREIGN KEY (Ferry_ID) REFERENCES Ferry(Ferry_ID),	
  FOREIGN KEY (FerryLine_ID) REFERENCES FerryLine(FerryLine_ID),	
  FOREIGN KEY (Captain_ID) REFERENCES Captain(Captain_ID)
);

-- Create Outage table
CREATE TABLE IF NOT EXISTS Outage (
  Outage_ID INT PRIMARY KEY,
  Trip_ID INT,
  OutageDate DATETIME,
  FOREIGN KEY (Trip_ID) REFERENCES Trip(Trip_ID)
);

-- Create Dock_FerryLine
CREATE TABLE IF NOT EXISTS Dock_FerryLine (
  Dock_ID INT,
  FerryLine_ID INT,
  Station_number INT,
  FOREIGN KEY (Dock_ID) REFERENCES Dock(Dock_ID),
  FOREIGN KEY (FerryLine_ID) REFERENCES FerryLine_Ferry(FerryLine_ID)
);

