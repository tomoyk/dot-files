#!/bin/bash

# Message
yes = | head -n 60 | tr -d '\n'
echo -e "\n>>> EXTRACT SCRIPT"
echo "- Do you want to extract configuration files?"
echo -e "- If you set original conf, We overwrite your confs."
yes = | head -n 60 | tr -d '\n'
echo
read Waiting

# bash
cp bash/.bash* ~/

# vim
cp -R vim/* ~/

# sublime
#
# Mac: 
# cp sublime/Preferences.sublime-settings "/Users/tkoyama/Library/Application Support/Sublime Text 3/Packages/User/"
