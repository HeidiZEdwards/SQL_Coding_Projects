


/* Library database assignment */

CREATE DATABASE db_library;

USE db_library;

CREATE TABLE library_branch ( 
branch_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
branch_name VARCHAR (30) NOT NULL,
branch_address VARCHAR (30) NOT NULL
);

INSERT INTO library_branch
(branch_name, branch_address)
VALUES
('Sharpstown', '2419 Tyler Ave'),
('Central', '190 Jefferson St'),
('West Main', '1200 Washington Blvd'),
('Pearl District', '6770 Cahoon St')
;

SELECT * FROM library_branch;

CREATE TABLE publisher (
publisher_name VARCHAR (30) PRIMARY KEY NOT NULL,
publisher_address VARCHAR (30) NOT NULL,
publisher_phone VARCHAR (20) NOT NULL
);

INSERT INTO publisher 
(publisher_name, publisher_address, publisher_phone)
VALUES
('Good Books', 'New York', '555-479-5579'),
('Reading Tree', 'Washington', '206-369-2215'),
('Fillmore Publishers', 'Montana', '203-333-1234'),
('Rainy Day Publishing', 'Oregon', '503-789-4546')
;

SELECT * FROM publisher;

CREATE TABLE books (
book_id INT PRIMARY KEY NOT NULL IDENTITY (800,1),
book_title VARCHAR (70) NOT NULL,
publisher_name VARCHAR (40) NOT NULL
);

INSERT INTO books 
(book_title, publisher_name)
VALUES
('The Lost Tribe', 'Rainy Day Publishing'),
('Hearts in Atlantis', 'Good Books'),
('The Shining', 'Good Books'),
('Black Sea', 'Fillmore Publishers'),
('Glass House', 'Reading Tree'),
('Smoke and Mirrors', 'Fillmore Publishers'),
('The Giving Tree', 'Good Books'),
('Boneyard', 'Rainy Day Publishing'),
('Shadows and Light', 'Fillmore Publishers'),
('The House on the Hill', 'Good Books'),
('Good Place', 'Rainy Day Publishing'),
('Frog King', 'Reading Tree'),
('Happy Valley', 'Good Books'),
('The Light on the Mountain', 'Reading Tree'),
('The Last Man Standing', 'Fillmore Publishers'),
('The Broad Fork', 'Rainy Day Publishing'),
('Rising Sun', 'Good Books'),
('A Day in Nevada', 'Reading Tree'),
('Christmas: A Tale of Terror', 'Fillmore Publishers'),
('Salt Flat Blues', 'Rainy Day Publishing'),
('Letters of Love', 'Good Books'),
('Bobby & Me', 'Fillmore Publishers'),
('The Big Red Dog', 'Fillmore Publishers'),
('Shermans House', 'Rainy Day Publishing'),
('Willie Walter Wiggins', 'Good Books'),
('Lost Castle', 'Good Books'),
('A Day in the Life of my Cat', 'Rainy Day Publishing'),
('Hello, Goodbye', 'Fillmore Publishers'),
('Adventures in PDX', 'Good Books'),
('The Dive Bar', 'Rainy Day Publishing'),
('All that the rain brings', 'Fillmore Publishers'),
('Ferns and Fairies', 'Good Books'),
('The Shining', 'Good Books'),
('Battlestar Gallactica', 'Rainy Day Publishing'),
('Water to Wine', 'Fillmore Publishing'),
('The Happiest Horse', 'Good Books'),
('Thelma & Louise', 'Rainy Day Publishing'),
('The Longest Assignment', 'Good Books'),
('Christmas Story', 'Fillmore Publishing'),
('Oceans 15', 'Rainy Day Publishing')
;


SELECT * FROM books;

CREATE TABLE book_authors (
author_name VARCHAR (60) NOT NULL,
book_idA INT NOT NULL CONSTRAINT fk_book_idA FOREIGN KEY REFERENCES books(book_id)
);


