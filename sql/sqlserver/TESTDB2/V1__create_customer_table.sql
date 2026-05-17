CREATE TABLE customers (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    created_at DATETIME DEFAULT GETDATE()
);