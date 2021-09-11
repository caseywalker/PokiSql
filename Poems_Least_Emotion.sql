SELECT TOP 1
	Emotion.Name, 
	Count(*) as [Total Poems]
FROM Poem
JOIN PoemEmotion 
	ON PoemEmotion.PoemId = Poem.Id
JOIN Emotion
	ON Emotion.Id = PoemEmotion.EmotionId
GROUP BY Emotion.Name
ORDER BY 2 ASC