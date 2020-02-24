#!/bin/bash
url=$1
check=$(echo "$url" | grep -qFf /home/vishnu/repos/shell/browser-router/url-whitelist.txt)
if [ $? -eq 0 ];then
  google-chrome $url
else
  firefox $url
fi
