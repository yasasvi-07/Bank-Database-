-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Create Accounts table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Transactions table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- Insert sample data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, address, phone_number)
VALUES (1, 'John', 'Doe', '1234 Elm St, Springfield, IL', '555-1234'),
       (2, 'Jane', 'Smith', '5678 Oak St, Chicago, IL', '555-5678'),
       (3, 'Mike', 'Johnson', '9876 Maple St, Peoria, IL', '555-9876');

-- Insert sample data into Accounts table
INSERT INTO Accounts (account_id, customer_id, account_type, balance)
VALUES (1, 1, 'Savings', 5000.00),
       (2, 2, 'Checking', 2500.00),
       (3, 3, 'Savings', 10000.00);

-- Insert sample data into Transactions table
INSERT INTO Transactions (transaction_id, account_id, transaction_type, amount, transaction_date)
VALUES (1, 1, 'Deposit', 1000.00, '2023-03-01'),
       (2, 1, 'Withdrawal', 500.00, '2023-03-05'),
       (3, 2, 'Deposit', 200.00, '2023-03-02'),
       (4, 2, 'Withdrawal', 100.00, '2023-03-06'),
       (5, 3, 'Deposit', 1500.00, '2023-03-03'),
       (6, 3, 'Withdrawal', 2000.00, '2023-03-07');

-- Retrieve customer information with their account balance
SELECT c.customer_id, c.first_name, c.last_name, c.phone_number, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;

-- Retrieve transaction history for a specific account
SELECT t.transaction_id, t.transaction_type, t.amount, t.transaction_date
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
WHERE a.account_id = 1;
