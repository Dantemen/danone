mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| DanteMenn$DanteBase |
| DanteMenn$Dantebase |
| DanteMenn$default   |
| information_schema  |
| performance_schema  |
+---------------------+
5 rows in set (0.48 sec)

mysql> show tables;
+-----------------------------+
| Tables_in_DanteMenn$default |
+-----------------------------+
| GameScores                  |
| HockeyGame                  |
| HockeyTeam                  |
| HockeyTeamPlayer            |
| PlayoffRound                |
| RoundStats                  |
| User                        |
| UserInfo                    |
| UserScorePicks              |
| UserStatsPicks              |
| usuarios                    |
+-----------------------------+
11 rows in set (0.00 sec)

mysql> DESC HockeyGame;
+-------------+------+------+-----+---------+-------+
| Field       | Type | Null | Key | Default | Extra |
+-------------+------+------+-----+---------+-------+
| id          | int  | NO   | PRI | NULL    |       |
| roundId     | int  | NO   |     | NULL    |       |
| startTime   | date | NO   | PRI | NULL    |       |
| description | text | NO   |     | NULL    |       |
| team1Id     | int  | NO   |     | NULL    |       |
| team2Id     | int  | NO   |     | NULL    |       |
+-------------+------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> Insert into HockeyGame (id,roundId,startTime,description,team1Id,team2Id) values (1234,2112,12/10/2025,ronaldo,2323,2324);
ERROR 1054 (42S22): Unknown column 'ronaldo' in 'field list'
mysql> Insert into HockeyGame (id,roundId,startTime,description,team1Id,team2Id) values (1234,2112,12/10/2025,lao,2323,2324);
ERROR 1054 (42S22): Unknown column 'lao' in 'field list'
mysql> Insert into HockeyGame (id,roundId,startTime,description,team1Id,team2Id) values (1234,2112,12/10/2025,2327,2323,2324);
Query OK, 1 row affected (0.01 sec)

mysql> Select * from HockeyGame;
+------+---------+------------+-------------+---------+---------+
| id   | roundId | startTime  | description | team1Id | team2Id |
+------+---------+------------+-------------+---------+---------+
| 1234 |    2112 | 0000-00-00 | 2327        |    2323 |    2324 |
+------+---------+------------+-------------+---------+---------+
1 row in set (0.00 sec)

mysql> DESC HockeyTeam;   
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(25) | NO   | PRI | NULL    |       |
| logo  | tinytext    | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> Insert into HockeyTeam (id,name,logo) values (5252,ostias,ola);
ERROR 1054 (42S22): Unknown column 'ostias' in 'field list'
mysql> Insert into HockeyTeam (id,name,logo) values (5252,5454,ola);
ERROR 1054 (42S22): Unknown column 'ola' in 'field list'
mysql> Insert into HockeyTeam (id,name,logo) values (5252,3434,34);
Query OK, 1 row affected (0.00 sec)

mysql> Select * from HockeyTeam;
+------+------+------+
| id   | name | logo |
+------+------+------+
| 5252 | 3434 | 34   |
+------+------+------+
1 row in set (0.00 sec)

mysql> DESC HockeyTeamPlayer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | NO   | PRI | NULL    |       |
| hockeyTeamId | int         | NO   | PRI | NULL    |       |
| firtsName    | tinytext    | NO   |     | NULL    |       |
| lastName     | tinytext    | NO   |     | NULL    |       |
| jerseyNum    | int         | NO   |     | NULL    |       |
| position     | varchar(16) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,Hola,Mundo,22,123);
ERROR 1054 (42S22): Unknown column 'Hola' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,cros,uhundo,22,123);
ERROR 1054 (42S22): Unknown column 'cros' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,343,9898,22,123);
Query OK, 1 row affected (0.01 sec)

mysql> Select * from HockeyTeamPlayer;
+------+--------------+-----------+----------+-----------+----------+
| id   | hockeyTeamId | firtsName | lastName | jerseyNum | position |
+------+--------------+-----------+----------+-----------+----------+
| 2423 |         5465 | 343       | 9898     |        22 | 123      |
+------+--------------+-----------+----------+-----------+----------+
1 row in set (0.00 sec)

mysql> DESC PlayoffRound;
ERROR 4031 (HY000): The client was disconnected by the server because of inactivity. See wait_timeout and interactive_timeout for configuring this behavior.
No connection. Trying to reconnect...
Connection id:    15428755
Current database: DanteMenn$default

+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
6 rows in set (0.78 sec)

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| DanteMenn$DanteBase |
| DanteMenn$Dantebase |
| DanteMenn$default   |
| information_schema  |
| performance_schema  |
+---------------------+
5 rows in set (0.51 sec)

