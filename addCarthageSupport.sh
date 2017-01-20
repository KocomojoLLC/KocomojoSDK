rm KocomojoSDK.framework.zip
zip -r KocomojoSDK.framework.zip ./KocomojoSDK/KocomojoSDK.framework -x "KocomojoSDK/KocomojoSDK.framework/strip-frameworks.sh"
./upload-github-release-asset.sh github_api_token=$(<.githubApiToken) owner=KocomojoLLC repo=KocomojoSDK tag=$1 filename=./KocomojoSDK.framework.zip
