FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

# Copy everything else and build
COPY . ./

RUN dir

RUN more directory.build.props

RUN dotnet restore

RUN dotnet publish -c Release -o out