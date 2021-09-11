SELECT GRADE.Name,
Count(*) as [Total Authors]
FROM Author
JOIN Grade 
	ON Grade.Id = Author.GradeId
WHERE GradeId = 3 or GradeId = 1 or GradeId = 2
GROUP BY Grade.Name