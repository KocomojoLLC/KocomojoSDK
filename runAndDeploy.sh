generate-md --layout ./layout/ --input ./index.md
( cd output && surge --domain kocomojo-sdk.surge.sh )
