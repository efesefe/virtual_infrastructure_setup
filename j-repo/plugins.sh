#!/bin/bash
declare -a PluginList=(
    "blueocean"
    "gitea" 
    "kubernetes" 
)

for plugin in ${PluginList[@]}; do
   java -jar jenkins-cli.jar -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done
