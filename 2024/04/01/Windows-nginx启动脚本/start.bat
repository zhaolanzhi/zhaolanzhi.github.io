@echo off
:menu
echo.
echo 请选择你想要执行的操作:
echo 1. 启动Nginx
echo 2. 停止Nginx
echo 3. 重启Nginx
echo 4. 退出
echo.
set /p choice="请输入你的选择(1-4): "

if %choice%==1 (
    echo 正在启动Nginx...
    cd /d "D:\vim\develop\nginx-1.22.1"
    start nginx.exe
    echo Nginx已启动。
    pause
    goto menu
) else if %choice%==2 (
    echo 正在停止Nginx...
    cd /d "D:\vim\develop\nginx-1.22.1"
    nginx.exe -s stop
    echo Nginx已停止。
    pause
    goto menu
) else if %choice%==3 (
    echo 正在重启Nginx...
    cd /d "D:\vim\develop\nginx-1.22.1"
    nginx.exe -s reload
    echo Nginx已重启。
    pause
    goto menu
) else if %choice%==4 (
    echo 正在退出...
    exit
) else (
    echo 无效的选择，请重新选择。
    pause
    goto menu
)
