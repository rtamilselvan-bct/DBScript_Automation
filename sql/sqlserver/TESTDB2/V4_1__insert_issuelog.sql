--========================
INSERT INTO IssueLogs
(IssueTitle, IssueDescription, Severity, Status, CreatedBy, AssignedTo)
VALUES
('Login Failure', 'Users unable to login using valid credentials', 'High', 'Open', 'Tamilselvan', 'Ganapathy'),

('API Timeout', 'Payment API taking too long to respond', 'Critical', 'In Progress', 'Ravi', 'Hari'),

('UI Alignment Issue', 'Button misaligned on dashboard page', 'Low', 'Open', 'Kumar', 'Selva'),

('Database Deadlock', 'Deadlock occurs during batch processing', 'High', 'Resolved', 'Anand', 'Sundar'),

('Email Notification Failure', 'System not sending emails', 'Medium', 'Open', 'Priya', 'Ganapathy');