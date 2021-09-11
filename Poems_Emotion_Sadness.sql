SELECT
	Emotion.Name, 
	Count(*) as [Total Poems]
FROM Poem
JOIN PoemEmotion 
	ON PoemEmotion.PoemId = Poem.Id
JOIN Emotion
	ON Emotion.Id = PoemEmotion.EmotionId
WHERE Emotion.Name = 'Sadness'
GROUP BY Emotion.Name