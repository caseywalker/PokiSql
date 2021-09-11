SELECT
	Gender.Name as [Gender],
	Emotion.Name as [Emotion],
	Count(*) as [Total Poems]
FROM Poem
JOIN Author
	ON Author.Id = Poem.AuthorId
JOIN Gender
	ON Gender.Id = Author.GenderId
JOIN PoemEmotion
	ON PoemEmotion.PoemId = Poem.Id
JOIN Emotion
	ON Emotion.Id = PoemEmotion.EmotionId
WHERE Emotion.Name = 'Fear'
GROUP BY Gender.Name, Emotion.Name
ORDER BY 3 ASC