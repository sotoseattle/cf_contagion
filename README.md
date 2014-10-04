# README

A simple Rails app to play with 'has_many through' Model associations.

A Code Fellow assignment.

# Resources

A single resource **Patient** can become in contact with many other patients.
Of these patients we do know their name, SS number and Hospital where they stay
quarantined or treated.

The way we map this relationship between patients is through another object: The
**Contact** that aside from specifying a phisiscal contact between to
Patients, it adds information about Location and Time, so CDC Agents have a way
to further search and map the spread of the disease.
