SELECT TOP 76 *
FROM Author
JOIN Grade
	ON Grade.Id = Author.GradeId
ORDER BY Author.Name