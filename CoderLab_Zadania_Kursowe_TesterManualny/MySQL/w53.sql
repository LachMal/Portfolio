#Zadania
use nortwind;
	# SELECT / WHERE
    
#1 Wyświetl wszystkie dane o pracownikach, którzy mieszkają w Redmond.
	SELECT * FROM employees 
		WHERE city = "Redmond";
#2 Wyświetl kod i nazwę wszystkich produktów, które nie należą do kategorii: Napoje.
	SELECT product_code, product_name FROM products 
		WHERE category != 'Beverages';
#3 Wyświetl wszystkie dane produktów, których koszt zakupu jest większy niż 12.0000.
	SELECT * FROM products 
		WHERE standard_cost > 12.0000; 
#4 Wyświetl miasto, adres dostawy i opłatę za przewóz zamówienia, którego opłata za przewóz mieści się w przedziale 20.0000 a 78.1223.
	SELECT ship_city, ship_address, shipping_fee FROM orders 
		WHERE shipping_fee BETWEEN 20.0000 AND 78.1223;
#5 Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zamówienia.
	SELECT * FROM products 
		WHERE minimum_reorder_quantity IS NOT NULL;
#6 Wyświetl wszystkie informacje o produktach, które mają określona minimalną liczbę zamówienia i ich koszt jest mniejszy niż 10.0000.
	SELECT * FROM products
    WHERE minimum_reorder_quantity IS NOT NULL AND standard_cost < 10.0000;
#7 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy się na nd.
	SELECT first_name, last_name, city FROM employees 
		WHERE city LIKE '%nd';
#8 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy się na nd i jest nie jest to Redmond.
	SELECT first_name, last_name, city FROM employees 
    WHERE city LIKE '%nd' AND city!='Redmond';
#9 Wyświetl informacje o klientach, którzy nie są menadżerami.
	SELECT *FROM customers 
		WHERE job_title NOT LIKE '%manager';
#10 Wyświetl informacje o klientach, których imię zaczyna się na J lub nazwisko zawiera literę o i są menadżerami.
	SELECT *FROM customers 
		WHERE (first_name like 'j%' or last_name like '%o%') AND job_title LIKE '%manager';
#11 Wyświetl informacje o produktach, których id dostawcy równa się 4 lub 6 lub 7
	SELECT * FROM products 
		WHERE supplier_ids IN (4,6,7);


	# ORDER BY
    
#12 Wyświetl imię, nazwisko i miasto zamieszkania pracowników, których miasto zamieszkania kończy się na nd i nie jest to Redmond. Wyniki posrtuj od Z do A względem imienia.
	SELECT first_name, last_name, city FROM employees WHERE city LIKE '%nd' AND city!='Redmond' 
		ORDER BY first_name DESC;
#13 Zaprezentuj wszystkie produkty posortowane od najmniejszej ceny zakupu (standard_cost).
	SELECT * FROM products 
		ORDER BY standard_cost ASC;
#14 Zaprezentuj wszystkie produkty posortowane od najmniejszej ceny zakupu (standard_cost) i największej ceny sprzedaży (list_price).
	SELECT * FROM products 
		ORDER BY standard_cost ASC, list_price DESC;

	# DISTINCT
    
#15 Podaj listę zawodów (nie mogą się powtarzać), jakie posiadają nasi klienci.
	SELECT DISTINCT job_title 
		FROM customers; 
#16 Wyświetl listę kategorii produktów, które posiadamy w bazie. Posortuj po nazwie kategorii malejąco.
	SELECT DISTINCT category 
		FROM products 
		ORDER BY category DESC;

	# AS
    
#17 Zaprezentuj raport dla dyrekcji, który będzie zawierał następujące kolumny: Imie_Pracownika, Nazwisko_Pracowanika, Miasto. Na raporcie umieść tylko pracowników z Seattle.
	SELECT first_name AS Imie_Pracownika, last_name AS Nazwisko_Pracownika, city AS Miasto 
		FROM employees 
			WHERE city = 'Seattle';
#18 Przedstaw przełożonemu raport, który będzie zawierała miasto, adres dostawy i opłatę za przewóz zamówienia, którego opłata za przewóz mieści się w przedziale 19.1256 a 78.1999.
	SELECT ship_city AS Miasto, ship_address AS Adres_dostawy, shipping_fee AS oplata_za_przewoz 
		FROM orders 
			WHERE shipping_fee BETWEEN 12.1256 AND 78.1999;
   
 
	# COUNT()
    
#19 Zlicz liczbę wszystkich zamówień.
	SELECT COUNT(*) 
		FROM orders;
#220 Zlicz liczbę wszystkich zamówień opłaconych kartami kredytowymi.
	SELECT COUNT(*) 
		FROM orders 
    WHERE payment_type = 'credit card';
#21 Zlicz liczbę wszystkich nieopłaconych zamówień.
	SELECT COUNT(*) 
		FROM orders 
			WHERE paid_date IS NULL;


	# MAX() / MIN() / AVG() / SUM()
    
#22 Wyświetl maksymalną opłatę za transport zamówienia.
	SELECT MAX(Shipping_fee) 
		FROM orders;
#23 Jaka jest cena najtańszego produktu od dostawcy o ID równym 1.
	SELECT MIN(standard_cost) 
		FROM products 
			WHERE supplier_ids=1;
#24 Ile wynosi średnia opłata za przesyłkę w założonych zamówieniach, uwzględniając tylko opłatę większą niz 0.
	SELECT AVG(shipping_fee) 
		FROM orders 
			WHERE shipping_fee>0;
#25 Ile łącznie zamówiono produktu Northwind Traders Coffee (id=43)
	SELECT SUM(quantity) 
		FROM order_details 
			WHERE product_id=43;
	
    
    # GROUP BY()
    
