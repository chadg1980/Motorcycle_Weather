#!/bin/bash
rm index.zip
cd lambda
zip -X -r ../index.zip *
cd ..
touch hello.world
aws lambda update-function-code --function-name motorcycle_weather --zip-file fileb://index.zip --publish