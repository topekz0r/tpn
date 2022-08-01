#!/bin/bash
code="200"
var=$(curl -s -I  https://dogechain.info/api/v1/block/1200 | head -n 1 | awk -F" " '{print $2}')
if [ "$var" -ne "$code" ];
then
	exit 0
else
result=$(curl -s "https://dogechain.info/api/v1/block/1200" | jq '.block.time')
date -d  @$result
fi > /home/tpn/result.txt
