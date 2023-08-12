SELECT * FROM Payment WHERE amount >= 500;

SELECT * FROM Student WHERE DATEDIFF('YEAR', birthday, CURRENT_DATE) > 20;

SELECT * FROM Student WHERE DATEDIFF('YEAR', birthday, CURRENT_DATE) < 20 AND groupnumber = 10;

SELECT * FROM Student WHERE name = 'Mike' OR groupnumber  IN (4, 5, 6);

SELECT * FROM Payment WHERE payment_date >= CURRENT_TIMESTAMP - INTERVAL '8'  MONTH;

SELECT * FROM Student WHERE name LIKE 'A%';

SELECT * FROM Student WHERE name = 'Roxi' AND groupnumber = 4 OR name = 'Tallie' AND groupnumber = 9;