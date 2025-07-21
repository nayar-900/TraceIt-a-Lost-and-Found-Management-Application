-- TraceIt Database DML - Sample Data
-- Use the database
USE TraceIt;

-- 1. Admin Table (2 admins as requested)
INSERT INTO Admin (AdminID, Name, Email, PasswordHash, ContactInfo) VALUES
(1, 'Sarah Johnson', 'sarah.admin@traceit.com', 'hash_admin_sarah_2024', '+1-555-0101'),
(2, 'Michael Chen', 'michael.admin@traceit.com', 'hash_admin_michael_2024', '+1-555-0102');

-- 2. User Table (15 users)
INSERT INTO User (UserID, Name, Email, PasswordHash, ContactInfo) VALUES
(1, 'Emma Wilson', 'emma.wilson@email.com', 'hash_emma_w_2024', '+1-555-1001'),
(2, 'James Rodriguez', 'james.rod@email.com', 'hash_james_r_2024', '+1-555-1002'),
(3, 'Sophia Lee', 'sophia.lee@email.com', 'hash_sophia_l_2024', '+1-555-1003'),
(4, 'Lucas Brown', 'lucas.brown@email.com', 'hash_lucas_b_2024', '+1-555-1004'),
(5, 'Ava Taylor', 'ava.taylor@email.com', 'hash_ava_t_2024', '+1-555-1005'),
(6, 'Noah Davis', 'noah.davis@email.com', 'hash_noah_d_2024', '+1-555-1006'),
(7, 'Isabella Garcia', 'isabella.garcia@email.com', 'hash_isabella_g_2024', '+1-555-1007'),
(8, 'Mason Miller', 'mason.miller@email.com', 'hash_mason_m_2024', '+1-555-1008'),
(9, 'Mia Anderson', 'mia.anderson@email.com', 'hash_mia_a_2024', '+1-555-1009'),
(10, 'Ethan Thomas', 'ethan.thomas@email.com', 'hash_ethan_t_2024', '+1-555-1010'),
(11, 'Charlotte Jackson', 'charlotte.jackson@email.com', 'hash_charlotte_j_2024', '+1-555-1011'),
(12, 'Alexander White', 'alex.white@email.com', 'hash_alex_w_2024', '+1-555-1012'),
(13, 'Amelia Harris', 'amelia.harris@email.com', 'hash_amelia_h_2024', '+1-555-1013'),
(14, 'Benjamin Martin', 'ben.martin@email.com', 'hash_ben_m_2024', '+1-555-1014'),
(15, 'Harper Thompson', 'harper.thompson@email.com', 'hash_harper_t_2024', '+1-555-1015');

