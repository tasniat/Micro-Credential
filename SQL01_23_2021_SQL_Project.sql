/**********
1.) Videos table. Create one table to keep track of the videos. This table should include a unique ID,
the title of the video, the length in minutes, and the URL. Populate the table with at least three
related videos from YouTube or other publicly available resources
**********/
CREATE TABLE Videos (
  VideoID INTEGER NOT NULL,
  VideoTitle VARCHAR(100) NOT NULL,
  VideoLength INTEGER NOT NULL,
  VideoUrl VARCHAR(255) NOT NULL,
  CONSTRAINT pk_video PRIMARY KEY(VideoID)
); 

INSERT INTO VIDEOS VALUES(201,'SQL Tutorial - Full Database Course for Beginners',260,'https://www.youtube.com/watch?v=HXV3zeQKqGY&ab_channel=freeCodeCamp.org');
INSERT INTO VIDEOS VALUES(202,'Top 65 SQL Interview Questions and Answers | SQL Interview Preparation | SQL Training | Edureka',53,'https://www.youtube.com/watch?v=-WEpWH1NHGU&ab_channel=edureka%21');
INSERT INTO VIDEOS VALUES(203,'Data Analyst Interview Questions And Answers | Data Analyst Interview Questions | Simplilearn',49,'https://www.youtube.com/watch?v=Y6175TGFuMI&ab_channel=Simplilearn');

SELECT * FROM VIDEOS

/**********
2.) Create and populate Reviewers table. Create a second table that provides at least two user
reviews for each of at least two of the videos. These should be imaginary reviews that include
columns for the user’s name (“Asher”, “John”, etc.), the rating (which could be NULL, or a
number between 0 and 5), and a short text review (“Loved it!”). There should be a column that
links back to the ID column in the table of videos.
**********/
CREATE TABLE Reviewers (
  ReviewerID INTEGER NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Rating VARCHAR(5) NOT NULL,
  Review VARCHAR(100) NOT NULL,
  VideoID INTEGER NOT NULL,
  CONSTRAINT pk_reviewer PRIMARY KEY(ReviewerID),
  CONSTRAINT fk_video FOREIGN KEY(VideoID) REFERENCES Videos(VideoID)
); 

INSERT INTO REVIEWERS VALUES(301,'Cyprien','Lenox','4','Very in depth',201);
INSERT INTO REVIEWERS VALUES(302,'Tori','Mahalia','5','This was amazing!',202);
INSERT INTO REVIEWERS VALUES(303,'Lalia','Margaux','3','It was a little too long',201);
INSERT INTO REVIEWERS VALUES(304,'Beauden','Warrick','4','I enjoyed the video',203);
INSERT INTO REVIEWERS VALUES(305,'Adeline','Leah','2','It was long, boring, and hard to understand',201);
INSERT INTO REVIEWERS VALUES(306,'Colette','Florine','5','The explanations were easy to comprehend',202);
INSERT INTO REVIEWERS VALUES(307,'Vincent','Garnet','4','Detailed explanations',201);
INSERT INTO REVIEWERS VALUES(308,'Madilynn','Taegan','3','I liked the video',203);

SELECT * FROM REVIEWERS

/**********
3.) Report on Video Reviews. Write a JOIN statement that shows information from both tables.
**********/
SELECT V.VIDEOTITLE, V.VIDEOLENGTH, V.VIDEOURL, R.FIRSTNAME, R.LASTNAME, R.RATING, R.REVIEW 
FROM VIDEOS V
JOIN REVIEWERS R
ON V.VIDEOID = R.VIDEOID
ORDER BY RATING DESC