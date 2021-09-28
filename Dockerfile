FROM mcr.microsoft.com/dotnet/sdk:5.0  AS build
WORKDIR /app
COPY ConversaoPeso.Web/* ./
RUN dotnet restore

FROM mcr.microsoft.com/dotnet/runtime:5.0
WORKDIR /app
COPY --from=build app/CoversaoPeso.Web* .
ENTRYPOINT [ "dotnet", "app/CoversaoPeso.Web.dll" ]
