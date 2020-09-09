FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /source
RUN mkdir -p /root/coco && \
    dotnet tool install --global CocoR --version 2014.12.22
ENV COCOR /root/.dotnet/tools/coco
COPY *.frame /root/coco/
CMD -frames /root/coco -o /source
ENTRYPOINT /root/.dotnet/tools/coco 

