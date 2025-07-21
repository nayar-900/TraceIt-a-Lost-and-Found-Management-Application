-- dbDDL.sql

-- Database Creation
CREATE DATABASE TraceIt;

-- Use database
USE TraceIt;

-- 1. User Table
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    PasswordHash VARCHAR(100),
    ContactInfo VARCHAR(100)
);

-- 2. Admin Table
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    PasswordHash VARCHAR(100),
    ContactInfo VARCHAR(100)
);

-- 3. Item Table
CREATE TABLE Item (
    ItemID INT PRIMARY KEY,
    Category VARCHAR(100),
    Description VARCHAR(100),
    Color VARCHAR(100),
    Brand VARCHAR(100),
    Size VARCHAR(100),
    ItemCondition VARCHAR(100),
    Material VARCHAR(100),
    TagNumber VARCHAR(100),
    Location VARCHAR(100),
    DateReported DATETIME,
    Status VARCHAR(100),
    ImageURL VARCHAR(100),
    ItemType VARCHAR(100)
);

-- 4. Report Table
CREATE TABLE Report (
    ReportID INT PRIMARY KEY,
    ItemID INT,
    AdminID INT,
    UserID INT,
    ReportedAt DATETIME,
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID),
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- 5. Matching_Log Table
CREATE TABLE Matching_Log (
    MatchID INT PRIMARY KEY,
    LostItemID INT,
    FoundItemID INT,
    MatchScore FLOAT,
    MatchedAt DATETIME,
    Status VARCHAR(100),
    FOREIGN KEY (LostItemID) REFERENCES Item(ItemID),
    FOREIGN KEY (FoundItemID) REFERENCES Item(ItemID)
);

-- 6. Claim Table
CREATE TABLE Claim (
    ClaimID INT PRIMARY KEY,
    MatchID INT,
    ClaimedAt DATETIME,
    UserID INT,
    FOREIGN KEY (MatchID) REFERENCES Matching_Log(MatchID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- 7. Verification Table
CREATE TABLE Verification (
    VerificationID INT PRIMARY KEY,
    ClaimID INT,
    AdminID INT,
    VerifiedAt DATETIME,
    Status VARCHAR(100),
    FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID),
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

-- 8. Item_Return_Log Table
CREATE TABLE Item_Return_Log (
    ReturnedID INT PRIMARY KEY,
    ItemID INT,
    AdminID INT,
    Remarks VARCHAR(100),
    ReturnedAt DATETIME,
    Status VARCHAR(100),
    UserID INT,
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID),
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- 9. Notification Table
CREATE TABLE Notification (
    NotificationID INT PRIMARY KEY,
    UserID INT,
    AdminID INT,
    Message VARCHAR(100),
    Timestamp DATETIME,
    MatchID INT,
    ClaimID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID),
    FOREIGN KEY (MatchID) REFERENCES Matching_Log(MatchID),
    FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID)
);

-- 10. Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    UserID INT,
    CreatedAt DATETIME,
    FeedbackType VARCHAR(100),
    Comment VARCHAR(100),
    Rating FLOAT,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

-- 11. Indexes
CREATE INDEX idx_item_status ON Item(Status);
CREATE INDEX idx_report_user ON Report(UserID);
CREATE INDEX idx_match_score ON Matching_Log(MatchScore);

-- 12. View: View of Verified Claims with User & Admin Info
CREATE VIEW VerifiedClaimsView AS
SELECT 
    V.VerificationID,
    V.VerifiedAt,
    V.Status,
    C.ClaimID,
    U.Name AS UserName,
    A.Name AS AdminName
FROM Verification V
JOIN Claim C ON V.ClaimID = C.ClaimID
JOIN User U ON C.UserID = U.UserID
JOIN Admin A ON V.AdminID = A.AdminID;

-- 13. Trigger: Automatically set item status to 'Claimed' after inserting a claim
DELIMITER //
CREATE TRIGGER AfterClaimInsert
AFTER INSERT ON Claim
FOR EACH ROW
BEGIN
    UPDATE Item
    SET Status = 'Claimed'
    WHERE ItemID IN (
        SELECT LostItemID FROM Matching_Log WHERE MatchID = NEW.MatchID
        UNION
        SELECT FoundItemID FROM Matching_Log WHERE MatchID = NEW.MatchID
    );
END;
//
DELIMITER ;