FROM mcr.microsoft.com/mssql/server:2019-latest
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=stvarnoNovo10
COPY ./backup.sql /app/backup.sql
EXPOSE 1433