INSERT INTO book_authors  
(book_idA, author_name)
VALUES
(800, 'Bob Krantz'),
(801, 'Stephen King'),
(802, 'Stephen King'),
(803, 'Regina Wild'),
(804, 'William Becker'),
(805, 'Bob Krantz'),
(806, 'Helen Grady'),
(807, 'Steve Edwards'),
(808, 'Mildred Hatchet'),
(809, 'Carl Mueller'),
(810, 'Betty Carter'),
(811, 'Bob Krantz'),
(812, 'Helen Grady'),
(813, 'Barbara Robinson'),
(814, 'Adam Hunter'),
(815, 'Mildred Hatchet'),
(816, 'Adam Hunter'),
(817, 'Barbara Robinson'),
(818, 'Casey Strong'),
(819, 'Steve Edwards'),
(820, 'Regina Wild'),
(821, 'Bob Krantz'),
(822, 'Betty Carter'),
(823, 'Casey Strong'),
(824, 'Mildred Hatchet'),
(825, 'Bob Krantz'),
(826, 'Carl Mueller'),
(827, 'Casey Strong'),
(828, 'Bob Krantz'),
(829, 'Bob Krantz'),
(830, 'Bob Krantz'),
(831, 'Regina Wild'),
(832, 'William Becker'),
(833, 'Bob Krantz'),
(834, 'Stephen King'),
(835, 'Mildred Hatchet'),
(836, 'Steve Edwards'),
(837, 'Helen Grady'),
(838, 'William Becker'),
(839, 'Regina Wild')
;


SELECT * FROM book_authors;

CREATE TABLE book_copies ( 
book_idB INT CONSTRAINT fk_book_idB FOREIGN KEY REFERENCES books(book_id),
branch_idA INT NOT NULL CONSTRAINT fk_branch_idA FOREIGN KEY REFERENCES library_branch(branch_id),
number_of_copies INT NOT NULL
);

INSERT INTO book_copies 
(book_idB, branch_idA, number_of_copies)
VALUES
(800, 100, 2),
(801, 101, 2),
(802, 101, 2),
(803, 102, 2),
(804, 103, 2),
(805, 100, 2),
(806, 103, 2),
(807, 100, 2),
(808, 101, 2),
(809, 102, 2),
(810, 102, 2),
(811, 103, 2),
(812, 102, 2),
(813, 101, 2),
(814, 100, 2),
(815, 100, 2),
(816, 102, 2),
(817, 103, 2),
(818, 101, 2),
(819, 102, 2),
(820, 102, 2),
(821, 103, 2),
(822, 103, 2),
(823, 100, 2),
(824, 102, 2),
(825, 100, 2),
(826, 101, 2),
(827, 103, 2),
(828, 103, 2),
(829, 101, 2),
(830, 102, 2),
(831, 100, 2),
(832, 101, 2),
(833, 100, 2),
(834, 103, 2),
(835, 103, 2),
(836, 101, 2),
(837, 100, 2),
(838, 102, 2),
(839, 101, 2)
;

SELECT * FROM book_copies;

CREATE TABLE borrower (
card_no INT PRIMARY KEY NOT NULL IDENTITY (700, 1),
name VARCHAR (40) NOT NULL,
address VARCHAR (50) NOT NULL,
phone VARCHAR (20) NOT NULL
);

INSERT INTO borrower
(name, address, phone)
VALUES
('Bob Ross', '789 Main St', '503-888-1458'),
('Jane Smith', '2250 Center Ave', '206-555-1875'),
('Steve Roberts', '1900 Ash St', '503-223-6983'),
('Mary Olsen', '3220 Washington St', '503-123-4567'),
('Jerry Ledfoot', '2750 25th St', '206-897-4454'),
('Melissa Moody', '663 West Elm Ave', '503-663-1978'),
('Sylvia Miller', '235 Adams Rd', '206-553-3946'),
('Jeffrey Jones', '2650 Madison Ave', '503-434-1239')
;

SELECT * FROM borrower;

CREATE TABLE book_loans (
book_idC INT NOT NULL CONSTRAINT fk_book_idC FOREIGN KEY REFERENCES books(book_id),
branch_idB INT NOT NULL CONSTRAINT fk_branch_idB FOREIGN KEY REFERENCES library_branch(branch_id),
card_noA INT NOT NULL CONSTRAINT fk_card_noA FOREIGN KEY REFERENCES borrower(card_no),
date_out DATE NOT NULL,
date_due DATE NOT NULL
);

