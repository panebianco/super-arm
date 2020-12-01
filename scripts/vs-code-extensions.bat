:: Bootstrap script for configuring visual studio code extensions
:: Should install extensions
:: This script requires visual studio code to be installed

:: Install node.js extensions
CALL code --install-extension eg2.vscode-npm-script
CALL code --install-extension christian-kohler.npm-intellisense
CALL code --install-extension octref.vetur

:: Install wsl extensions
CALL code --install-extension ms-vscode-remote.remote-wsl

:: Install web extensions
CALL code --install-extension msjsdiag.debugger-for-chrome
CALL code --install-extension ritwickdey.liveserver
CALL code --install-extension dbaeumer.vscode-eslint
CALL code --install-extension formulahendry.auto-close-tag
CALL code --install-extension formulahendry.auto-rename-tag
CALL code --install-extension abusaidm.html-snippets
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

:: Install aws extensions
CALL code --install-extension loganarnett.lambda-snippet

:: Install infrastructure orchestration extensions
CALL code --install-extension mauve.terraform
CALL code --install-extension aws-scripting-guy.cform

:: Install configuration management extensions
CALL code --install-extension vscoss.vscode-ansible
CALL code --install-extension puppet.puppet-vscode

:: Install miscellaneous extensions
CALL code --install-extension esbenp.prettier-vscode
CALL code --install-extension coenraads.bracket-pair-colorizer
CALL code --install-extension asciidoctor.asciidoctor-vscode
CALL code --install-extension alefragnani.bookmarks
CALL code --install-extension hangxingliu.vscode-systemd-support
CALL code --install-extension streetsidesoftware.code-spell-checker
