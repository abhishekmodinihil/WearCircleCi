#!/usr/bin/env bash
AndroidAppId=f20ba273fed54d01a2ae008415112517
HockeyAppToken=9cb95e7037ec6d42e4b4186f734a58f0

curl \
-F "status=2" \
-F "notify=0" \
-F "ipa=@AppName/build/outputs/apk/appname-dev-debug.apk" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId_Dev/app_versions/upload