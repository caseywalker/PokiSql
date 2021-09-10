SELECT TOP 76 *
FROM Author
JOIN Gender
	ON Gender.Id = Author.GenderId
ORDER BY Author.Name