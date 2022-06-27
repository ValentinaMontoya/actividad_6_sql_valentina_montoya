SELECT NAME, population,
SUM(population) AS Población
FROM animal_species
GROUP BY NAME, population
HAVING Población > 50000