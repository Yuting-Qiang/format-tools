REM 提取当前目录（及其子目录）下的所有mp4文件的音频，并保存为MP3文件
REM 需要先安装ffmpeg,下载：https://ffmpeg.zeranoe.com/builds/， 参考：http://blog.topspeedsnail.com/archives/1699
set format=*.mp4 *.avi *.wmv *.m4v *.flv *.rm *.mov *.rmvb
REM FOR /R %%i IN (%format%) DO @echo "%%~ni.mp3"
FOR /R %%i IN (%format%) DO ffmpeg -i "%%~fi" -vn -ab 128k "%%~ni.mp3"
