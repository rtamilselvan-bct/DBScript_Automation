CREATE TABLE IssueLogs (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    IssueTitle NVARCHAR(200) NOT NULL,
    IssueDescription NVARCHAR(MAX),
    Severity VARCHAR(20) CHECK (Severity IN ('Low','Medium','High','Critical')),
    Status VARCHAR(20) DEFAULT 'Open' CHECK (Status IN ('Open','In Progress','Resolved','Closed')),
    CreatedBy NVARCHAR(100),
    AssignedTo NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE(),
    UpdatedDate DATETIME NULL
);