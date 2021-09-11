SELECT GRADE.Name,
Count(*) as [Total Authors]
FROM Author
JOIN Grade 
	ON Grade.Id = Author.GradeId
WHERE GradeId = 3 
GROUP BY Grade.Name