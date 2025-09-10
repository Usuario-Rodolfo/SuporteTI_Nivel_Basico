@echo off
:: =========================================
:: PAINEL BASICO DE SUPORTE TI - NIVEL BASICO
:: Funcional e seguro para uso geral
:: =========================================

:: ------------------ VERIFICAR ADMIN ------------------
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo [ERRO] Este script precisa ser executado como Administrador!
    pause
    exit
)

:MENU
cls
echo ==============================
echo     PAINEL BASICO DE SUPORTE TI
echo ==============================
echo.
echo 1. Limpeza de Sistema
echo 2. Diagnostico e Limpeza de Rede
echo 3. Bloqueio Porta SMB 445
echo 4. Verificar e Reparar Disco (CHKDSK)
echo 5. Sair
echo.
set /p opcao="Escolha uma opcao (1-5): "

if "%opcao%"=="1" goto LIMPEZA
if "%opcao%"=="2" goto REDE
if "%opcao%"=="3" goto BLOQUEIO
if "%opcao%"=="4" goto CHKDSK
if "%opcao%"=="5" exit
goto MENU

:: ------------------ LIMPEZA DE SISTEMA ------------------
:LIMPEZA
cls
echo ==============================
echo        LIMPEZA DE SISTEMA
echo ==============================
echo.
set /p confirma="Deseja executar a limpeza de sistema? (S/N): "
if /i "%confirma%" NEQ "S" goto MENU

cleanmgr /sagerun:1
del /q/f/s %temp%\* 2>nul
del /q/f/s C:\Windows\Temp\* 2>nul

echo.
echo [OK] Limpeza de sistema concluida!
pause
goto MENU

:: ------------------ DIAGNOSTICO E LIMPEZA DE REDE ------------------
:REDE
cls
echo ==============================
echo    DIAGNOSTICO E LIMPEZA DE REDE
echo ==============================
echo.
set /p confirma="Deseja executar a limpeza e diagnostico de rede? (S/N): "
if /i "%confirma%" NEQ "S" goto MENU

ipconfig /flushdns
ipconfig /release
ipconfig /renew
arp -d *
netstat -ano

echo.
echo [OK] Rede limpa e diagnosticada!
pause
goto MENU

:: ------------------ BLOQUEIO PORTA SMB ------------------
:BLOQUEIO
cls
echo ==============================
echo       BLOQUEIO PORTA SMB 445
echo ==============================
echo.
set /p confirma="Deseja bloquear a porta SMB 445? (S/N): "
if /i "%confirma%" NEQ "S" goto MENU

netsh advfirewall firewall add rule name="Bloquear SMB 445" dir=in action=block protocol=TCP localport=445

echo.
echo [OK] Porta SMB 445 bloqueada com sucesso!
pause
goto MENU

:: ------------------ VERIFICAR E REPARAR DISCO ------------------
:CHKDSK
cls
echo ==============================
echo   VERIFICAR E REPARAR DISCO
echo ==============================
echo.
set /p confirma="Deseja executar CHKDSK no disco C:? (S/N): "
if /i "%confirma%" NEQ "S" goto MENU

chkdsk C: /F /R

echo.
echo [OK] Verificacao e reparo do disco concluida!
pause
goto MENU
