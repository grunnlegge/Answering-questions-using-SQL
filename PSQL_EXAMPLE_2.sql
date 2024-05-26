--Find all impressionist artists and their year of birth
--SELECT * FROM artist;


SELECT full_name AS name, birth AS date
	FROM artist
WHERE style = 'Impressionist'