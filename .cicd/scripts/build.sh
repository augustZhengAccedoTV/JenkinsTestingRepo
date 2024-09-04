#!/bin/bash
ROKU_IP=172.20.1.107
ROKU_PASSWORD=abcd
ROKU_BUILD_TYPES=debug,prodc,proda,prodb
ROKU_PKG_KEY_FILE=scripts/key.pkg
ROKU_FILES=[source/**/*.*,components/**/*.*,images/**/*.*,fonts/**/*.*,manifest,lib/**/*.*,json/**/*.*,!components/tests/**/*.*,!source/tests/**/*.*,!components/architecture/trackerTask/TrackerTask.xml]
TAG_NAME=Test
ARCHIVE_NAME=Cogeco

npm run deploy -- --hostIp="$ROKU_IP" --password="$ROKU_PASSWORD"
# for buildType in "${ROKU_BUILD_TYPES[@]}"; do
#     npm run deploy -- --hostIp="$ROKU_IP" --password="$ROKU_PASSWORD" --build_type="$buildType"
#     mv out/roku-deploy.zip "out/${ARCHIVE_NAME}-${TAG_NAME}-${buildType}.zip"
#     if [ -f out/roku-deploy.pkg ]; then
#         mv out/roku-deploy.pkg "out/${ARCHIVE_NAME}-${TAG_NAME}-${buildType}.pkg"
#     fi
#     sleep 5  # Wait for 5 seconds before proceeding to the next build type
# done
