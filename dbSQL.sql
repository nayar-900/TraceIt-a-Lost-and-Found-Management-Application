-- 1. List all lost items reported with user details
SELECT I.ItemID, I.Description, U.Name AS ReportedBy, R.ReportedAt
        	 FROM Item AS I
        	 JOIN Report R ON I.ItemID = R.ItemID
        	 JOIN User U ON R.UserID = U.UserID
       	 WHERE I.ItemType = 'Lost';

-- 2. Show details of all claimed items with their matched items
SELECT C.ClaimID, L.Description AS LostItem, F.Description AS FoundItem, C.ClaimedAt
             FROM Claim C
        	 JOIN Matching_Log M ON C.MatchID = M.MatchID
        	 JOIN Item L ON M.LostItemID = L.ItemID
        	 JOIN Item F ON M.FoundItemID = F.ItemID;

-- 3. Count number of items reported by each user, ordered by count descending
SELECT U.Name, COUNT(F.FeedbackID) AS FeedbackCount, AVG(F.Rating) AS 
        AvgRating FROM Feedback F
        JOIN User U ON F.UserID = U.UserID
        GROUP BY U.Name
        ORDER BY AvgRating DESC;

-- 4. List users who have given more than one feedback with average rating
SELECT U.Name, COUNT(R.ItemID) AS TotalReported
     	 FROM User U
             JOIN Report R ON U.UserID = R.UserID
             GROUP BY U.Name
             ORDER BY TotalReported DESC;

-- 5. List users who claimed items that were verified
SELECT Name FROM User
             WHERE UserID IN (
             SELECT C.UserID FROM Claim C
             JOIN Verification V ON C.ClaimID = V.ClaimID
             WHERE V.Status = 'Approved' );

-- 6. Show notifications sent by Admins related to verified claims only
SELECT N.Message, A.Name AS AdminName, U.Name AS UserName
         FROM Notification N
        JOIN Admin A ON N.AdminID = A.AdminID
        JOIN User U ON N.UserID = U.UserID
      WHERE N.ClaimID IN (SELECT ClaimID FROM Verification WHERE Status = 'Approved');

-- 7. Find item(s) with the highest match score
SELECT * FROM Matching_Log
              WHERE MatchScore = (SELECT MAX(MatchScore) FROM Matching_Log);

-- 8. Show the latest 5 returned items with their users and admins
SELECT IRL.ReturnedID, I.Description, U.Name AS ReturnedTo, A.Name AS HandledBy, IRL.ReturnedAt
              FROM Item_Return_Log IRL
              JOIN Item I ON IRL.ItemID = I.ItemID
              JOIN User U ON IRL.UserID = U.UserID
              JOIN Admin A ON IRL.AdminID = A.AdminID
              ORDER BY IRL.ReturnedAt DESC
              LIMIT 5;

-- 9. Average match score for each status type in Matching_Log
SELECT Status, COUNT(*) AS Matches, AVG(MatchScore) AS AvgScore
             FROM Matching_Log
             GROUP BY Status
             ORDER BY AvgScore DESC;

-- 10. List users with the total number of claims they made (include users with 0 claims)
SELECT U.Name, (
             SELECT COUNT(*) FROM Claim C WHERE C.UserID = U.UserID) AS TotalClaims
             FROM User U;
