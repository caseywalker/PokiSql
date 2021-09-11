SELECT TOP 1
	Grade.Name as [Grade],
	Emotion.Name as [Emotion],
	Count(*) as [Total Poems]
FROM Poem
JOIN Author
	ON Author.Id = Poem.AuthorId
JOIN Grade
	ON Grade.Id = Author.GradeId
JOIN PoemEmotion
	ON PoemEmotion.PoemId = Poem.Id
JOIN Emotion
	ON Emotion.Id = PoemEmotion.EmotionId
WHERE Emotion.Name = 'Joy'
GROUP BY Grade.Name, Emotion.Name
ORDER BY 3 DESC