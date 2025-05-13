CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    PreferredLanguage VARCHAR(10),
    LoyaltyPoints INT,
    MembershipLevel VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    Language VARCHAR(10),
    Price DECIMAL(10,2),
    Genre VARCHAR(50)
);

CREATE TABLE PriceHistory (
    PriceHistoryID INT PRIMARY KEY,
    BookID INT,
    Price DECIMAL(10,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

