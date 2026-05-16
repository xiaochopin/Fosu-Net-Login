@echo off
chcp 65001 >nul
title 佛大校园网自动登录

:: ====================参数设置====================
set "USERID=id"
set "PASSWORD=passwd"
set "SERVICE=ser"
:: =================================================

set "QUERY_STRING=wlanuserip=10.201.66.69&wlanacname=FSN-XX-Business&ssid=&nasip=10.10.9.1&mac=8edef932a6d7&t=wireless-v2-plain&url=http://www.msftconnecttest.com/redirect&apmac=&nasid=FSN-XX-Business&vid=3325&port=513"

echo.
echo 正在检测网络状态...
ping -n 2 www.baidu.com >nul 2>&1

if %errorlevel% equ 0 (
    echo 网络正常，无需登录
) else (
    echo 网络已断开，正在自动登录...
    curl -s -X POST "http://10.10.9.4/eportal/InterFace.do?method=login" -H "Referer:http://10.10.9.4/eportal/index.jsp" -H "Content-Type:application/x-www-form-urlencoded; charset=UTF-8" --data-urlencode "userId=%USERID%" --data-urlencode "password=%PASSWORD%" --data-urlencode "service=%SERVICE%" --data-urlencode "operatorPwd=" --data-urlencode "validcode=" --data-urlencode "passwordEncrypt=true" --data-urlencode "queryString=%QUERY_STRING%"
    echo.
    echo 登录完成！
)

echo.