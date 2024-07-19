# Hotel-Reservation-Analysis-with-SQL-
In this Project, i uses PosrgreSQL to answer the questions related to dataset. 

#Overview:

The hotel industry relies on data to make informed decisions and provide a better guest experience. In this project, i  work with a hotel reservation dataset to gain insights into guest preferences, booking trends, and other key factors that impact the hotel's operations. i use SQL to query and analyze the data, as well as answer specific questions about the dataset.

Dataset Details:

The dataset includes the following columns:
1. Booking_ID: A unique identifier for each hotel reservation.
2. no_of_adults: The number of adults in the reservation.
3. no_of_children: The number of children in the reservation.
4. no_of_weekend_nights: The number of nights in the reservation that fall on weekends.
5. no_of_week_nights: The number of nights in the reservation that fall on weekdays.
6. type_of_meal_plan: The meal plan chosen by the guests.
7. room_type_reserved: The type of room reserved by the guests.
8. lead_time: The number of days between booking and arrival.
9. arrival_date: The date of arrival.
10. market_segment_type: The market segment to which the reservation belongs.
11. avg_price_per_room: The average price per room in the reservation.
12. booking_status: The status of the booking.

QUESTIONS?

 Here are 15 questions for which i write SQL queries to gain insights:

1. What is the total number of reservations in the dataset?
2. Which meal plan is the most popular among guests?
3. What is the average price per room for reservations involving children?
4. How many reservations were made for the year 20XX (replace XX with the desired year)?
5. What is the most commonly booked room type?
6. How many reservations fall on a weekend (no_of_weekend_nights > 0)?
7. What is the highest and lowest lead time for reservations?
8. What is the most common market segment type for reservations?
9. How many reservations have a booking status of "Confirmed"?
10. What is the total number of adults and children across all reservations?
11. What is the average number of weekend nights for reservations involving children?
12. How many reservations were made in each month of the year?
13. What is the average number of nights (both weekend and weekday) spent by guests for each room type?
14. For reservations involving children, what is the most common room type, and what is the average price for that room type?
15. Find the market segment type that generates the highest average price per room.

Usage
Hotel Reservation Analysis:

Load the Hotel Reservation Dataset_CLEAN.csv file into your SQL database.
Execute the SQL queries in the   Hotel Reservation Analysis_ADEDOKUN.SQL notebook.
Analyze the results and create visualizations if desired.
