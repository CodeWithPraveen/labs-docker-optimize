FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /src
COPY . .
RUN dotnet publish BrezyWeather.csproj -o /app 

WORKDIR /app
ENV ASPNETCORE_URLS=http://+:80/
EXPOSE 80
ENTRYPOINT ["dotnet", "BrezyWeather.dll"]