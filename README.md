# Online Hotel Reservation System

A ***Java-based web application*** for managing online hotel reservations.

## Objective

To provide a feature-rich Online Hotel Management System that allows the management of hotel operations. The system includes two user roles: guest and hotel admin.

## Prerequisites

- **Eclipse Enterprise Edition**
- **MySQL Workbench**
- **Apache Tomcat Server 9.0**

## Features

### 1. User Authentication
   - User Registration
   - User Login
   - Admin Login

### 2. User Account Management
   - Users can update their account details.
   - Users can delete their accounts.
   - Users can change their passwords.

### 3. View Packages
   - Users can view hotel packages.
   - Users can search for hotel packages.

### 4. Make Reservations
   - Users can make a reservation for a selected package.
   - Users can choose their stay duration, and the total cost is calculated accordingly.
   - If a user has a promo code, they can apply it for a discount on the total price.

### 5. Admin User Management
   - Admin can view the list of users.
   - Admin can view the list of admins.
   - Admin can promote a user to admin and demote them back to a regular user.

### 6. Admin Package Management
   - Admin can view current packages.
   - Admin can add a new package.
   - Admin can edit existing packages.
   - Admin can remove packages.

### 7. Admin Promotion Management
   - Admin can view current promotions.
   - Admin can add a new promotion.
   - Admin can edit existing promotions.
   - Admin can remove promotions.

### 8. Admin Reservation Management
   - Admin can view current reservations.
   - Admin can remove reservations.

## Tech Stack

- **Java**
- **MySQL**

## Installation and Running the Project

1. Clone or download this repository.
2. Open Eclipse EE.
3. Create a ***New Dynamic Web Project***.
4. When creating the new project, select ***Apache Tomcat v9.0*** as the Target Runtime.
5. Once the project is created, navigate to ***Project_name -> src***.
6. Delete the ***src*** folder.
7. Go to the ***Downloaded repository -> Project Files***.
8. Copy the ***src*** folder and paste it inside the newly created project in Eclipse EE.
9. Inside the ***src*** folder, navigate to ***main -> java -> com -> dbConnect -> dbConnect.java***.
10. In this file, update the ***url*** (YourDBName) and ***password*** (YourDBPassword) with your MySQL credentials, and save the changes.

    ```
    YourDBName = MySQL_Schema_Name
    YourDBPassword = MySQL_root_Password
    ```

11. Right-click on the project in Project Explorer.
12. Go to ***Properties***.
13. From the left sidebar, select ***Java Build Path***.
14. In the right tab under ***Java Build Path***, go to the ***Libraries*** tab.
15. Click on ***Classpath***, then on the right side, select ***Add External JARs***.
16. Select all three JAR files located in the ***Downloaded repository -> JAR Files***.
17. Click ***Apply***, then ***Apply and Close***.
18. Go to the ***Servers*** tab in Eclipse EE.
19. Double-click on ***Apache Tomcat v9.0 Server at localhost***.
20. In the overview, change the ***Tomcat admin port*** to ***8005*** and ***HTTP/1.1*** to ***8090***, then save the changes.
21. Open MySQL Workbench and connect to your MySQL server.
22. Create a new schema.
23. From the ***Server*** tab at the top, select ***Data Import***.
24. In the ***Import from Disk*** section, select ***Import from Self-Contained File***.
25. Select the HotelDB.sql file from ***Downloaded repository -> Database***.
26. Select the newly created schema from the drop-down list as the ***Default Target Schema***.
27. Go to the ***Import Progress*** section and click ***Start Import*** at the bottom right corner.
28. Go back to Eclipse EE.
29. Right-click on the project and go to ***Run As*** -> ***Run on Server***.
30. Select ***Choose an existing server*** and click Next.
31. Add the project to the right side by using ***Add >***, then click ***Finish***.
32. The project will open in your default browser.
33. You can sign up as a user at any time by going to the login page.
34. To log in as an Admin, use ***Email = admin@admin.com*** and ***Password = Admin123***.
35. Enjoy!

## Contribution

- This project was created by ***Kavindu Kanchana*** and ***Jaliya Herath***
