# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ENV ASPNETCORE_ENVIRONMENT=Development
WORKDIR /source

# copy csproj and restore as distinct layers
COPY *.sln .
COPY *.csproj ./honey-beer-server/
WORKDIR /source/honey-beer-server
RUN dotnet restore honey-beer-server-app.csproj

# copy everything else and build app
COPY . ./honey-beer-server/
WORKDIR /source/honey-beer-server
RUN dotnet publish honey-beer-server-app.csproj -c release -o /app --no-restore

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app ./
RUN apt-get update && apt-get install -y curl	
EXPOSE 8080
ENTRYPOINT ["dotnet", "honey-beer-server-app.dll", "--environment=Development"]