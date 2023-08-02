:: Bootstrap script for configuring visual studio code extensions
:: Should install extensions
:: This script requires visual studio code to be installed

:: Install node.js extensions
CALL code --install-extension christian-kohler.npm-intellisense
CALL code --install-extension octref.vetur

:: Install wsl extensions
CALL code --install-extension ms-vscode-remote.remote-wsl

:: Install web extensions
CALL code --install-extension msjsdiag.debugger-for-chrome
CALL code --install-extension ritwickdey.liveserver
CALL code --install-extension dbaeumer.vscode-eslint
CALL code --install-extension ecmel.vscode-html-css
CALL code --install-extension xabikos.javascriptsnippets
CALL code --install-extension aws-amplify.aws-amplify-vscode

:: Install python extensions
CALL code --install-extension ms-python.python

:: Install api extensions
CALL code --install-extension arjun.swagger-viewer
CALL code --install-extension 42crunch.vscode-openapi

:: Install serialization extensions
CALL code --install-extension redhat.vscode-xml
CALL code --install-extension redhat.vscode-yaml

:: Install infrastructure orchestration extensions
CALL code --install-extension hashicorp.terraform
CALL code --install-extension aws-scripting-guy.cform

:: AWS extensions
CALL code --install-extension amazonwebservices.aws-toolkit-vscode

:: Install miscellaneous extensions
CALL code --install-extension visualstudioexptteam.vscodeintellicode
CALL code --install-extension esbenp.prettier-vscode
CALL code --install-extension christian-kohler.path-intellisense
CALL code --install-extension asciidoctor.asciidoctor-vscode
CALL code --install-extension alefragnani.bookmarks
CALL code --install-extension wayou.vscode-todo-highlight
CALL code --install-extension hangxingliu.vscode-systemd-support
CALL code --install-extension streetsidesoftware.code-spell-checker
