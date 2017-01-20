zip -r KocomojoSDK.framework.zip KocomojoSDK/KocomojoSDK.framework
./upload-github-release-asset.sh github_api_token=$(<.githubApiToken) owner=KocomojoLLC repo=KocomojoSDK tag=$1 filename=./KocomojoSDK.framework.zip
