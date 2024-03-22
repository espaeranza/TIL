USE codingtest;

INSERT INTO ANIMAL_INS (ANIMAL_ID, ANIMAL_TYPE, `DATETIME`, INTAKE_CONDITION, `NAME`, SEX_UPON_INTAKE)
VALUES
	('A354597', 'Cat', '2014-05-02 12:16:00', 'Normal', 'Ariel', 'Spayed Female'),
    ('A373687', 'Dog', '2014-03-20 12:31:00', 'Normal', 'Rosie', 'Spayed Female'),
    ('A412697', 'Dog', '2016-01-03 16:25:00', 'Normal', 'Jackie', 'Neutered Male'),
    ('A413789', 'Dog', '2016-04-19 13:28:00', 'Normal', 'Benji', 'Spayed Female'),
    ('A414198', 'Dog', '2015-01-29 15:01:00', 'Normal', 'Shelly', 'Spayed Female'),
    ('A368930', 'Dog', '2014-06-08 13:20:00', 'Normal', NULL, 'Spayed Female');
    
SELECT * FROM ANIMAL_INS;

INSERT INTO ANIMAL_OUTS (ANIMAL_ID, ANIMAL_TYPE, `DATETIME`, `NAME`, SEX_UPON_OUTCOME)    
VALUES
	('A354597', 'Cat', '2014-05-02 12:16:00', 'Ariel', 'Spayed Female'),
    ('A373687', 'Dog', '2014-03-20 12:31:00', 'Rosie', 'Spayed Female'),
    ('A368930', 'Dog', '2014-06-13 15:52:00', NULL, 'Spayed Female');
    
SELECT * FROM ANIMAL_OUTS;

SELECT ANIMAL_INS.`NAME`, ANIMAL_INS.`DATETIME` FROM ANIMAL_INS
LEFT JOIN ANIMAL_OUTS
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE ANIMAL_OUTS.ANIMAL_ID IS NULL
ORDER BY `DATETIME`
LIMIT 3;    