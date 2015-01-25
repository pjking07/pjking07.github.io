#!/bin/bash
if [[ $EUID -eq 0 ]]
then
    bundle update
else
    echo "Update jekyll by running script as sudo\n"
fi
bundle exec jekyll build --watch --drafts --config _config.yml,_config-dev.yml
