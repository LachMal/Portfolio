#37
# W swojej lokalnej bazie danych stwórz tabelę o nazwie students, która będzie zawierała następujące kolumny:
# student_id - typ danych: int (10)
# name - typ danych: varchar(64)
# surname - typ danych: varchar(128)
# email - typ danych: varchar(256) - adresy e-mail nie mogą się powtarzać w bazie
# class_id - typ danych: int(10)
	CREATE TABLE Students
(
  student_id int(10),
  student_name varchar(64),
  student_surnamename varchar(128),
  student_email varchar(256) UNIQUE,
  class_id int(10)
  PRIMARY KEY(student_id)
);
#38
# Dodaj do swojej tabeli 'Students' minimum 5 studentów. Dwóch studentów musi mieć to samo imię.
	
INSERT INTO Students(student_id, student_name, student_surname, student_email, class_id)
      VALUES (1,'Adam', 'Adamski', 'aa@yahoo.com', 10);
INSERT INTO Students(student_id, student_name, student_surname, student_email, class_id)      
      VALUES (2,'Bartek', 'Barkowski', 'bb@gmail.com', 20);
INSERT INTO Students(student_id, student_name, student_surname, student_email, class_id)
      VALUES (3,'Celina', 'Ceknik', 'cc@yahoo.com', 30);
INSERT INTO Students(student_id, student_name, student_surname, student_email, class_id)
      VALUES (4,'Adam', 'vom Adamowicz', 'ava@ygmail.com', 40);
INSERT INTO Students(student_id, student_name, student_surname, student_email, class_id)
      VALUES (5,'Darek', 'Durek', 'dd@yahoo.com', 50);
#39
# Usuń z tabeli studentów, którzy mają to samo imię. 
	DELETE FROM Students
        WHERE student_name="Adam";
#40
# Dodaj do tabeli 'Students' nową kolumnę 'city'. Zaktualizuj dane studentów i wpisz ich miasto zamieszkania.
ALTER TABLE Students ADD city varchar(64);
    INSERT INTO Students(city)
      VALUES ('Białystok');
  INSERT INTO Students(city)      
      VALUES ('Ciechocinek');
  INSERT INTO Students(city)
      VALUES ('Pcim');
  INSERT INTO Students(city)
      VALUES ('Warszawa');
  INSERT INTO Students(city)
      VALUES ('Grójec');