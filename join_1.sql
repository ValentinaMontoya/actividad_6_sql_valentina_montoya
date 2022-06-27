SELECT conservation_status_id, displacement_shape_id, embryonic_development_id, especies_animal_id, habitats_id 
FROM animal_species
	JOIN habitats_especies_animal ON especies_animal_id = habitats_id