USE codingtest;

CREATE TABLE BOOK(
	BOOK_ID	INTEGER NOT NULL,
    CATEGORY VARCHAR(50) NOT NULL,
    AUTHOR_ID INTEGER NOT NULL,
    PRICE INTEGER NOT NULL,
    PUBLISHED_DATE DATE NOT NULL
);

DESC BOOK;

CREATE TABLE AUTHOR(
	AUTHOR_ID INTEGER NOT NULL,
    AUTHOR_NAME	VARCHAR(50) NOT NULL
);

DESC AUTHOR;

INSERT INTO BOOK (BOOK_ID, CATEGORY, AUTHOR_ID, PRICE, PUBLISHED_DATE)
VALUES
	(1, '인문', 1, 10000, '2020-01-01'),
    (2, '경제', 1, 9000, '2021-04-11'),
    (3, '경제', 2, 11000, '2021-02-05');
    
SELECT * FROM BOOK;

INSERT INTO AUTHOR (AUTHOR_ID, AUTHOR_NAME)
VALUES
	(1, '홍길동'),
    (2, '김영호');
    
SELECT * FROM AUTHOR;

SELECT BOOK.BOOK_ID, AUTHOR.AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK 
JOIN AUTHOR 
ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
WHERE BOOK.CATEGORY = '경제'
ORDER BY BOOK.PUBLISHED_DATE;    