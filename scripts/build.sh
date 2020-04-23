#! /bin/sh

project="UnityAutoBuild"


echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchMode \
  -nographics \
  -silent-crashes \
  -logfile /dev/stdout \
  -projectPath $(pwd) \
  -username "$USERNAME" \
  -password "$PASSWORD" \
  -serial "${SERIAL}"\
  -buildOSXUniversalPlayer "$(pwd)/Build/osx/$project.app" \
  -quit

echo 'Logs from build'

ls -alh .

echo 'Attempting to zip builds'
# zip -r $(pwd)/Build/mac.zip $(pwd)/Build/osx/
