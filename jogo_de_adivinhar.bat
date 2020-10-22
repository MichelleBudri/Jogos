@echo off
title JOGO DE ADIVINHAR
mode 70,35
color 0a

:inicio
    cls
    set /a tentativas = 5
    set /a numeroSorteado=(%random% %% 50) + 1
    set /a a1 = 0
    set /a a2 = 0
    set /a a3 = 0
    set /a a4 = 0
    set /a a5 = 0

    echo.  
    
:palpites1
    echo            ,,,                              ___
    echo           (o o)                            (o o)
    echo ------oOO--( )--OOo--------------------o00--( )--00o--
    echo            FEITO POR MICHELLE BUDRI BOGNAR
    echo.
    echo            QUANTIDADE DE TENTATIVAS: %tentativas%
    echo ------------------------------------------------------
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo.
    set /p palpite=DIGITE SEU PALPITE:
    set /a a1 = %palpite%
    goto:jogada

:palpites2
    set /a tentativas = %tentativas%-1
    echo            ,,,                              ___
    echo           (o o)                            (o o)
    echo ------oOO--( )--OOo--------------------o00--( )--00o--
    echo.
    echo            QUANTIDADE DE TENTATIVAS: %tentativas%
    echo ======================================================
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo ------------------------------------------------------
    echo NUMEROS JOGADOS: %a1% 
    echo.
    set /p palpite2=DIGITE SEU PALPITE:
    set /a a2 = %palpite2%
    goto:jogada2

:palpites3
    set /a tentativas = %tentativas%-1
    echo            ,,,                              ___
    echo           (o o)                            (o o)
    echo ------oOO--( )--OOo--------------------o00--( )--00o--
    echo.
    echo            QUANTIDADE DE TENTATIVAS: %tentativas%
    echo ======================================================
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo ------------------------------------------------------
    echo NUMEROS JOGADOS: %a1%  %a2%
    echo.
    set /p palpite3=DIGITE SEU PALPITE:
    set /a a3 = %palpite3%
    goto:jogada3

:palpites4
    set /a tentativas = %tentativas%-1
    echo            ,,,                              ___
    echo           (o o)                            (o o)
    echo ------oOO--( )--OOo--------------------o00--( )--00o--
    echo.
    echo            QUANTIDADE DE TENTATIVAS: %tentativas%
    echo ======================================================
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo ------------------------------------------------------
    echo NUMEROS JOGADOS: %a1%  %a2%  %a3%
    echo.
    set /p palpite4=DIGITE SEU PALPITE:
    set /a a4 = %palpite4%
    goto:jogada4

:palpites5
    set /a tentativas = %tentativas%-1
    echo            ,,,                              ___
    echo           (o o)                            (o o)
    echo ------oOO--( )--OOo--------------------o00--( )--00o--
    echo.
    echo            QUANTIDADE DE TENTATIVAS: %tentativas%
    echo ======================================================
    echo       ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50
    echo ------------------------------------------------------
    echo NUMEROS JOGADOS: %a1%  %a2%  %a3%  %a4%
    echo.
    set /p palpite5=DIGITE SEU PALPITE:
    set /a a5 = %palpite5%
    goto:jogada5

:jogada

    if %palpite% GTR 50 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero menor que 50!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites1
        
    ) 

    if %palpite% LSS 1 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero maior que 1!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites1
    ) 
           
    if %palpite% LSS %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero maior!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites2
    )
    
    if %palpite% GTR %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero menor!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites2
    )

    if %palpite% == %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!!
        echo ------------------------------------------------------
        echo. 
        pause > nul
        cls
        goto:sair     
    )   

:jogada2

    if %palpite2% GTR 50 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero menor que 50!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites2
        
    ) 

    if %palpite2% LSS 1 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero maior que 1!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites2
    ) 
           
    if %palpite2% LSS %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero maior!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites3
    )
    
    if %palpite2% GTR %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero menor!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites3
    )

    if %palpite2% == %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!!
        echo ------------------------------------------------------
        echo. 
        pause > nul
        cls
        goto:sair     
    )      

:jogada3

    if %palpite3% GTR 50 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero menor que 50!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites3
        
    ) 

    if %palpite3% LSS 1 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero maior que 1!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites3
    ) 
           
    if %palpite3% LSS %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero maior!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites4
    )
    
    if %palpite3% GTR %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero menor!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites4
    )

    if %palpite3% == %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!!
        echo ------------------------------------------------------
        echo. 
        pause > nul
        cls
        goto:sair     
    )        

:jogada4

    if %palpite4% GTR 50 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero menor que 50!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites4
        
    ) 

    if %palpite4% LSS 1 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero maior que 1!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites4
    ) 
           
    if %palpite4% LSS %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero maior!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites5
    )
    
    if %palpite4% GTR %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo              Digite um numero menor!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites5
    )

    if %palpite4% == %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!!
        echo ------------------------------------------------------
        echo. 
        pause > nul
        cls
        goto:sair     
    )       

:jogada5

    if %palpite5% GTR 50 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero menor que 50!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites5
        
    ) 

    if %palpite5% LSS 1 (
        echo.
        echo ------------------------------------------------------
        echo   Opcao Invalida! Digite um numero maior que 1!!!
        echo ------------------------------------------------------
        pause > nul
        cls
        goto:palpites5
    ) 

    if %palpite5% == %numeroSorteado% (
        echo.
        echo ------------------------------------------------------
        echo             PARABENS, VOCE ACERTOU!!
        echo ------------------------------------------------------
        echo. 
        pause > nul
        cls
        goto:sair     
    )     

    if %palpite5% NEQ %numeroSorteado% (

        echo.
        echo ------------------------------------------------------
        echo         VOCE PERDEU!!! O NUMERO SORTEADO ERA
        echo                        %numeroSorteado%
        echo ------------------------------------------------------
        echo. 
        pause > nul
        cls
        goto:sair   
    ) 


:sair
cls
    set /p ext=Deseja jogar novamente? (S/N) : 
    if /i %ext% == s (goto:inicio)
    if /i %ext% == n (exit) else (
        echo.
        echo ---------------------------------------------------------
        echo             OPCAO INVALIDA!! DIGITE S OU N
        echo ---------------------------------------------------------
        pause > nul
        goto:sair)
    