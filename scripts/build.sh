#! /bin/sh

project="UnityAutoBuild"


echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd) \
  -buildOSXUniversalPlayer "$(pwd)/Build/osx/$project.app" \
  -force-free \
  -username "${USERNAME}" \
  -password "${PASSWORD}" \
  -quit


echo 'Logs from build'
cat $(pwd)/unity.log


echo 'Attempting to zip builds'
# zip -r $(pwd)/Build/mac.zip $(pwd)/Build/osx/
