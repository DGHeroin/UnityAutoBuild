#! /bin/sh

project="UnityAutoBuild"


echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchMode \
  -silent-crashes \
  -logfile /dev/stdout \
  -projectPath $(pwd) \
  -buildOSXUniversalPlayer "$(pwd)/Build/osx/$project.app" \
  -force-free \
  -username "${USERNAME}" \
  -password "${PASSWORD}" \
  -quit


echo 'Logs from build'

ls -alh .

echo 'Attempting to zip builds'
# zip -r $(pwd)/Build/mac.zip $(pwd)/Build/osx/