-- 3. Item Table (15+ items with status: returning, matched, resolved)
INSERT INTO Item (ItemID, Category, Description, Color, Brand, Size, ItemCondition, Material, TagNumber, Location, DateReported, Status, ImageURL, ItemType) VALUES
(1, 'Electronics', 'iPhone 14 Pro with cracked screen', 'Space Gray', 'Apple', 'Standard', 'Damaged', 'Aluminum/Glass', 'TAG001', 'Library Study Hall', '2024-06-01 14:30:00', 'matched', '/images/item001.jpg', 'Lost'),
(2, 'Accessories', 'Black leather wallet with cards', 'Black', 'Coach', 'Small', 'Good', 'Leather', 'TAG002', 'Campus Cafeteria', '2024-06-02 09:15:00', 'resolved', '/images/item002.jpg', 'Lost'),
(3, 'Clothing', 'Blue denim jacket size M', 'Blue', 'Levis', 'Medium', 'Excellent', 'Cotton', 'TAG003', 'Parking Lot B', '2024-06-02 16:45:00', 'returning', '/images/item003.jpg', 'Found'),
(4, 'Electronics', 'AirPods Pro in white case', 'White', 'Apple', 'Standard', 'Good', 'Plastic', 'TAG004', 'Gym Locker Room', '2024-06-03 11:20:00', 'matched', '/images/item004.jpg', 'Lost'),
(5, 'Accessories', 'Silver wristwatch with leather strap', 'Silver', 'Fossil', 'Adjustable', 'Fair', 'Metal/Leather', 'TAG005', 'Student Center', '2024-06-03 13:10:00', 'resolved', '/images/item005.jpg', 'Found'),
(6, 'Books', 'Calculus textbook 12th edition', 'Blue', 'Pearson', 'Large', 'Good', 'Paper', 'TAG006', 'Math Building Room 205', '2024-06-04 10:30:00', 'returning', '/images/item006.jpg', 'Lost'),
(7, 'Electronics', 'Samsung Galaxy earbuds', 'Black', 'Samsung', 'Small', 'Excellent', 'Plastic', 'TAG007', 'Bus Stop Main', '2024-06-04 15:20:00', 'matched', '/images/item007.jpg', 'Found'),
(8, 'Accessories', 'Red baseball cap with team logo', 'Red', 'Nike', 'One Size', 'Good', 'Cotton', 'TAG008', 'Sports Complex', '2024-06-05 08:45:00', 'resolved', '/images/item008.jpg', 'Lost'),
(9, 'Clothing', 'Gray university hoodie size L', 'Gray', 'University Store', 'Large', 'Good', 'Cotton Blend', 'TAG009', 'Dormitory Common Area', '2024-06-05 19:30:00', 'returning', '/images/item009.jpg', 'Found'),
(10, 'Electronics', 'MacBook charger 60W', 'White', 'Apple', 'Standard', 'Good', 'Plastic', 'TAG010', 'Computer Lab 3', '2024-06-06 12:15:00', 'matched', '/images/item010.jpg', 'Lost'),
(11, 'Accessories', 'Black backpack with laptop compartment', 'Black', 'JanSport', 'Large', 'Fair', 'Nylon', 'TAG011', 'Main Entrance', '2024-06-06 17:00:00', 'resolved', '/images/item011.jpg', 'Found'),
(12, 'Electronics', 'Bluetooth speaker portable', 'Blue', 'JBL', 'Medium', 'Excellent', 'Plastic', 'TAG012', 'Outdoor Amphitheater', '2024-06-07 14:20:00', 'returning', '/images/item012.jpg', 'Lost'),
(13, 'Accessories', 'Designer sunglasses with case', 'Black', 'Ray-Ban', 'Medium', 'Good', 'Plastic/Metal', 'TAG013', 'Tennis Courts', '2024-06-07 16:45:00', 'matched', '/images/item013.jpg', 'Found'),
(14, 'Keys', 'Car keys with blue keychain', 'Silver', 'Honda', 'Small', 'Good', 'Metal', 'TAG014', 'Faculty Parking', '2024-06-08 09:30:00', 'resolved', '/images/item014.jpg', 'Lost'),
(15, 'Clothing', 'White sneakers size 9', 'White', 'Adidas', '9', 'Fair', 'Synthetic', 'TAG015', 'Track Field', '2024-06-08 18:15:00', 'returning', '/images/item015.jpg', 'Found'),
(16, 'Electronics', 'Tablet with purple case', 'Purple', 'iPad', 'Standard', 'Good', 'Aluminum', 'TAG016', 'Art Building Studio', '2024-06-09 11:00:00', 'matched', '/images/item016.jpg', 'Lost'),
(17, 'Accessories', 'Gold bracelet with charms', 'Gold', 'Pandora', 'Medium', 'Excellent', 'Gold', 'TAG017', 'Swimming Pool Area', '2024-06-09 15:30:00', 'resolved', '/images/item017.jpg', 'Found');

-- 4. Report Table (15+ reports)
INSERT INTO Report (ReportID, ItemID, AdminID, UserID, ReportedAt) VALUES
(1, 1, 1, 1, '2024-06-01 14:35:00'),
(2, 2, 2, 2, '2024-06-02 09:20:00'),
(3, 3, 1, 3, '2024-06-02 16:50:00'),
(4, 4, 2, 4, '2024-06-03 11:25:00'),
(5, 5, 1, 5, '2024-06-03 13:15:00'),
(6, 6, 2, 6, '2024-06-04 10:35:00'),
(7, 7, 1, 7, '2024-06-04 15:25:00'),
(8, 8, 2, 8, '2024-06-05 08:50:00'),
(9, 9, 1, 9, '2024-06-05 19:35:00'),
(10, 10, 2, 10, '2024-06-06 12:20:00'),
(11, 11, 1, 11, '2024-06-06 17:05:00'),
(12, 12, 2, 12, '2024-06-07 14:25:00'),
(13, 13, 1, 13, '2024-06-07 16:50:00'),
(14, 14, 2, 14, '2024-06-08 09:35:00'),
(15, 15, 1, 15, '2024-06-08 18:20:00'),
(16, 16, 2, 1, '2024-06-09 11:05:00'),
(17, 17, 1, 2, '2024-06-09 15:35:00');

