@echo off
:menu
echo.
echo ��ѡ������Ҫִ�еĲ���:
echo 1. ����Nginx
echo 2. ֹͣNginx
echo 3. ����Nginx
echo 4. �˳�
echo.
set /p choice="���������ѡ��(1-4): "

if %choice%==1 (
    echo ��������Nginx...
    cd /d "D:\vim\develop\nginx-1.22.1"
    start nginx.exe
    echo Nginx��������
    pause
    goto menu
) else if %choice%==2 (
    echo ����ֹͣNginx...
    cd /d "D:\vim\develop\nginx-1.22.1"
    nginx.exe -s stop
    echo Nginx��ֹͣ��
    pause
    goto menu
) else if %choice%==3 (
    echo ��������Nginx...
    cd /d "D:\vim\develop\nginx-1.22.1"
    nginx.exe -s reload
    echo Nginx��������
    pause
    goto menu
) else if %choice%==4 (
    echo �����˳�...
    exit
) else (
    echo ��Ч��ѡ��������ѡ��
    pause
    goto menu
)
