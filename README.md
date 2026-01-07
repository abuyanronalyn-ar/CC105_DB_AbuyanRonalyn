The Event Registration System is a database-driven application designed to manage events, participant registrations, attendance, and payments in an organized and efficient manner.
It allows administrators to create events, users to register for events, and staff to track attendance and payment status using a centralized database.

The system uses a relational database model to ensure data accuracy, consistency, and proper relationships between events, participants, and registrations.

SYSTEM PURPOSE

The main purpose of the Event Registration System is to:

1. Simplify event management by storing event details in one centralized database.

2. Prevent duplicate registrations through proper table relationships and constraints.

3. Track participant attendance during events accurately.

4. Monitor payment status for paid events.

5. Provide reliable reports using JOIN queries that demonstrate relationships between tables.

6. Improve data integrity by using foreign keys and cascading rules.

🗂️ DATABASE PURPOSE (Per Table)

👤 Users Table

Stores administrator and staff login credentials

Controls access to system features

Differentiates roles (admin / staff)

📅 Events Table

Stores event details such as name, date, time, and location

Serves as the main entity of the system

🧑 Participants Table

Stores participant personal information

Ensures unique participants using email constraint

📝 Registrations Table

Acts as a bridge table between events and participants

Prevents duplicate event registration

Represents a many-to-many relationship

✅ Attendance Table

Tracks whether a registered participant attended the event

Prevents multiple check-ins for the same registration

💳 Payments Table

Stores payment information for each registration

Tracks payment method and status

Ensures one payment per registration

🔗 RELATIONSHIP OVERVIEW

One event can have many registrations

One participant can register for many events

Each registration can have:

One attendance record

One payment record

All relationships are enforced using foreign keys

📈 BENEFITS OF THIS DESIGN

✔ Organized and structured data
✔ Reduced data redundancy
✔ Accurate reporting
✔ Easy system maintenance
✔ Scalable for future features
✔ Suitable for web and mobile applications
