USE CODINGTEST;

CREATE TABLE ANIMAL_INS(
	ANIMAL_ID VARCHAR(N) NOT NULL,
	ANIMAL_TYPE VARCHAR(N) NOT NULL,
	DATETIME DATETIME NOT NULL,
	INTAKE_CONDITION VARCHAR(N)	NOT NULL,
	NAME VARCHAR(N),
    SEX_UPON_INTAKE VARCHAR(N) NOT NULL
);

SELECT MAX(DATETIME) AS 시간
FROM ANIMAL_INS;