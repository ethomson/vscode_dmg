#!/bin/sh

curl -L https://go.microsoft.com/fwlink/?LinkID=620882 > VSCode-darwin-stable.zip
unzip VSCode-darwin-stable.zip

create-dmg/create-dmg \
    --volname "Visual Studio Code" \
    --background "background.png" \
    --window-pos 200 120 \
    --window-size 500 320 \
    --icon-size 80 \
    --icon "Visual Studio Code.app" 125 175 \
    --hide-extension "Visual Studio Code.app" \
    --app-drop-link 375 175 \
    "Visual Studio Code.dmg" \
    "Visual Studio Code.app"
