SELECT Title, Body FROM Blog.dbo.Posts

SELECT Username, Fullname FROM Users ORDER BY Fullname DESC, Username DESC

SELECT * FROM Users WHERE ID IN (SELECT AuthorID FROM Posts)

SELECT u.Username AS UserName, p.Title
FROM Users u JOIN Posts p ON u.ID = p.AuthorID

SELECT Username, Fullname
FROM Users
WHERE ID = (SELECT AuthorID FROM Posts WHERE ID = 4)

SELECT Username, Fullname
FROM Users
WHERE ID IN (SELECT AuthorID FROM Posts)
ORDER BY ID DESC