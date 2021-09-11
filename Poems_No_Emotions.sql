SELECT Count(*) as [Poems with no emotions]
FROM Poem
LEFT JOIN PoemEmotion 
	ON PoemEmotion.PoemId = Poem.Id
LEFT JOIN Emotion
	ON Emotion.Id = PoemEmotion.EmotionId
WHERE EmotionId IS NULL