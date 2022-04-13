#!/bin/bash
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Password@123" -e "MSSQL_PID=Express" -p 1433:1433 -v mssqlserver_volume:/var/opt/mssql --name mssql -d mcr.microsoft.com/mssql/server:2019-CU15-ubuntu-20.04
docker ps
docker exec -it mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password@123 <<!
create database Enovade
go
select name from sys.databases
go
use Enovade
go
CREATE TABLE dbo.Pengguna  (IDPengguna int PRIMARY KEY NOT NULL,  Nama varchar(25) NOT NULL, Alamat varchar(max) NULL,  Emel varchar(max) NULL)  
go
select * from information_schema.tables
go
INSERT dbo.Pengguna (IDPengguna, Nama, Alamat, Emel)  VALUES (1, 'Hanafiah', 'Enovade Sdn Bhd', 'hanafiah@enovade.com')
go
select * from pengguna
go
exit
