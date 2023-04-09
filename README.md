# Bank-Database-

>This SQL code creates a bank database with four tables: Customers, Accounts, Transactions, and Banks. 
>The Customers table stores customer personal information such as customer ID, first name, last name, address, and phone number. 
>The Accounts table stores account information including account ID, customer ID (foreign key referencing the Customers table), account type, and balance. 
>The Transactions table stores transaction details such as transaction ID, account ID (foreign key referencing the Accounts table), transaction type, amount, and transaction date.

>>Sample data is inserted into the Customers, Accounts, and Transactions tables for demonstration purposes. The code also includes two example queries:

>Retrieve customer information with their account balance: This query joins the Customers and Accounts tables to retrieve customer ID, first name, last name, phone number, and account balance for each customer.

>Retrieve transaction history for a specific account: This query joins the Transactions and Accounts tables to retrieve transaction ID, transaction type, amount, and transaction date for a specific account with account ID = 1.
