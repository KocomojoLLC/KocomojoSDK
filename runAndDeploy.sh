generate-md --layout ./layout/ --input ./index.md
generate-md --layout ./layout/ --input ./experience.md
generate-md --layout ./layout/ --input ./button.md

( cd output && surge --domain kocomojo-sdk.surge.sh )

