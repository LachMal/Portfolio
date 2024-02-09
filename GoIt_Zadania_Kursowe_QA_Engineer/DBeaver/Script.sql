--Proszę wybrać pracowników z Tabeli employees, których imię zaczyna się od «Ma».
--    W wynikach proszę pokazać imię (first_name), nazwisko (last_name) oraz datę urodzenia (birth_date).
SELECT first_name, last_name, birth_date  FROM employees WHERE first_name LIKE 'Ma%';