#26 Wyświetl minimalny koszt produktu w danej kategorii.
	SELECT MIN(standard_cost), category 
		FROM products 
			GROUP BY category;
#27 Wskaż ile (ZLICZANIE, NIE SUMOWANIE) osób zadeklarowało oraz dany zawód jakie zawody wykonują klienci. (FUNKCJA COUNT ZAWSZE MUSI BYĆ POWIĄZANA BEZPOŚREDNIO Z SELECT!!!)
	SELECT COUNT(*), job_title 
		FROM customers 
			GROUP BY job_title;


	# INNNER JOIN
    
#28 Wyświetl wszystkie dane produktu oraz dane firmy, która go dostarcza.
	SELECT * 
		FROM products 
        INNER JOIN suppliers 
			ON products.supplier_ids = suppliers.id;
#29 Wyświetl nazwę produktu i nazwę firmy, która go dostarcza. Posortuj po nazwie firmy od A do Z.
	SELECT product_name, company 
		FROM products 
        INNER JOIN suppliers 
			ON products.supplier_ids = suppliers.id 
				ORDER BY company ASC;
#30 Wyświetl dane klientów (imie, nazwisko, adres, miasto, kraj), którzy nie dokonali jeszcze płatności za zamówienie.
	SELECT first_name, last_name, address, city, country_region 
		FROM customers 
        INNER JOIN orders 
			ON customers.id=orders.customer_id 
				WHERE paid_date IS NULL;

	# LEFT JOIN
    
#31 Przygotuj raport, który zawiera wszystkie dane o zamówieniach i firmach, które dostarczają dane zamówienie. Raport powinien zawierać wszystkie zamówienia wraz z tymi bez określonego jeszcze dostawcy.
	SELECT * 
		FROM orders 
        LEFT JOIN shippers 
			ON orders.shipper_id = shippers.id;
#32 Zweryfkikuj czy wszyscy klienci złożyli już zamówienie. Wyswietl nazwy wszystkich klientów wraz z datą zamówienia i datą dostawy zamówienia. (ZACZYNAMY OD KLIENTA TO JEST MOJA LEW TABELA)
	SELECT customers.company, orders.order_date, orders.shipped_date 
		FROM customers 
        LEFT JOIN  orders 
			ON customers.id = orders.customer_id;
		#SELECT test1.company, test2.order_date FROM customers test1
		#LEFT JOIN orders test2 ON test1.id = test2.customer_id;# dygresja
    #to samo od drugiej strony
    SELECT customers.company, orders.order_date, orders.shipped_date 
		FROM orders 
        RIGHT JOIN  customers 
			ON customers.id = orders.customer_id;
#33 Zweryfikuj dla księgowości czy wszystkie faktury zostały już opłacone. Przygotuj raport zawierający kolumny 'Data faktury' i 'Data płatności'.
	SELECT invoices.invoice_date AS 'Data faktury', orders.paid_date AS 'Data płatności' 
		FROM invoices 
        LEFT JOIN orders 
			ON invoices.order_id=orders.id;

	# RIGHT JOIN ()
    
#34 Dyrekcja prosi o przygotowanie raportu, który wykaże, 
	#cz.1 czy wszyscy pracownicy składali zamówienia. 
    #Raport powienien zawierać datę zamówienia, nazwisko pracowanik i jego stanowisko pracy.  #zaczniemy od zamówień bo tu będą nulle po lewej stronie TRZEBA ZROBIĆ DWA ZAPYTANIA OSOBNO dla cz.1 osobno, dla cz.2 osobno#
	SELECT orders.order_date, employees.last_name, employees.job_title 
		FROM orders	
        RIGHT JOIN employees
			ON orders.employee_id = employees.id;
        #cz.2 Ilu pracowników nie złożyło zamówienia? 
		SELECT COUNT(*) 
			FROM orders 
            RIGHT JOIN employees
				ON orders.employee_id = employees.id
					WHERE order_date IS NULL;
#35 Przygotuj zestawienie, które będzie zawierało dane: nazwa klienta, data zawmówieniam i data dostawy.
	SELECT customers.company, orders.order_date, orders.shipped_date 
		FROM customers 
		RIGHT JOIN orders
			ON customers.id = orders.customer_id;
#36 Zweryfikuj dla księgowości czy wszystkie faktury zostały wystawione. 
	#Przygotuj raport zawierający zamówienie bez wystawionej faktury 
    #kolumny 'Forma płatności', 'Data płatności' i 'Data faktury'. 
	SELECT invoices.invoice_date AS 'Data faktury', orders.paid_date AS 'Data płatności', orders.payment_type AS 'Forma płatności' 
		FROM invoices 
        RIGHT JOIN orders 
			ON invoices.order_id=orders.id
				WHERE invoices.invoice_date IS NULL
					AND orders.paid_date IS NOT NULL;
#37
# W swojej lokalnej bazie danych stwórz tabelę o nazwie students, która będzie zawierała następujące kolumny:
# student_id - typ danych: int (10)
# name - typ danych: varchar(64)
# surname - typ danych: varchar(128)
# email - typ danych: varchar(256) - adresy e-mail nie mogą się powtarzać w bazie
# class_id - typ danych: int(10)
	CREATE TABLE users
(
  user_id int AUTO_INCREMENT,
  user_name varchar(255),
  user_email varchar(255) UNIQUE,
  PRIMARY KEY(user_id)
);
#38
# Dodaj do swojej tabeli 'Students' minimum 5 studentów. Dwóch studentów musi mieć to samo imię.
	
#39
# Usuń z tabeli studentów, którzy mają to samo imię. 
	
#40
# Dodaj do tabeli 'Students' nową kolumnę 'city'. Zaktualizuj dane studentów i wpisz ich miasto zamieszkania.
	