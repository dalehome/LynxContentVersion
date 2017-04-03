
REM Non-generified one-off Version checker
REM © 2017 Dale

@echo off
HOSTNAME
IPCONFIG
FOR /F "tokens=2 delims==" %%I IN (
  'wmic datafile where "name='D:\\Program Files\\Thomson Reuters\\Lynx\\Service\\Content\\TR.News.Lynx.Service.Content.Services.Hosts.WinService.exe'" get version /format:list'
) DO SET "RESULT=%%I"
ECHO[
ECHO Content Service version = %RESULT%
PAUSE
