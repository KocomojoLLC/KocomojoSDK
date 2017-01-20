zip -r KocomojoSDK.framework.zip KocomojoSDK/KocomojoSDK.framework
./upload-github-release-asset.sh github_api_token=$1 owner=KocomojoLLC repo=KocomojoSDK tag=$2 filename=./KocomojoSDK.framework.zip 
