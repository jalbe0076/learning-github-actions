#!/bin/bash
set -e

if [ -n "$GITHUB_EVENT_PATH" ];
then
    EVENT_PATH=$GITHUB_EVENT_PATH
elif [ -f /Ch05/05_05/sample_push_event.json ];
then
    EVENT_PATH='/Ch05/05_05/sample_push_event.json'
    LOCAL_TEST=true
else
    echo "No JSON data to process! :("
    exit 1
fi

env
jq . < $EVENT_PATH

# if keyword is found
if jq '.commits[].message, .head_commit.message' < $EVENT_PATH | grep -i -q "$*";
then
    # do something
    echo "Found keyword."
# otherwise
else
    # exit gracefully
    echo "Nothing to process."
fi

# jason Exercise_Files %  main ./Ch05/05_05/entrypoint.sh 
# Nothing to process.
# jason Exercise_Files %  main ./Ch05/05_05/entrypoint.sh FIXED
# Found keyword.
# jason Exercise_Files %  main ./Ch05/05_05/entrypoint.sh foo  
# Nothing to process.
# jason Exercise_Files %  main 