# dotnetcore_weatherapp
## Introduction
This is a sample weather application meant for understanding dotnet core compilation and building process. Additionaly, it also can be deployed using docker container.
#### Scope
* Running an application in stand-alone mode
* Deploying application on linux - Centos using Apache as web server using Docker
#### Executing Application
##### Restoring packages
```
dotnet restore MicroServiceDocker
```
##### Publishing Package
```
dotnet publish MicroServiceDocker/MicroServiceDocker.csproj -c Release -o published
```
##### Running application
```
dotnet published/WeatherMicroservice.dll --server.urls http://127.0.0.1:5000
```
##### Output
```
[
  {
    "HiTemperature": 72,
    "LoTemperature": 2,
    "AverageWindSpeed": 22,
    "Conditions": "Sunny"
  },
  {
    "HiTemperature": 43,
    "LoTemperature": 13,
    "AverageWindSpeed": 8,
    "Conditions": "Mostly Sunny"
  },
  {
    "HiTemperature": 75,
    "LoTemperature": 46,
    "AverageWindSpeed": 40,
    "Conditions": "Partly Sunny"
  },
  {
    "HiTemperature": 46,
    "LoTemperature": 41,
    "AverageWindSpeed": 26,
    "Conditions": "Partly Cloudy"
  },
  {
    "HiTemperature": 77,
    "LoTemperature": 15,
    "AverageWindSpeed": 13,
    "Conditions": "Mostly Cloudy"
  }
]
```

#### Deploying Docker Container
##### Readymade Image
```
docker pull dhavlev/dotnet_apache_centos
```
##### Build Docker Image
```
docker build -t dotnet:1.0 .
```
##### Run Docker Image
```
docker run -d --name=web1 -p 8080:80 dotnet:1.0
```
##### Stop Docker Image
```
docker stop web1
```
##### Accessing Web App
```
http://MyServerNameOrIP:8080/?lat=12312312&long=123112
```
