-- Populate Authors (10 rows)
INSERT INTO authors (name, nationality, birth_date) VALUES ('J.K. Rowling', 'British', '1965-07-31');
INSERT INTO authors (name, nationality, birth_date) VALUES ('George R.R. Martin', 'American', '1948-09-20');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Stephen King', 'American', '1947-09-21');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Haruki Murakami', 'Japanese', '1949-01-12');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Agatha Christie', 'British', '1890-09-15');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Ernest Hemingway', 'American', '1899-07-21');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Gabriel Garcia Marquez', 'Colombian', '1927-03-06');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Virginia Woolf', 'British', '1882-01-25');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Mark Twain', 'American', '1835-11-30');
INSERT INTO authors (name, nationality, birth_date) VALUES ('Leo Tolstoy', 'Russian', '1828-09-09');

-- Populate Books (10 rows)
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('Harry Potter and the Sorcerer''s Stone', '9780439708180', 'Fantasy', 19.99, 1);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('A Game of Thrones', '9780553103540', 'Epic Fantasy', 25.00, 2);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('The Shining', '9780385121675', 'Horror', 15.50, 3);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('Norwegian Wood', '9784062035156', 'Fiction', 12.00, 4);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('Murder on the Orient Express', '9780007119271', 'Mystery', 10.99, 5);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('The Old Man and the Sea', '9780684801223', 'Literary Fiction', 14.25, 6);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('One Hundred Years of Solitude', '9780060883287', 'Magical Realism', 18.00, 7);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('To the Lighthouse', '9780151907366', 'Modernism', 16.50, 8);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('The Adventures of Tom Sawyer', '9780486400778', 'Adventure', 9.99, 9);
INSERT INTO books (title, isbn, genre, price, author_id) VALUES ('War and Peace', '9780199232178', 'Historical Fiction', 30.00, 10);
