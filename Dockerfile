FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /src
COPY . .
RUN dotnet publish BrezyWeather.csproj -c Release -o /app

WORKDIR /app
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["dotnet", "BrezyWeather.dll"]
