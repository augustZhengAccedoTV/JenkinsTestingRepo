ROKU_BUILD_TYPES=("proda" "prodc" "debug")
ROKU_IP="192.168.2.28"
ROKU_PASSWORD="1234"
ARCHIVE_NAME="AugustTesting" ## Jira ticket number
TAG_NAME="0.0.1" ##build version

npm run deploy -- --hostIp="$ROKU_IP" --password="$ROKU_PASSWORD"

# for buildType in "${ROKU_BUILD_TYPES[@]}"; do
#     npm run deploy -- --hostIp="$ROKU_IP" --password="$ROKU_PASSWORD" --build_type="$buildType"
#     mv out/roku-deploy.zip "out/${ARCHIVE_NAME}-${TAG_NAME}-${buildType}.zip"
#     if [ -f out/roku-deploy.pkg ]; then
#         mv out/roku-deploy.pkg "out/${ARCHIVE_NAME}-${TAG_NAME}-${buildType}.pkg"
#     fi
#     sleep 5  # Wait for 5 seconds before proceeding to the next build type
# done
