
-- CREATE USER 'pippo'@'localhost' IDENTIFIED WITH mysql_native_password BY 'pass';
CREATE USER 'pippo'@'localhost' IDENTIFIED BY 'pass';

CREATE DATABASE exploit;
USE exploit;

CREATE TABLE IF NOT EXISTS utenti (
        user varchar(255) PRIMARY KEY,
        password varchar(255)
);

INSERT INTO utenti
(
        user, password
)
VALUES
(
        "gioacchino", "murat"
),
(
        "pippo", "pluto"
);

GRANT ALL ON exploit.utenti TO pippo@localhost;
