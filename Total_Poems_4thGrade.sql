SELECT Grade.Name, Count(*) as [Total Poems]
FROM Poem
JOIN Author
	ON Author.Id = Poem.AuthorId
JOIN Grade
	ON Grade.Id = Author.GradeId
WHERE Grade.Id = 4
GROUP BY Grade.Name