-- 5. Matching_Log Table (15+ matches)
INSERT INTO Matching_Log (MatchID, LostItemID, FoundItemID, MatchScore, MatchedAt, Status) VALUES
(1, 1, 4, 85.5, '2024-06-03 12:00:00', 'Confirmed'),
(2, 2, 5, 92.3, '2024-06-03 14:00:00', 'Confirmed'),
(3, 6, 3, 78.9, '2024-06-04 11:00:00', 'Pending'),
(4, 8, 7, 88.7, '2024-06-05 09:00:00', 'Confirmed'),
(5, 10, 9, 91.2, '2024-06-06 13:00:00', 'Confirmed'),
(6, 12, 11, 83.4, '2024-06-07 15:00:00', 'Confirmed'),
(7, 14, 13, 89.8, '2024-06-08 10:00:00', 'Confirmed'),
(8, 16, 15, 76.5, '2024-06-09 12:00:00', 'Pending'),
(9, 1, 17, 94.1, '2024-06-09 16:00:00', 'Confirmed'),
(10, 4, 3, 82.7, '2024-06-04 17:00:00', 'Rejected'),
(11, 6, 7, 79.3, '2024-06-05 11:00:00', 'Pending'),
(12, 8, 9, 87.6, '2024-06-06 14:00:00', 'Confirmed'),
(13, 10, 11, 90.4, '2024-06-07 16:00:00', 'Confirmed'),
(14, 12, 13, 85.8, '2024-06-08 11:00:00', 'Confirmed'),
(15, 14, 15, 88.2, '2024-06-09 13:00:00', 'Confirmed');

-- 6. Claim Table (15+ claims)
INSERT INTO Claim (ClaimID, MatchID, ClaimedAt, UserID) VALUES
(1, 1, '2024-06-03 14:30:00', 1),
(2, 2, '2024-06-03 16:15:00', 2),
(3, 3, '2024-06-04 12:45:00', 6),
(4, 4, '2024-06-05 10:20:00', 8),
(5, 5, '2024-06-06 15:10:00', 10),
(6, 6, '2024-06-07 17:30:00', 12),
(7, 7, '2024-06-08 11:45:00', 14),
(8, 8, '2024-06-09 13:20:00', 1),
(9, 9, '2024-06-09 18:00:00', 1),
(10, 11, '2024-06-05 13:15:00', 6),
(11, 12, '2024-06-06 16:40:00', 8),
(12, 13, '2024-06-07 18:25:00', 10),
(13, 14, '2024-06-08 13:50:00', 12),
(14, 15, '2024-06-09 15:35:00', 14),
(15, 2, '2024-06-04 09:10:00', 5);

-- 7. Verification Table (15+ verifications)
INSERT INTO Verification (VerificationID, ClaimID, AdminID, VerifiedAt, Status) VALUES
(1, 1, 1, '2024-06-03 16:00:00', 'Approved'),
(2, 2, 2, '2024-06-03 17:30:00', 'Approved'),
(3, 3, 1, '2024-06-04 14:20:00', 'Pending'),
(4, 4, 2, '2024-06-05 11:45:00', 'Approved'),
(5, 5, 1, '2024-06-06 16:30:00', 'Approved'),
(6, 6, 2, '2024-06-07 19:00:00', 'Approved'),
(7, 7, 1, '2024-06-08 13:15:00', 'Approved'),
(8, 8, 2, '2024-06-09 15:40:00', 'Pending'),
(9, 9, 1, '2024-06-09 19:30:00', 'Approved'),
(10, 10, 2, '2024-06-05 15:45:00', 'Rejected'),
(11, 11, 1, '2024-06-06 18:20:00', 'Approved'),
(12, 12, 2, '2024-06-07 20:10:00', 'Approved'),
(13, 13, 1, '2024-06-08 15:25:00', 'Approved'),
(14, 14, 2, '2024-06-09 17:15:00', 'Approved'),
(15, 15, 1, '2024-06-04 11:30:00', 'Approved');

-- 8. Item_Return_Log Table (15+ returns)
INSERT INTO Item_Return_Log (ReturnedID, ItemID, AdminID, Remarks, ReturnedAt, Status, UserID) VALUES
(1, 1, 1, 'Item successfully returned to owner', '2024-06-03 17:00:00', 'Completed', 1),
(2, 2, 2, 'Wallet returned with all contents intact', '2024-06-03 18:00:00', 'Completed', 2),
(3, 5, 1, 'Watch returned after verification', '2024-06-06 17:00:00', 'Completed', 5),
(4, 8, 2, 'Baseball cap returned to rightful owner', '2024-06-05 12:30:00', 'Completed', 8),
(5, 11, 1, 'Backpack returned with all items', '2024-06-07 19:30:00', 'Completed', 11),
(6, 14, 2, 'Car keys handed over to owner', '2024-06-08 14:00:00', 'Completed', 14),
(7, 17, 1, 'Gold bracelet returned safely', '2024-06-09 20:00:00', 'Completed', 2),
(8, 4, 2, 'AirPods returned after claim verification', '2024-06-05 13:00:00', 'Completed', 4),
(9, 10, 1, 'MacBook charger given back to student', '2024-06-06 18:00:00', 'Completed', 10),
(10, 12, 2, 'Bluetooth speaker returned', '2024-06-07 20:30:00', 'Completed', 12),
(11, 3, 1, 'Denim jacket being prepared for return', '2024-06-04 15:00:00', 'In Progress', 3),
(12, 6, 2, 'Textbook ready for pickup', '2024-06-04 16:00:00', 'Ready for Pickup', 6),
(13, 9, 1, 'University hoodie awaiting collection', '2024-06-06 10:00:00', 'Ready for Pickup', 9),
(14, 13, 2, 'Sunglasses verified and ready', '2024-06-08 12:00:00', 'Ready for Pickup', 13),
(15, 15, 1, 'White sneakers cleaned and ready', '2024-06-09 14:00:00', 'Ready for Pickup', 15);

