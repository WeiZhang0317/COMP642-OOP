# Fresh Harvest Veggies Order Management System

This project, developed for the COMP642 course, implements an order management system for a vegetable company, allowing both customers and staff to log in, view, and manage orders. The project uses SQLAlchemy for object-relational mapping and MySQL for database storage, with an MVC architecture separating models, views, and controllers.

## Login Information

### Customer Logins
1. **Customer Alice (Regular Account)**
   - Username: `alice_wonder`
   - Password: `CustomerPass123`

2. **Customer Bob (Order Restrictions Due to Max Owing)**
   - Username: `bob_builder`
   - Password: `CustomerPass123`

3. **Corporate Customer Liz (Regular Account)**
   - Username: `corporate_Liz`
   - Password: `CorporatePass456`

4. **Corporate Customer Karen (Order Restrictions Due to Min Balance)**
   - Username: `corporate_karen`
   - Password: `CorporatePass456`

### Staff Logins
1. **Staff John (Admin Access)**
   - Username: `staff_john`
   - Password: `StaffPass789`
   
## Project Structure and Setup

1. **Database Setup**  
   The database uses `fresh_harvest12.sql`. 
   
2. **Data Insertion**  
   - **Insert Login Data**: Run `main.py` to create tables.Run `insertdataLogin.py` to populate customer and staff login details.
   - **Insert Vegetable Data**: Run `insertdataVeggie.py` to populate vegetable data.

3. **Controllers**
   - **Order and Payment Management**: `app.py` handles customer order selection and payments.
   - **Staff Management**: The controllers for staff operations are located in the `controller` folder.
   
4. **Models**
   - All model classes are located in the `model` folder, using SQLAlchemy for ORM.

## Requirements and Features

### Customer Functionalities
1. **Log in and Log out**
2. **View Products** - Access a list of available vegetables and premade boxes.
3. **Place Orders** - Customers can order vegetables and premade boxes, assembling boxes based on size.
4. **Payment Options** - Payments can be made via credit card, debit card, or charged to their account.
5. **View Current Order Details**
6. **Cancel Orders** - Orders can be canceled if they haven't been fulfilled.
7. **View Previous Orders**
8. **View Profile** - Customers can view their account details.

### Staff Functionalities
1. **Log in and Log out**
2. **Product Management** - View all vegetables and premade boxes.
3. **Order Management** - View and update current and previous orders.
4. **Customer Management** - View customer details, generate a customer list, and view sales.
5. **Sales Reports** - Generate total sales reports for the week, month, and year.
6. **Popular Items** - View a list of the most popular items.


## How to Run
1. Initialize the database using `fresh_harvest12.sql`.
2. Start the application, and use the provided login credentials to access different roles.
