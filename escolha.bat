@echo off
Title Criador de pastas.

echo Primeiro defina o nome da pasta principal
set /p principal=Nome:
cls 
goto menu

:menu
echo quantas pastas voce deseja criar
echo 1. uma pasta
echo 2. duas pastas
echo 3. tres pastas
echo 4. quatro pastas

set /p escolha=Escolha uma opcao:
if %escolha% equ 1 goto escolha1
if %escolha% equ 2 goto escolha2
if %escolha% equ 3 goto escolha3
if %escolha% equ 4 goto escolha4

:escolha1
cls
set /p nome_pasta1=Insira o nome da pasta:
mkdir %principal%\%nome_pasta1%\
echo Pasta criada com sucesso.
goto final

:escolha2
cls 
set /p nome_pasta2=Insira o nome da primeira pasta:
set /p nome_pasta2_1=Insira o nome da segunda pasta:
mkdir %principal%\%nome_pasta2%
mkdir %principal%\%nome_pasta2_1%
echo Pastas criadas com sucesso.
goto final

:escolha3
cls
set /p nome_pasta3=Insira o nome da primeira pasta:
set /p nome_pasta3_1=Insira o nome da segunda pasta:
set /p nome_pasta3_2=Insira o nome da terceira pasta:
mkdir %principal%\%nome_pasta3%
mkdir %principal%\%nome_pasta3_1%
mkdir %principal%\%nome_pasta3_2%
echo Pastas criadas com sucesso.
goto final

:escolha4 
cls
set /p nome_pasta4=Insira o nome da primeira pasta:
set /p nome_pasta4_1=Insira o nome da segunda pasta:
set /p nome_pasta4_2=Insira o nome da terceira pasta:
set /p nome_pasta4_3=Insira o nome da quarta pasta:
mkdir %principal%\%nome_pasta4%
mkdir %principal%\%nome_pasta4_1%
mkdir %principal%\%nome_pasta4_2%
mkdir %principal%\%nome_pasta4_3%
echo Pastas criadas com sucesso.
goto final

:final
cls
echo O que voce deseja fazer agora?
echo 1. Apagar as pastas criadas.
echo 2. Copiar as pastas para a area de trabalho.
echo 3. Sair

set /p opcao=Escolha uma opcao:
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto saida

:opcao1
echo Voce decidiu apagar as pastas cridas, tem certeza disso?
set /p decisao=SIM ou NAO?
if %decisao% equ sim goto apagar
if %decisao% equ nao goto final

:apagar
rd /s %principal%
echo Pastas apagadas.
cls
exit

:opcao2
echo Voce escolheu copiar as pastas para a area de trabalho
xcopy /e C:\Users\%username%\desktop\%principal% C:\Users\%username%\desktop\%principal%2
echo Pastas copiadas com sucesso.
cls
exit

:saida
cls
exit
