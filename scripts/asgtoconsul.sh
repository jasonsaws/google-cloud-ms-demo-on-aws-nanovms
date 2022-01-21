#!/bin/bash
cd images/asgtoconsul
cat <<< $( jq --arg bucket "$bucket" '.CloudConfig.BucketName = $bucket' config.json) > config.json
/root/.ops/bin/ops image create asgtoconsul -i asgtoconsul -c config.json --show-debug -t aws