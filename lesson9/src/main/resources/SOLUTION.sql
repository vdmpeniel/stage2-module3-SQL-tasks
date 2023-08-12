SELECT st.* FROM Student AS st JOIN Mark AS m ON m.student_id = st.id GROUP BY st.id HAVING AVG(m.mark) > 8;

SELECT st.id, st.name FROM Student AS st JOIN Mark AS m ON m.student_id = st.id GROUP BY st.id HAVING MIN(m.mark) > 7;

SELECT st.id, st.name FROM Student AS st LEFT JOIN Payment AS p ON p.student_id = st.id WHERE YEAR(payment_date) = 2019 GROUP BY st.id HAVING COUNT(p.id) > 2;