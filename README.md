# Library Management System

This project involves the design and implementation of a **Library Management System** using **UI Bakery** as a low-code platform for UI development and **SQL** for database management. The system aims to streamline core library operations such as borrowing, returning, and reserving books, as well as handling fines and managing book inventory.

---

## Features

### **1. User Management**
- External users must register as members to access system features.
- Members can log in to borrow or reserve books.

### **2. Book Borrowing**
- Members can borrow books either through self-service or via staff.
- The system prevents duplicate borrowing of the same book by the same user.
- Due dates for book returns are recorded.
- Staff can track borrower and lender information.
- Overdue returns or damaged books will incur fines.

### **3. Fine Payments**
- Fines must be paid in person to ensure security and transparency.
- Fine transactions are logged for financial accountability.

### **4. Book Returns**
- Books can only be returned via staff.
- Returned books with pending reservations are marked as "reserved," making them unavailable for new borrow requests.

### **5. Book Reservations**
- Reservations are available only for members and for books currently on loan.
- Reservations follow a first-come, first-served basis.
- Upon return, reserved books are allocated to the earliest reservation.
- Users can cancel reservations, which adjusts the reservation queue dynamically.

### **6. Book Inventory**
- Staff can add new copies of books to the inventory.
- Purchases are logged in the financial records for transparency.

---

## Development Approach

1. **UI Bakery**  
   - Used for rapid prototyping and creating user-friendly interfaces with minimal coding.
   - Ensures intuitive workflows for borrowing, returning, and managing books.

2. **SQL Database**  
   - Focused on robust schema design to handle complex relationships among users, books, and transactions.
   - Optimized queries for efficient data retrieval and updates.

---
