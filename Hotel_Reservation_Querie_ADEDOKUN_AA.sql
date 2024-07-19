CREATING_TABLE
CREATE TABLE Hotel_Reservation (Booking_ID VARCHAR,	no_of_adults INT, no_of_children INT,	no_of_weekend_nights INT,	no_of_week_nights INT,	type_of_meal_plan VARCHAR,	room_type_reserved VARCHAR,	lead_time INTEGER,	arrival_date DATE,	market_segment_type VARCHAR,	avg_price_per_room NUMERIC (10,2),	booking_status VARCHAR);

1. What is the total number of reservations in the dataset?

SELECT COUNT (booking_id) AS Total_Reservation
FROM hotel_reservation

2. Which meal plan is the most popular among guests?

SELECT type_of_meal_plan, COUNT (*) AS total_oders
FROM hotel_reservation
GROUP BY type_of_meal_plan
ORDER BY total_oders DESC
LIMIT 1

3. What is the average price per room for reservations involving children?

SELECT ROUND(AVG (avg_price_per_room), 2) AS Avg_Price
FROM hotel_reservation
WHERE no_of_children > 0

4. How many reservations were made for the year 20XX (replace XX with the desired year)?

SELECT COUNT (booking_id) AS "2018_Total_Reservation"
FROM hotel_reservation
WHERE arrival_date > '2017-12-31'

5. What is the most commonly booked room type?

SELECT room_type_reserved, COUNT (*) AS Total_RoomType_Book
FROM hotel_reservation
GROUP BY room_type_reserved
ORDER BY Total_RoomType_Book DESC
LIMIT 3

6. How many reservations fall on a weekend (no_of_weekend_nights > 0)?

SELECT COUNT (booking_id) AS "Total_weekend_nights_reservations"
FROM hotel_reservation
WHERE no_of_weekend_nights > 0


7. What is the highest and lowest lead time for reservations?

SELECT
MAX (lead_time) AS Highest_Lead_Time,
MIN (lead_time) AS Lowest_Lead_Time
FROM hotel_reservation

8. What is the most common market segment type for reservations?

SELECT market_segment_type, COUNT (*) AS Total_Reservation
FROM hotel_reservation
GROUP BY market_segment_type
ORDER BY Total_Reservation DESC
LIMIT 3

9. How many reservations have a booking status of "Confirmed"?

SELECT booking_status, COUNT (*) AS TotalReservationBooked
FROM hotel_reservation
WHERE booking_status = 'Not_Canceled'
GROUP BY booking_status

10. What is the total number of adults and children across all reservations?

SELECT
SUM (no_of_adults) AS Total_Adults,
SUM (no_of_children) AS Total_Children
FROM hotel_reservation

11. What is the average number of weekend nights for reservations involving children?

SELECT ROUND (AVG (no_of_weekend_nights),2) AS Avg_Weekend_Night_Reservation
FROM hotel_reservation
WHERE no_of_children > 0

12. How many reservations were made in each month of the year (2017-2018)?

SELECT to_char(DATE_TRUNC('day', arrival_date), 'month') AS Month_Name,
COUNT (booking_id) AS Total_Reservation
FROM hotel_reservation
WHERE arrival_date < '2018-12-31'
GROUP BY Month_Name
ORDER BY Total_Reservation DESC

13. What is the average number of nights (both weekend and weekday) spent by guests for each room type?

SELECT room_type_reserved,
ROUND(AVG(no_of_weekend_nights + no_of_week_nights), 2) AS "Average_Number_OF_Nigths"
FROM hotel_reservation
GROUP BY room_type_reserved
ORDER BY room_type_reserved ASC

14. For reservations involving children, what is the most common room type, and what is the average price for that room type?

SELECT room_type_reserved, COUNT (*) AS CommonRoomType,
ROUND(AVG(avg_price_per_room), 2) AS Average_Price
from hotel_reservation
WHERE no_of_children >0
GROUP BY room_type_reserved
ORDER BY CommonRoomType DESC

15. Find the market segment type that generates the highest average price per room.

SELECT market_segment_type,
ROUND(AVG(avg_price_per_room),2) AS HighestAvgPrice
FROM hotel_reservation
GROUP BY market_segment_type
ORDER BY HighestAvgPrice DESC


THANK YOU... SQL QUERIES ANALYSES BY 

ADEDOKUN ABDULMALIK ADEYEMI