mysql> how tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'how tables' at line 1
mysql> show tables;
+-----------------------------+
| Tables_in_DanteMenn$default |
+-----------------------------+
| GameScores                  |
| HockeyGame                  |
| HockeyTeam                  |
| HockeyTeamPlayer            |
| PlayoffRound                |
| RoundStats                  |
| User                        |
| UserInfo                    |
| UserScorePicks              |
| UserStatsPicks              |
| usuarios                    |
+-----------------------------+
11 rows in set (0.00 sec)

mysql>  DESC PlayoffRound;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
Loading console...| id   | name | logo |
+------+------+------+
| 5252 | 3434 | 34   |
+------+------+------+
1 row in set (0.00 sec)

mysql> DESC HockeyTeamPlayer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | NO   | PRI | NULL    |       |
| hockeyTeamId | int         | NO   | PRI | NULL    |       |
| firtsName    | tinytext    | NO   |     | NULL    |       |
| lastName     | tinytext    | NO   |     | NULL    |       |
| jerseyNum    | int         | NO   |     | NULL    |       |
| position     | varchar(16) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,Hola,Mundo,22,123);
ERROR 1054 (42S22): Unknown column 'Hola' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,cros,uhundo,22,123);
ERROR 1054 (42S22): Unknown column 'cros' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,343,9898,22,123);
Query OK, 1 row affected (0.01 sec)

mysql> Select * from HockeyTeamPlayer;
+------+--------------+-----------+----------+-----------+----------+
| id   | hockeyTeamId | firtsName | lastName | jerseyNum | position |
+------+--------------+-----------+----------+-----------+----------+
| 2423 |         5465 | 343       | 9898     |        22 | 123      |
+------+--------------+-----------+----------+-----------+----------+
1 row in set (0.00 sec)

mysql> DESC PlayoffRound;
ERROR 4031 (HY000): The client was disconnected by the server because of inactivity. See wait_timeout and interactive_timeout for configuring this behavior.
No connection. Trying to reconnect...
Connection id:    15428755
Current database: DanteMenn$default

+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
6 rows in set (0.78 sec)

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| DanteMenn$DanteBase |
| DanteMenn$Dantebase |
| DanteMenn$default   |
| information_schema  |
| performance_schema  |
+---------------------+
5 rows in set (0.51 sec)

mysql> how tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'how tables' at line 1
mysql> show tables;
+-----------------------------+
| Tables_in_DanteMenn$default |
+-----------------------------+
| GameScores                  |
| HockeyGame                  |
| HockeyTeam                  |
| HockeyTeamPlayer            |
| PlayoffRound                |
| RoundStats                  |
| User                        |
| UserInfo                    |
| UserScorePicks              |
| UserStatsPicks              |
| usuarios                    |
+-----------------------------+
11 rows in set (0.00 sec)

mysql>  DESC PlayoffRound;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
Loading console...| id   | name | logo |
+------+------+------+
| 5252 | 3434 | 34   |
+------+------+------+
1 row in set (0.00 sec)

mysql> DESC HockeyTeamPlayer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | NO   | PRI | NULL    |       |
| hockeyTeamId | int         | NO   | PRI | NULL    |       |
| firtsName    | tinytext    | NO   |     | NULL    |       |
| lastName     | tinytext    | NO   |     | NULL    |       |
| jerseyNum    | int         | NO   |     | NULL    |       |
| position     | varchar(16) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,Hola,Mundo,22,123);
ERROR 1054 (42S22): Unknown column 'Hola' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,cros,uhundo,22,123);
ERROR 1054 (42S22): Unknown column 'cros' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,343,9898,22,123);
Query OK, 1 row affected (0.01 sec)

mysql> Select * from HockeyTeamPlayer;
+------+--------------+-----------+----------+-----------+----------+
| id   | hockeyTeamId | firtsName | lastName | jerseyNum | position |
+------+--------------+-----------+----------+-----------+----------+
| 2423 |         5465 | 343       | 9898     |        22 | 123      |
+------+--------------+-----------+----------+-----------+----------+
1 row in set (0.00 sec)

mysql> DESC PlayoffRound;
ERROR 4031 (HY000): The client was disconnected by the server because of inactivity. See wait_timeout and interactive_timeout for configuring this behavior.
No connection. Trying to reconnect...
Connection id:    15428755
Current database: DanteMenn$default

+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
6 rows in set (0.78 sec)

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| DanteMenn$DanteBase |
| DanteMenn$Dantebase |
| DanteMenn$default   |
| information_schema  |
| performance_schema  |
+---------------------+
5 rows in set (0.51 sec)

mysql> how tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'how tables' at line 1
mysql> show tables;
+-----------------------------+
| Tables_in_DanteMenn$default |
+-----------------------------+
| GameScores                  |
| HockeyGame                  |
| HockeyTeam                  |
| HockeyTeamPlayer            |
| PlayoffRound                |
| RoundStats                  |
| User                        |
| UserInfo                    |
| UserScorePicks              |
| UserStatsPicks              |
| usuarios                    |
+-----------------------------+
11 rows in set (0.00 sec)

