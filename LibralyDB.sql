CREATE TABLE `Books` (
  `book_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `publisher_id` int NOT NULL,
  `publication_year` int,
  `subcategory_id` int NOT NULL,
  `isbn` varchar(255) UNIQUE NOT NULL
);

CREATE TABLE `BookCopies` (
  `book_copy_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `book_ID` int NOT NULL,
  `is_available` boolean NOT NULL DEFAULT true,
  `acquisition_type` varchar(255) NOT NULL COMMENT 'Buying ,Donation, Other',
  `source` varchar(255) NOT NULL,
  `acquisition_date` timestamp NOT NULL,
  `cost` int NOT NULL,
  `description` varchar(255) COMMENT 'More acquisition detail'
);

CREATE TABLE `Author` (
  `author_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) NOT NULL
);

CREATE TABLE `BookAuthors` (
  `authors_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `book_ID` int NOT NULL,
  `author_ID` int NOT NULL
);

CREATE TABLE `Publisher` (
  `publisher_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(255) NOT NULL,
  `address` varchar(255)
);

CREATE TABLE `Category` (
  `category_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL
);

CREATE TABLE `Subcategory` (
  `subcategory_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(255) NOT NULL,
  `category_ID` int NOT NULL
);

CREATE TABLE `Location` (
  `shelf_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `floor` int NOT NULL,
  `section` varchar(255) NOT NULL
);

CREATE TABLE `SubcategoryLocation` (
  `subcatergorylocate_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `subcategory_ID` int NOT NULL,
  `shelf_ID` int NOT NULL
);

CREATE TABLE `User` (
  `user_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `username` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  `email` varchar(255) UNIQUE NOT NULL,
  `phone` varchar(255) UNIQUE NOT NULL
);

CREATE TABLE `Staff` (
  `staff_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `role_ID` int NOT NULL,
  `email` varchar(255) UNIQUE NOT NULL,
  `phone` varchar(255) UNIQUE NOT NULL,
  `username` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `hire_date` date NOT NULL
);

CREATE TABLE `Role` (
  `role_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) UNIQUE NOT NULL,
  `salary` int NOT NULL
);

CREATE TABLE `AreaOfRespond` (
  `areaofrespond_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `staff_ID` int NOT NULL,
  `subcategory_ID` int NOT NULL
);

CREATE TABLE `Borrowing` (
  `borrow_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  `book_copy_ID` int NOT NULL,
  `borrow_date` timestamp NOT NULL,
  `return_date` timestamp,
  `staff_ID` int
);

CREATE TABLE `Reserve` (
  `reserve_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_ID` int NOT NULL,
  `book_copy_ID` int NOT NULL,
  `reserve_date` timestamp NOT NULL,
  `status` varchar(255) NOT NULL,
  `staff_ID` int
);

CREATE TABLE `Accounting` (
  `transaction_id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `transaction_date` timestamp NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'income or expense',
  `category` varchar(255) NOT NULL COMMENT 'fine, taxes, reparing, others, ...',
  `description` varchar(255) COMMENT 'more transaction detail',
  `staff_ID` int NOT NULL
);

CREATE TABLE `BorrowingFine` (
  `fine_ID` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `borrow_ID` int NOT NULL,
  `fine_date` date NOT NULL,
  `amount` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL COMMENT 'fine detail like broken or missing '
);

ALTER TABLE `Books` ADD FOREIGN KEY (`publisher_id`) REFERENCES `Publisher` (`publisher_ID`);

ALTER TABLE `Books` ADD FOREIGN KEY (`subcategory_id`) REFERENCES `Subcategory` (`subcategory_ID`);

ALTER TABLE `BookCopies` ADD FOREIGN KEY (`book_ID`) REFERENCES `Books` (`book_ID`);

ALTER TABLE `BookAuthors` ADD FOREIGN KEY (`book_ID`) REFERENCES `Books` (`book_ID`);

ALTER TABLE `BookAuthors` ADD FOREIGN KEY (`author_ID`) REFERENCES `Author` (`author_ID`);

ALTER TABLE `Subcategory` ADD FOREIGN KEY (`category_ID`) REFERENCES `Category` (`category_ID`);

ALTER TABLE `SubcategoryLocation` ADD FOREIGN KEY (`subcategory_ID`) REFERENCES `Subcategory` (`subcategory_ID`);

ALTER TABLE `SubcategoryLocation` ADD FOREIGN KEY (`shelf_ID`) REFERENCES `Location` (`shelf_ID`);

ALTER TABLE `Staff` ADD FOREIGN KEY (`role_ID`) REFERENCES `Role` (`role_ID`);

ALTER TABLE `AreaOfRespond` ADD FOREIGN KEY (`staff_ID`) REFERENCES `Staff` (`staff_ID`);

ALTER TABLE `AreaOfRespond` ADD FOREIGN KEY (`subcategory_ID`) REFERENCES `Subcategory` (`subcategory_ID`);

ALTER TABLE `Borrowing` ADD FOREIGN KEY (`user_ID`) REFERENCES `User` (`user_ID`);

ALTER TABLE `Borrowing` ADD FOREIGN KEY (`book_copy_ID`) REFERENCES `BookCopies` (`book_copy_ID`);

ALTER TABLE `Reserve` ADD FOREIGN KEY (`user_ID`) REFERENCES `User` (`user_ID`);

ALTER TABLE `Reserve` ADD FOREIGN KEY (`book_copy_ID`) REFERENCES `BookCopies` (`book_copy_ID`);

ALTER TABLE `Accounting` ADD FOREIGN KEY (`staff_ID`) REFERENCES `Staff` (`staff_ID`);

ALTER TABLE `BorrowingFine` ADD FOREIGN KEY (`borrow_ID`) REFERENCES `Borrowing` (`borrow_ID`);
