#!/usr/bin/env bash
AndroidAppId=f20ba273fed54d01a2ae008415112517
HockeyAppToken=9cb95e7037ec6d42e4b4186f734a58f0


curl \
-F "status=2" \
-F "notify=0" \
-F "notes_type=1" \
-F "notes=Merged in $CIRCLE_BRANCH branch, Commit URL: $CIRCLE_BUILD_URL" \
-F "repository_url=$CIRCLE_REPOSITORY_URL" \
-F "build_server_url=$CIRCLE_BUILD_URL" \
-F "commit_sha=$CIRCLE_SHA1" \
-F "ipa=@app/build/outputs/apk/debug/app-debug.apk" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload

