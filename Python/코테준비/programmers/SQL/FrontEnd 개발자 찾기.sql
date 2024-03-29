SELECT DISTINCT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME FROM DEVELOPERS d 
JOIN SKILLCODES s ON s.CODE = d.SKILL_CODE&s.CODE
WHERE s.CATEGORY LIKE 'Front End'
ORDER BY d.ID;