@echo off

REM ** 解决中文乱码问题，将控制台代码页设置为 UTF-8 **
chcp 65001 > nul 

REM ** 切换到正确的项目目录 **
cd /d "D:\Thougts\thougts.github.io"

echo 正在清除旧的生成文件和缓存...
call hexo clean

echo 开始生成 Hexo 静态文件...
call hexo g

echo 静态文件生成完毕，开始部署...
call hexo d

echo 部署完成！
pause