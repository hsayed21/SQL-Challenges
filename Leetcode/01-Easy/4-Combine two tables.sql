SELECT p.firstName,p.lastName, a.city, a.state FROM Person p
LEFT JOIN address a ON a.personId = p.personId