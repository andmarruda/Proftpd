# Proftpd's configuration 

En-US

Examples for SSL and access with PostgreSQL.
To use mod_sql is necessary to install dependencies: 

Debian:
sudo apt update

--For PostgreSQL
sudo apt install proftpd-basic proftpd-mod-pgsql

--For MySQL
sudo apt install proftpd-basic proftpd-mod-mysql

Other examples and description you can find on http://andersonarruda.com.br

Don`t forget to uncomment the modules:
```
LoadModule mod_sql.c
LoadModule mod_sql_postgres.c
LoadModule mod_sftp.c
LoadModule mod_sftp_pam.c
LoadModule mod_sftp_sql.c
LoadModule mod_sql_passwd.c
```

----------------------------------------------------------------------------------------

Pt-BR

Exemplos para SSL e acesso com PostgreSQL.
Para usar o mod_sql é necessário instalar dependências:

Debian:
sudo apt update

--Para o PostgreSQL
sudo apt install proftpd-basic proftpd-mod-pgsql

--Para o MySQL
sudo apt install proftpd-basic proftpd-mod-mysql

Outros exemplos e descrição você pode encontrar em http://andersonarruda.com.br

Não esqueça de descomentar os modulos:
```
LoadModule mod_sql.c
LoadModule mod_sql_postgres.c
LoadModule mod_sftp.c
LoadModule mod_sftp_pam.c
LoadModule mod_sftp_sql.c
LoadModule mod_sql_passwd.c
```