-- 9. Notification Table (15+ notifications)
INSERT INTO Notification (NotificationID, UserID, AdminID, Message, Timestamp, MatchID, ClaimID) VALUES
(1, 1, 1, 'Your lost iPhone has been matched with a found item', '2024-06-03 12:05:00', 1, NULL),
(2, 2, 2, 'Your wallet claim has been approved', '2024-06-03 17:35:00', NULL, 2),
(3, 6, 1, 'Potential match found for your textbook', '2024-06-04 11:15:00', 3, NULL),
(4, 8, 2, 'Your baseball cap is ready for pickup', '2024-06-05 12:35:00', NULL, 4),
(5, 10, 1, 'MacBook charger claim verified successfully', '2024-06-06 16:35:00', NULL, 5),
(6, 12, 2, 'Bluetooth speaker has been returned', '2024-06-07 20:35:00', NULL, 6),
(7, 14, 1, 'Your car keys are available for collection', '2024-06-08 14:05:00', NULL, 7),
(8, 1, 2, 'New match found for your tablet', '2024-06-09 12:10:00', 8, NULL),
(9, 1, 1, 'High confidence match for your iPhone', '2024-06-09 16:05:00', 9, NULL),
(10, 5, 2, 'Your watch has been successfully returned', '2024-06-06 17:05:00', NULL, 15),
(11, 3, 1, 'Your denim jacket is ready for pickup', '2024-06-04 15:05:00', NULL, 3),
(12, 7, 2, 'Samsung earbuds found - please verify claim', '2024-06-04 15:30:00', 4, NULL),
(13, 9, 1, 'University hoodie awaiting your collection', '2024-06-06 10:05:00', NULL, NULL),
(14, 11, 2, 'Backpack returned successfully', '2024-06-07 19:35:00', NULL, 6),
(15, 13, 1, 'Sunglasses claim approved - ready for pickup', '2024-06-08 12:05:00', NULL, 8);

-- 10. Feedback Table (15+ feedback entries)
INSERT INTO Feedback (FeedbackID, UserID, CreatedAt, FeedbackType, Comment, Rating) VALUES
(1, 1, '2024-06-03 18:00:00', 'Service Quality', 'Excellent service, got my phone back quickly', 5.0),
(2, 2, '2024-06-03 19:00:00', 'System Usability', 'Easy to report and track my lost wallet', 4.5),
(3, 5, '2024-06-06 18:00:00', 'Staff Helpfulness', 'Admin was very helpful during verification', 4.8),
(4, 8, '2024-06-05 13:30:00', 'Overall Experience', 'Great system for lost and found items', 4.7),
(5, 10, '2024-06-06 19:00:00', 'Process Efficiency', 'Quick matching and return process', 4.9),
(6, 11, '2024-06-07 20:00:00', 'Communication', 'Good notifications throughout the process', 4.6),
(7, 12, '2024-06-07 21:00:00', 'Service Quality', 'Speaker returned in perfect condition', 5.0),
(8, 14, '2024-06-08 15:00:00', 'System Usability', 'Website could be more user-friendly', 3.8),
(9, 2, '2024-06-09 21:00:00', 'Staff Helpfulness', 'Sarah was amazing in helping with my bracelet', 5.0),
(10, 4, '2024-06-05 14:00:00', 'Overall Experience', 'Satisfied with the service provided', 4.2),
(11, 6, '2024-06-04 17:00:00', 'Process Efficiency', 'Matching took longer than expected', 3.5),
(12, 7, '2024-06-04 16:00:00', 'Communication', 'Regular updates were very helpful', 4.4),
(13, 9, '2024-06-06 11:00:00', 'Service Quality', 'Professional handling of my hoodie', 4.3),
(14, 13, '2024-06-08 13:00:00', 'System Usability', 'Easy to submit claims online', 4.1),
(15, 15, '2024-06-09 15:00:00', 'Overall Experience', 'Good experience overall, minor delays', 4.0);
