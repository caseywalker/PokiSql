SELECT GRADE.Name,
Count(*) as [Total Authors]
FROM Author
JOIN Grade 
	ON Grade.Id = Author.GradeId
GROUP BY Grade.Name
Order BY 1