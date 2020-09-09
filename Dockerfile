FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /source/
COPY . .
COPY ./entrypoint.sh /
RUN dotnet tool install --global CocoR --version 2014.12.22 

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
