#!/usr/bin/env bash
echo '############# S T A R T ################'
echo '########################################'
echo '########################################'
echo '##### Re-Run Docker Info Docs ##########'
echo '########################################'
echo '####### B U I L D - S I T E ############'
echo '########################################'
mkdocs build --clean
mkdir -p site
chmod -R 0777 site/
echo '########################################'
echo '########################################'
echo '########################################'
echo '####### B U I L D - D O C K E R ########'
echo '########################################'
./build.sh
echo '########################################'
echo '########################################'
echo '########################################'
echo '####### R U N - D O C K E R ############'
./run-container.sh
echo '########################################'
echo '########################################'
echo '############# E N D ####################'