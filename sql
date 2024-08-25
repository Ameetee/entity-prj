Entities and Their Attributes
Gymnasium

Attributes:
Gymnasium ID (Primary Key)
Name
Address
Telephone Number
Member

Attributes:
Member ID (Primary Key)
Last Name
First Name
Address
Date of Birth
Gender
Gymnasium ID (Foreign Key referencing Gymnasium)
Session

Attributes:
Session ID (Primary Key)
Type of Sport
Schedule
Maximum Capacity (20 members)
Coach

Attributes:
Coach ID (Primary Key)
Last Name
First Name
Age
Specialty
Registration

Attributes:
Registration ID (Primary Key)
Member ID (Foreign Key referencing Member)
Session ID (Foreign Key referencing Session)
Note: This entity represents the many-to-many relationship between Members and Sessions.
Relationships
Gymnasium - Member

Relationship: One-to-Many
Description: A gymnasium can have many members. Each member is registered at one gymnasium.
Session - Coach

Relationship: Many-to-Many
Description: A session can be led by up to two coaches, and a coach can lead multiple sessions.
Intermediate Table: SessionCoach to represent this relationship.
Attributes:
Session ID (Foreign Key referencing Session)
Coach ID (Foreign Key referencing Coach)
Member - Session (via Registration)

Relationship: Many-to-Many
Description: A member can register for multiple sessions, and each session can have multiple members.
Intermediate Table: Registration to handle this relationship.
Entity-Relationship Diagram (ERD)
ERD Components:

Entities: Represented by rectangles with their attributes listed inside.
Relationships: Represented by diamonds connecting the entities, with lines showing the nature of the relationship (one-to-many, many-to-many).
Intermediate Tables: Used to manage many-to-many relationships.