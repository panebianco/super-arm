:: Bootstrap script for configuring windows workstations
:: Should install chocolaty and install all windows applications as packages
:: This script requires admin privileges
:: Packages should be updated on a weekly basis and can be done using the command 'choco upgrade all -y'

:: Install chocolaty
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install browsers
choco install googlechrome -y
choco install chromium -y
choco install firefox -y

:: Install cloud storage tools
choco install googledrive -y

:: Install hypervisors and containers
choco install virtualbox -y
choco install docker-desktop -y
choco install docker-cli -y

:: Install integrated development environments
choco install vscode -y
choco install intellijidea-community -y
choco install intellijidea-ultimate -y

:: Install programming languages
choco install jdk8 -y
choco install groovy -y
choco install nodejs -y
choco install python -y

:: Install version control and configuration management tools
choco install git -y
choco install gradle -y
choco install maven -y

:: Install infrastructure automation tools
choco install terraform -y
choco install packer -y
choco install vault -y

:: Install packet sniffing tools
choco install wireshark -y
:: wireshark dependency
choco install winpcap -y

:: Install nifty gui tools
choco install winscp -y
choco install putty -y

:: Install radical cli tools
choco install vim -y
choco install awscli -y
choco install openssh -y
choco install curl -y
choco install wget -y
choco install jq -y
choco install grep -y

:: Install multimedia / miscellaneous tools
choco install adobereader -y
choco install vlc -y
choco install 7zip -y

:: Install digital distribution platforms
choco install steam -y

:: Install collaboration tools
choco install slack -y
choco install discord -y

:: Install photo manipulation tools
choco install gimp -y

:: Install SD card tools
choco install win32diskimager -y

:: Install hardware monitoring tools
choco install hwinfo -y
