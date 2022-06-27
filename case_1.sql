SELECT 
displacement_shape_id AS 'Desplazamiento id',
population AS Poblacion,
species_type_id AS 'Especie id',
CASE species_type_id
	WHEN 1 THEN 'Mamifero'
	WHEN 2 THEN 'Reptil'
END AS Estado FROM animal_species
