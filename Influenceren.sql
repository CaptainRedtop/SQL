CREATE DATABASE Influenceren;
USE Influenceren;

CREATE TABLE Influencers (
	influencerID int PRIMARY KEY,
	name VARCHAR(30),
	age TINYINT,
	instagramFollowers int
);

CREATE TABLE SocialMediaPlatforms (
	platformID int PRIMARY KEY,
	name VARCHAR(30),
	averageUserAge DECIMAL(10, 1),
	totalUsers INT
);

CREATE TABLE Brands (
	brandID INT PRIMARY KEY,
	name VARCHAR(30),
	category VARCHAR(30)
);

CREATE TABLE Collaborations (
	collaborationsID int,
	influencerID INT,
	brandID INT,
	platformID INT,
	duration INT,
	payment DECIMAL (10, 2),
	FOREIGN KEY (influencerID) REFERENCES Influencers(influencerID),
	FOREIGN KEY (brandID) REFERENCES Brands(brandID),
	FOREIGN KEY (platformID) REFERENCES SocialMediaPlatforms(platformID)
);

INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (1, 'Anna', 24, 50000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (2, 'Bent', 22, 20000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (3, 'Caroline', 26, 80000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (4, 'David', 28, 45000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (5, 'Ella', 30, 70000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (6, 'Frank', 27, 32000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (7, 'Grace', 29, 92000);
INSERT INTO Influencers (influencerID, name, age, instagramFollowers)
VALUES (8, 'Henry', 31, 48000);

INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(1, 'Instagram', 24.5, 1000000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(2, 'TikTok', 18.5, 2000000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(3, 'YouTube', 28.5, 1500000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(4, 'Snapchat', 20.0, 800000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(5, 'Twitter', 27.5, 500000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(6, 'Facebook', 32.5, 2000000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(7, 'Pinterest', 29.0, 600000);
INSERT INTO SocialMediaPlatforms (platformID, name, averageUserAge, totalUsers)
VALUES(8, 'LinkedIn', 34.0, 400000);

INSERT INTO Brands(brandID, name, category)
VALUES(1, 'FashionCo', 'fashion');
INSERT INTO Brands(brandID, name, category)
VALUES(2, 'BeautyBliss', 'beauty');
INSERT INTO Brands(brandID, name, category)
VALUES(3, 'TechTron', 'technology');
INSERT INTO Brands(brandID, name, category)
VALUES(4, 'GlamGlow', 'beauty');
INSERT INTO Brands(brandID, name, category)
VALUES(5, 'SportSpot', 'sports');
INSERT INTO Brands(brandID, name, category)
VALUES(6, 'EcoEssentials', 'lifestyle');
INSERT INTO Brands(brandID, name, category)
VALUES(7, 'TrendTech', 'technology');
INSERT INTO Brands(brandID, name, category)
VALUES(8, 'MystiqueMakeup', 'beauty');

INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(1, 1, 1, 1, 30, 5000.00);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(2, 2, 3, 2, 10, 3000.50);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(3, 3, 2, 3, 20, 7500.00);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(4, 4, 4, 4, 15, 2500.00);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(5, 1, 2, 1, 25, 6000.50);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(6, 3, 1, 2, 40, 6500.75);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(7, 5, 5, 5, 45, 5300.00);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(8, 6, 6, 6, 20, 3200.25);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(9, 7, 7, 7, 15, 4700.50);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(10, 8, 8, 8, 25, 2900.00);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(11, 5, 7, 1, 30, 5100.75);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(12, 6, 5, 2, 40, 4400.00);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(13, 7, 6, 3, 35, 6500.25);
INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES(14, 8, 7, 4, 20, 7000.50);

//Opgave 1:
SELECT name FROM Influencers;

//Opgave 2:
SELECT name FROM SocialMediaPlatforms;

//Opgave 3:
SELECT name FROM Influencers
WHERE age > 25;

// Opgave 4:
SELECT name FROM Brands
WHERE category = 'beauty';

//Opgave 5:
SELECT COUNT(name) FROM Influencers
WHERE instagramFollowers > 50000;

//Opgave 6:
SELECT name FROM SocialMediaPlatforms
WHERE averageUserAge = (SELECT MIN(averageUserAge) FROM SocialMediaPlatforms);

//Opgave 7:
SELECT name FROM Influencers, Collaborations	


//Opgave 8:
SELECT name FROM SocialMediaPlatforms
WHERE totalUsers > 1000000;

//Opgave 9:
SELECT name FROM Influencers
WHERE age BETWEEN 25 AND 31;

//Opgave 10:
SELECT name FROM Brands
WHERE Brands.brandID NOT IN (SELECT Collaborations.brandID FROM Collaborations WHERE Collaborations.platformID = (SELECT platformID FROM SocialMediaPlatforms WHERE SocialMediaPlatforms.name = 'SnapChat'));

//Opgave 11:
