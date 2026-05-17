-- ✅ Create table: reports
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reports]') AND type = 'U')
BEGIN
    CREATE TABLE dbo.reports (
        report_id INT IDENTITY(1,1) PRIMARY KEY,
        report_name VARCHAR(100) NOT NULL,
        report_type VARCHAR(50),
        created_by VARCHAR(100),
        created_date DATETIME DEFAULT GETDATE(),
        status VARCHAR(20) DEFAULT 'ACTIVE'
    );
END;
GO

-- ✅ Insert sample data
INSERT INTO dbo.reports (report_name, report_type, created_by, status)
VALUES
('Student Enrollment Report', 'STUDENT', 'admin', 'ACTIVE'),
('Course Popularity Report', 'COURSE', 'admin', 'ACTIVE'),
('Monthly Enrollment Report', 'ANALYTICS', 'system', 'ACTIVE'),
('Inactive Students Report', 'STUDENT', 'admin', 'INACTIVE'),
('Top Courses Report', 'COURSE', 'system', 'ACTIVE');
GO