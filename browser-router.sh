#!/bin/bash
url=$1
check=$(echo "$url" | grep -qFf {path-to}/url-whitelist.txt)
if [ $? -eq 0 ];then
  google-chrome $url
else
  firefox $url
fi
