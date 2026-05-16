#!/bin/sh

# ==========参数设置==========
USER_ID="id"
PASSWORD="passwd"
SERVICE="ser"
# ===========================

QUERY_STRING="wlanuserip=10.201.66.69&wlanacname=FSN-XX-Business&ssid=&nasip=10.10.9.1&mac=8edef932a6d7&t=wireless-v2-plain&url=http://www.msftconnecttest.com/redirect&apmac=&nasid=FSN-XX-Business&vid=3325&port=513"
ping -c 2 -W 3 www.baidu.com >/dev/null 2>&1 || curl -s -X POST "http://10.10.9.4/eportal/InterFace.do?method=login" -H "Referer:http://10.10.9.4/eportal/index.jsp" -H "Content-Type:application/x-www-form-urlencoded; charset=UTF-8" --data-urlencode "userId=$USER_ID" --data-urlencode "password=$PASSWORD" --data-urlencode "service=$SERVICE" --data-urlencode "operatorPwd=" --data-urlencode "validcode=" --data-urlencode "passwordEncrypt=true" --data-urlencode "queryString=$QUERY_STRING"