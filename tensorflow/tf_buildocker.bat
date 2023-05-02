@echo off

rem Set the GitHub username as a variable
set GITHUB_USERNAME=rianders

rem Get the short commit hash
for /f %%i in ('git rev-parse --short HEAD') do set hash=%%i

rem Use the variable in the docker build and push commands
docker build --platform linux/arm64/v8 -t %GITHUB_USERNAME%/tensorflownb:%hash% -f Dockerfile .
docker push %GITHUB_USERNAME%/tensorflownb:%hash%

rem Output the hash
echo %hash%
