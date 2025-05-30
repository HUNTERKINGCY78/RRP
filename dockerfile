# Dockerfile
FROM mcr.microsoft.com/windows/servercore:ltsc2019

WORKDIR /app


ADD https://gitlab.com/raposabrty/pcrdp/-/raw/main/Downloads.bat Downloads.bat
RUN Downloads.bat


COPY show.bat .
COPY loop.bat .


CMD ["cmd", "/c", "show.bat && loop.bat"]