mysql>  DESC PlayoffRound;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
Loading console...| id   | name | logo |
+------+------+------+
| 5252 | 3434 | 34   |
+------+------+------+
1 row in set (0.00 sec)

mysql> DESC HockeyTeamPlayer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | NO   | PRI | NULL    |       |
| hockeyTeamId | int         | NO   | PRI | NULL    |       |
| firtsName    | tinytext    | NO   |     | NULL    |       |
| lastName     | tinytext    | NO   |     | NULL    |       |
| jerseyNum    | int         | NO   |     | NULL    |       |
| position     | varchar(16) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,Hola,Mundo,22,123);
ERROR 1054 (42S22): Unknown column 'Hola' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,cros,uhundo,22,123);
ERROR 1054 (42S22): Unknown column 'cros' in 'field list'
mysql> Insert into HockeyTeamPlayer (id,hockeyTeamId,firtsName,lastName,jerseyNum,position) values (2423,5465,343,9898,22,123);
Query OK, 1 row affected (0.01 sec)

mysql> Select * from HockeyTeamPlayer;
+------+--------------+-----------+----------+-----------+----------+
| id   | hockeyTeamId | firtsName | lastName | jerseyNum | position |
+------+--------------+-----------+----------+-----------+----------+
| 2423 |         5465 | 343       | 9898     |        22 | 123      |
+------+--------------+-----------+----------+-----------+----------+
1 row in set (0.00 sec)

mysql> DESC PlayoffRound;
ERROR 4031 (HY000): The client was disconnected by the server because of inactivity. See wait_timeout and interactive_timeout for configuring this behavior.
No connection. Trying to reconnect...
Connection id:    15428755
Current database: DanteMenn$default

+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
6 rows in set (0.78 sec)

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| DanteMenn$DanteBase |
| DanteMenn$Dantebase |
| DanteMenn$default   |
| information_schema  |
| performance_schema  |
+---------------------+
5 rows in set (0.51 sec)

mysql> how tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'how tables' at line 1
mysql> show tables;
+-----------------------------+
| Tables_in_DanteMenn$default |
+-----------------------------+
| GameScores                  |
| HockeyGame                  |
| HockeyTeam                  |
| HockeyTeamPlayer            |
| PlayoffRound                |
| RoundStats                  |
| User                        |
| UserInfo                    |
| UserScorePicks              |
| UserStatsPicks              |
| usuarios                    |
+-----------------------------+
11 rows in set (0.00 sec)

mysql>  DESC PlayoffRound;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| id        | int  | NO   | PRI | NULL    |       |
| team1id   | int  | NO   |     | NULL    |       |
| team2id   | int  | NO   |     | NULL    |       |
| startTime | date | NO   | PRI | NULL    |       |
| endTime   | date | NO   |     | NULL    |       |
| roundNum  | int  | NO   |     | NULL    |       |
+-----------+------+------+-----+---------+-------+
6 rows in set (0.00 sec)
mysql> Insert into
    -> 
    -> mysql> Insert into HockeyGame (id,roundId,startTime,description,team1Id,team2Id) values (^C
^C
mysql> 
mysql> Insert into PlayoffRound (id,team1id,team2id,startTime,roundNum) values (423,342,456,09/12/2025,12/12/2025,234);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> Insert into PlayoffRound (id,team1id,team2id,startTime,endTime,roundNum) values (423,342,456,09/12/2025,12/12/2025,234);
Query OK, 1 row affected (0.00 sec)
mysql> select * from PlayoffRound;
+-----+---------+---------+------------+------------+----------+
| id  | team1id | team2id | startTime  | endTime    | roundNum |
+-----+---------+---------+------------+------------+----------+
| 423 |     342 |     456 | 0000-00-00 | 0000-00-00 |      234 |
+-----+---------+---------+------------+------------+----------+
1 row in set (0.00 sec)
mysql> DESC RoundStats;
+----------------------+------+------+-----+---------+-------+
| Field                | Type | Null | Key | Default | Extra |
+----------------------+------+------+-----+---------+-------+
| id                   | int  | NO   | PRI | NULL    |       |
| numShutouts          | int  | NO   | PRI | NULL    |       |
| goalLeaderId         | int  | NO   |     | NULL    |       |
| assistLeaderId       | int  | NO   |     | NULL    |       |
| penaltyLeaderId      | int  | NO   |     | NULL    |       |
| plusMinusLeaderId    | int  | NO   |     | NULL    |       |
| facesoffsWonLeaderId | int  | NO   |     | NULL    |       |
| sogLeaderId          | int  | NO   |     | NULL    |       |
+----------------------+------+------+-----+---------+-------+
8 rows in set (0.00 sec)
mysql> Insert into RoundStats (id,numShutouts,goalLeaderId,assistLeaderId,penaltyLeaderId,plusMinusLeaderId,faesoffssWonLeaderId,sogLearde
rId) values (2323,1212,2922,232,434,2123,223,323);
