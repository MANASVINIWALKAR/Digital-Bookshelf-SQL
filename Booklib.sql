
mysql> create database Booklib;
Query OK, 1 row affected (0.02 sec)

mysql> use Booklib;
Database changed

mysql> Create table Booklibrary(Book_ID INT PRIMARY KEY,Book_name varchar(50), Book_Genre VARCHAR(53), Author varchar(40),Page_count INT,Status VARCHAR(60));
Query OK, 0 rows affected (0.05 sec)

mysql> desc Booklibrary;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Book_ID    | int         | NO   | PRI | NULL    |       |
| Book_name  | varchar(50) | YES  |     | NULL    |       |
| Book_Genre | varchar(53) | YES  |     | NULL    |       |
| Author     | varchar(40) | YES  |     | NULL    |       |
| Page_count | int         | YES  |     | NULL    |       |
| Status     | varchar(60) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2002','Educated','Biography' ,'Tara Westover','430','Completed');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2003','The Da Vinci Code','Thriller' ,'Dan Brown','340','Reading');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2004','Dune','Adult' ,'Frank Herbert','540','Completed');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2005','Harry Potter and the Sorcerer’s Stone','Fantacy' ,'J.K. Rowling','369','Completed');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2006','The fault in the Stars','Fantacy' ,'John Green','359','Completed');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2007','1984','Fiction' ,'George Orwell','344,'Reading');
    '> ^C
mysql> insert into Booklibrary(Book_ID,Book_name,Book_Genre,Author,Page_count,Status)values('2007','1984','Fiction' ,'George Orwell','344','Reading');
Query OK, 1 row affected (0.03 sec)

mysql> select * from Booklibrary;
+---------+---------------------------------------+------------+---------------+------------+-----------+
| Book_ID | Book_name                             | Book_Genre | Author        | Page_count | Status    |
+---------+---------------------------------------+------------+---------------+------------+-----------+
|     201 | Fault in the Stars                    | Romance    | John Green    |        250 | Reading   |
|    2001 | Divergent                             | ADult      | Veronica Roth |        250 | Reading   |
|    2002 | Educated                              | Biography  | Tara Westover |        430 | Completed |
|    2003 | The Da Vinci Code                     | Thriller   | Dan Brown     |        340 | Reading   |
|    2004 | Dune                                  | Adult      | Frank Herbert |        540 | Completed |
|    2005 | Harry Potter and the Sorcerer?s Stone | Fantacy    | J.K. Rowling  |        369 | Completed |
|    2006 | The fault in the Stars                | Fantacy    | John Green    |        359 | Completed |
|    2007 | 1984                                  | Fiction    | George Orwell |        344 | Reading   |
+---------+---------------------------------------+------------+---------------+------------+-----------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM Booklibrary
    ->
    -> WHERE Author = 'Dan Brown';^C
mysql> SELECT * FROM Booklibrary
    -> Where Author ='John Green';
+---------+------------------------+------------+------------+------------+-----------+
| Book_ID | Book_name              | Book_Genre | Author     | Page_count | Status    |
+---------+------------------------+------------+------------+------------+-----------+
|     201 | Fault in the Stars     | Romance    | John Green |        250 | Reading   |
|    2006 | The fault in the Stars | Fantacy    | John Green |        359 | Completed |
+---------+------------------------+------------+------------+------------+-----------+
2 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM BookLibrary
    -> WHERE Book_Genre = 'Fantasy';
Empty set (0.00 sec)

mysql> SELECT * FROM Booklibrary
    -> WHERE Book_Genre = 'Fantacy';
+---------+---------------------------------------+------------+--------------+------------+-----------+
| Book_ID | Book_name                             | Book_Genre | Author       | Page_count | Status    |
+---------+---------------------------------------+------------+--------------+------------+-----------+
|    2005 | Harry Potter and the Sorcerer?s Stone | Fantacy    | J.K. Rowling |        369 | Completed |
|    2006 | The fault in the Stars                | Fantacy    | John Green   |        359 | Completed |
+---------+---------------------------------------+------------+--------------+------------+-----------+
2 rows in set (0.00 sec)

mysql> Update Book library SET Status='Completed' WHERE Status='Reading';
ERROR 1146 (42S02): Table 'booklib.book' doesn't exist
mysql> Update Booklibrary SET Status='Completed' WHERE Status='Reading';
Query OK, 4 rows affected (0.03 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> SELECT * FROM Booklibrary;
+---------+---------------------------------------+------------+---------------+------------+-----------+
| Book_ID | Book_name                             | Book_Genre | Author        | Page_count | Status    |
+---------+---------------------------------------+------------+---------------+------------+-----------+
|     201 | Fault in the Stars                    | Romance    | John Green    |        250 | Completed |
|    2001 | Divergent                             | ADult      | Veronica Roth |        250 | Completed |
|    2002 | Educated                              | Biography  | Tara Westover |        430 | Completed |
|    2003 | The Da Vinci Code                     | Thriller   | Dan Brown     |        340 | Completed |
|    2004 | Dune                                  | Adult      | Frank Herbert |        540 | Completed |
|    2005 | Harry Potter and the Sorcerer?s Stone | Fantacy    | J.K. Rowling  |        369 | Completed |
|    2006 | The fault in the Stars                | Fantacy    | John Green    |        359 | Completed |
|    2007 | 1984                                  | Fiction    | George Orwell |        344 | Completed |
+---------+---------------------------------------+------------+---------------+------------+-----------+
8 rows in set (0.00 sec)

mysql> DELETE FROM Booklibrary  WHERE Book_ID = 2007;
Query OK, 1 row affected (0.03 sec)
