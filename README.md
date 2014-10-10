# README

A simple Rails app to play with 'has_many through' Model associations.

A Code Fellow assignment.

# Resources

A single resource **Patient** can become in contact with many other patients.
Of these patients we do know their name, SS number and Hospital where they stay
quarantined or treated.

The way we map this relationship between patients is through another object: The
**Transmission** Model that aside from specifying a phisical transmission between to
Patients, it adds information about Location and Time, so CDC Agents have a way
to further search and map the spread of the disease.

Given a Patient, in its detail view we see who infected him and whom he
transmitted the disease to. Additional links allows us to "follow the infectious vector"
all along the tree. The initial patient is marked as "Patien Zero".

To create a new transmission we are offered selectors as drop down forms, and
the app performs some validation as for example, dont allow to create a new
transmission if the target was already infected, or if the transmission happened
before the source became infected (to be implemented).

Many new features could be added, like tree graph utilities that identify and
prevent the creation of loops, better timeline chart capabilities, etc.
