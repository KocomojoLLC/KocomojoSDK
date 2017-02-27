rm KocomojoSDK.framework.zip
cd KocomojoSDK
zip -r ../KocomojoSDK.framework.zip ./KocomojoSDK.framework -x "KocomojoSDK.framework/strip-frameworks.sh"
cd ..
#./upload-github-release-asset.sh github_api_token=$(<.githubApiToken) owner=KocomojoLLC repo=KocomojoSDK tag=$1 filename=./KocomojoSDK.framework.zip
