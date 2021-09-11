SELECT TOP 1
	AuthorId,
	Author.Name,
	Count(*) as [Total Poems]
FROM Poem
JOIN Author
	ON Author.Id = Poem.AuthorId
GROUP BY AuthorId, Author.Name
ORDER BY 3 DESC