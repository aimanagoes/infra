#!/bin/bash
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Password@123" -e "MSSQL_PID=Express" -p 1433:1433 -v mssqlserver_volume:/var/opt/mssql --name mssql -d mcr.microsoft.com/mssql/server:2019-CU15-ubuntu-20.04
sleep 10s
docker ps
docker exec -it mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password@123
