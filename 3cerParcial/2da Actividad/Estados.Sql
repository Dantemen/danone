mysql> CREATE TABLE Estados (
    ->     Paso int NOT NULL,
    ->     Estado varchar(10) NOT NULL,
    ->     PRIMARY KEY(Paso, Estado)
    -> );
Query OK, 0 rows affected (0.05 sec)
mysql> INSERT INTO Estados Values
    -> (1,"Paso"),
    -> (2,"Paso"),
    -> (3,"Paso"),
    -> (4,"Paso"),
    -> (5,"Fallo"),
    -> (6,"Fallo"),
    -> (7,"Fallo"),
    -> (8,"Fallo"),
    -> (9,"Fallo"),
    -> (10,"Paso"),
    -> (11,"Paso"),
    -> (12,"Paso");
Query OK, 12 rows affected (0.01 sec)
Records: 12  Duplicates: 0  Warnings: 0
mysql> SELECT 
    ->   MIN(Paso) AS `Paso Min`, MAX(Paso) AS `Paso Max`, Estado, COUNT(*) AS Cuenta
    -> FROM (
    ->   SELECT Paso, Estado, Paso - ROW_NUMBER() OVER (PARTITION BY Estado ORDER BY Paso) AS grupo
    ->   FROM Estados
    -> ) AS agrupado
    -> GROUP BY Estado, grupo
    -> ORDER BY `Paso Min`;
    +----------+----------+--------+--------+
| Paso Min | Paso Max | Estado | Cuenta |
+----------+----------+--------+--------+
|        1 |        4 | Paso   |      4 |
|        5 |        9 | Fallo  |      5 |
|       10 |       12 | Paso   |      3 |
+----------+----------+--------+--------+
3 rows in set (0.00 sec)
