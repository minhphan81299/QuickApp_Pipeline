
FROM ubuntu:20.04 

# INSTALL .NET CORE SDK 
RUN apt-get update \
    && apt-get install -y wget curl \
    && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y apt-transport-https \
    && apt-get update \
    && apt-get install -y dotnet-sdk-5.0


## INSTALL NODEJS 14.x
RUN cd ~ &&\
    curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh  &&\
    bash ~/nodesource_setup.sh &&\
    apt-get install -y nodejs

## CREATE DEV_CERTS
RUN dotnet dev-certs https -ep ./conf.d/https/dev_cert.pfx -p minhphan
#RUN export ASPNETCORE_ENVIRONMENT=Testing

## COPY PUBLISH TO APP
WORKDIR /app
COPY ./Publish /app
EXPOSE 80
EXPOSE 5001
EXPOSE 5000
ENTRYPOINT ["dotnet", "QuickApp.dll"]
