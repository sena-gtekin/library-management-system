--
-- File generated with SQLiteStudio v3.4.4 on Paz May 28 22:28:33 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Authors
CREATE TABLE IF NOT EXISTS Authors (AuthorID INTEGER PRIMARY KEY, Name TEXT);
INSERT INTO Authors (AuthorID, Name) VALUES (201, 'Harper Lee');
INSERT INTO Authors (AuthorID, Name) VALUES (202, 'George Orwell');
INSERT INTO Authors (AuthorID, Name) VALUES (203, 'Jane Austen');
INSERT INTO Authors (AuthorID, Name) VALUES (204, 'F. Scott Fitzgerald');
INSERT INTO Authors (AuthorID, Name) VALUES (205, 'Herman Melville');
INSERT INTO Authors (AuthorID, Name) VALUES (206, 'J.K. Rowling');
INSERT INTO Authors (AuthorID, Name) VALUES (207, 'J.D. Salinger');
INSERT INTO Authors (AuthorID, Name) VALUES (208, 'Virginia Woolf');

-- Table: Books
CREATE TABLE IF NOT EXISTS Books (BookID INTEGER PRIMARY KEY, Title TEXT, Year INTEGER, AuthorID INTEGER REFERENCES Books (BookID));
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (101, 'To Kill a Mockingbird', 1960, 'Harper Lee');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (102, '1984', 1949, 'George Orwell');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (103, 'Pride and Prejudice', 1813, 'Jane Austen');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (104, 'The Great Gatsby', 1925, 'F. Scott Fitzgerald');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (105, 'Moby Dick', 1851, 'Herman Melville');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (106, 'Harry Potter and the Philosopher''''s Stone', 1997, 'J.K. Rowling');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (107, 'The Catcher in the Rye', 1951, 'J.D. Salinger');
INSERT INTO Books (BookID, Title, Year, AuthorID) VALUES (108, 'To the Lighthouse', 1927, 'Virginia Woolf');

-- Table: Borrowings
CREATE TABLE IF NOT EXISTS Borrowings (BorrowingID INTEGER PRIMARY KEY, BookID INTEGER REFERENCES Borrowings (BookID), MemberID INTEGER REFERENCES Borrowings (BookID), BorrowedDate TEXT, ReturnDate TEXT);
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (1, 101, 301, '2023-06-05', '2023-05-15');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (2, 102, 302, '2023-06-08', '2023-05-18');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (3, 103, 303, '2023-06-10', '2023-05-20');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (4, 104, 304, '2023-06-12', '2023-05-22');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (5, 105, 305, '2023-06-15', '2023-05-25');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (6, 106, 306, '2023-06-16', '2023-05-26');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (7, 107, 307, '2023-06-18', '2023-05-28');
INSERT INTO Borrowings (BorrowingID, BookID, MemberID, BorrowedDate, ReturnDate) VALUES (8, 108, 308, '2023-06-20', '2023-05-30');

-- Table: Members
CREATE TABLE IF NOT EXISTS Members (MemberID INTEGER PRIMARY KEY, Name TEXT, Email TEXT);
INSERT INTO Members (MemberID, Name, Email) VALUES (301, 'John Smith', 'john.smith@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (302, 'Emma Johnson', 'emma.johnson@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (303, 'Michael Davis', 'michael.davis@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (304, 'Olivia Brown', 'olivia.brown@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (305, 'William Wilson', 'william.wilson@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (306, 'Sophia Taylor', 'sophia.taylor@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (307, 'David Miller', 'david.miller@example.com');
INSERT INTO Members (MemberID, Name, Email) VALUES (308, 'Ava Anderson', 'ava.anderson@example.com');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
