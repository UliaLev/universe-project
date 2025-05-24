# universe-project
Universe Database Project

# Universe Database Project

This project is a PostgreSQL database modeling a simplified universe containing galaxies, stars, planets, moons, and planet types.

## Tables

- **galaxy**: Stores galaxies with attributes like name, description, age, type, and distance from Earth (in light years).
- **star**: Stores stars with their properties and a foreign key linking to their galaxy.
- **planet**: Stores planets orbiting stars, with attributes including life presence, planet type, and distance from Earth.
- **moon**: Stores moons orbiting planets, with details such as diameter and spherical shape.
- **planet_type**: Categorizes planets by type with descriptions.

## Notes

- Distances are measured in light years (`distance_from_earth_ly`).
- This project follows freeCodeCamp's curriculum for learning SQL and relational databases.

