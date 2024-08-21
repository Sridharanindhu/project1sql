create database  Expensess
use Expensess
CREATE TABLE FinancialPhantasmagoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    expense_name VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100),
    expense_date DATE,
    notes TEXT
);
SELECT * FROM FinancialPhantasmagoria ;
INSERT INTO FinancialPhantasmagoria (expense_name, amount, category, expense_date, notes)
VALUES 
('Business Lunch', 45.75, 'Food & Dining', '2024-08-21', 'Client meeting at restaurant'),
('Office Supplies', 125.50, 'Office Expenses', '2024-08-20', 'Purchased new office chairs'),
('Travel Expenses', 300.00, 'Travel', '2024-08-18', 'Flight ticket for conference'),
('Software Subscription', 50.00, 'Software', '2024-08-15', 'Monthly software license fee');

UPDATE FinancialPhantasmagoria
SET amount = 49.99, notes = 'Revised lunch bill after tip'
WHERE id = 1;

DELETE FROM FinancialPhantasmagoria
WHERE id = 4;
