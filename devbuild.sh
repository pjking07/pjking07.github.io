#!/bin/bash
if [[ $EUID -eq 0 ]]
then
    bundle update
else
    echo "Run script as sudo in order to update jekyll \n"
fi
bundle exec jekyll build --watch --drafts --config _config.yml,_config-dev.yml