INSERT INTO book_loans 
(book_idC, branch_idB, card_noA, date_out, date_due)
VALUES
(800, 100, 700, '2019-12-06', '2019-12-20'),
(801, 101, 700, '2019-12-06', '2019-12-20'),
(802, 101, 700, '2019-12-06', '2019-12-20'),
(803, 102, 700, '2019-12-06', '2019-12-20'),
(804, 103, 700, '2019-12-06', '2019-12-20'),
(805, 100, 700, '2019-12-06', '2019-12-20'),
(806, 102, 701, '2019-12-06', '2019-12-20'),
(807, 103, 702, '2019-12-07', '2019-12-21'),
(808, 100, 703, '2019-12-07', '2019-12-21'),
(809, 101, 704, '2019-12-07', '2019-12-21'),
(810, 102, 705, '2019-12-07', '2019-12-21'),
(811, 103, 706, '2019-12-07', '2019-12-21'),
(812, 100, 707, '2019-12-07', '2019-12-21'),
(813, 101, 700, '2019-12-05', '2019-12-19'),
(814, 102, 703, '2019-12-05', '2019-12-19'),
(815, 103, 703, '2019-12-05', '2019-12-19'),
(816, 100, 703, '2019-12-05', '2019-12-19'),
(817, 101, 704, '2019-12-05', '2019-12-19'),
(818, 102, 705, '2019-12-05', '2019-12-19'),
(819, 103, 706, '2019-12-05', '2019-12-19'),
(820, 100, 707, '2019-12-05', '2019-12-19'),
(821, 101, 701, '2019-12-08', '2019-12-22'),
(822, 102, 702, '2019-12-08', '2019-12-22'),
(823, 103, 703, '2019-12-08', '2019-12-22'),
(824, 100, 704, '2019-12-08', '2019-12-22'),
(825, 102, 705, '2019-12-08', '2019-12-22'),
(826, 103, 706, '2019-12-08', '2019-12-22'),
(827, 100, 707, '2019-12-08', '2019-12-22'),
(828, 101, 707, '2019-12-06', '2019-12-20'),
(829, 102, 700, '2019-12-06', '2019-12-20'),
(830, 103, 701, '2019-12-06', '2019-12-20'),
(831, 100, 702, '2019-12-06', '2019-12-20'),
(832, 101, 703, '2019-12-06', '2019-12-20'),
(833, 100, 704, '2019-12-06', '2019-12-20'),
(834, 101, 705, '2019-12-06', '2019-12-20'),
(835, 102, 706, '2019-12-06', '2019-12-21'),
(836, 103, 707, '2019-12-07', '2019-12-21'),
(837, 101, 703, '2019-12-07', '2019-12-21'),
(838, 102, 704, '2019-12-07', '2019-12-21'),
(839, 103, 705, '2019-12-07', '2019-12-21')
; 


SELECT * FROM book_loans;



/* Stored Procedures that will query for each of the following questions */

/* 1.) How many copies of the book titled "The Lost Tribe" are owned by the library 
branch whose name is "Sharpstown"? */

CREATE PROCEDURE findBook
AS
SELECT number_of_copies FROM book_copies WHERE book_idB = 800 AND branch_idA = 100;
GO
EXEC findBook

/* 2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

CREATE PROCEDURE TribeCopies
AS
SELECT number_of_copies, branch_idA FROM book_copies WHERE book_idB = 800;
GO
EXEC TribeCopies

/* 3.) Retrieve the names of all borrowers who do not have any books checked out. */

CREATE PROCEDURE NoBooksOut
AS
SELECT name FROM borrower WHERE card_no NOT IN (SELECT card_noA FROM book_loans);
GO
EXEC NoBooksOut

/* 4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, 
the borrower's name, and the borrower's address. */

CREATE PROCEDURE DueToday 
AS
SELECT a1.book_title, a2.name, a2.address
FROM books a1, borrower a2, book_loans a3, library_branch a4
WHERE a4.branch_name = 'Sharpestown' AND a4.branch_id = a3.branch_idB AND a3.date_due = '2019-12-06'
AND a3.card_noA = a2.card_no AND a3.book_idC = a1.book_id;
GO
EXEC DueToday

/* 5.) For each library branch, retrieve the branch name and the total number of books loaned 
out from that branch. */

CREATE PROCEDURE numberLoaned 
AS
SELECT a1.branch_name, COUNT (*)
FROM library_branch a1, book_loans a2
WHERE a2.branch_idB = a1.branch_id
GROUP BY a1.branch_name;
GO
EXEC numberLoaned

/* 6.) Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out. */

CREATE PROCEDURE moreThanFive 
AS
SELECT a1.name, a1.address, COUNT (*)
FROM borrower a1, book_loans a2
WHERE a1.card_no = a2.card_noA
GROUP BY a1.card_no, a1.name, a1.address
HAVING COUNT (*) > 5;
GO
EXEC moreThanFive

/* 7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies 
owned by the library branch whose name is "Central". */

CREATE PROCEDURE KingCentral 
AS
SELECT DISTINCT a1.book_title, a2.number_of_copies
FROM books a1
INNER JOIN book_copies a2 ON a1.book_id = a2.book_idB
INNER JOIN book_authors a3 ON a1.book_id = a3.book_idA
INNER JOIN book_loans a4 ON a1.book_id = a4.book_idC
INNER JOIN library_branch a5 ON a4.branch_idB = a5.branch_id
WHERE a3.author_name = 'Stephen King' AND a4.branch_idB = 101;
GO
EXEC KingCentral
