dim user, sorteio_op1, sorteio_op2, sorteio_op3, sorteio_op4, n
dim nivel1(5), nivel2(5), nivel3(5), nivel4(5), a(20), i
dim audio, chance, pulo, res1, acerto, nivel
dim plv(4), plv2(4), plv3(4), plv4(4), plv5(4)
call carregar_audio

sub carregar_audio()
 set audio=createobject("SAPI.SPVOICE")
 audio.volume=100
 audio.rate=1
 call inicio
end sub

sub inicio()
 sorteio_op1 = 0
 acerto = 0
 pulo = 1
 Do
  user=Ucase(inputbox("SEJA BEM-VINDO(A) AO SOLETRANDO"+ vbNewLine &_
  "==================================="+ vbNewLine &_
  "PREPARE-SE, APÓS DIGITAR SEU NOME A PRIMEIRA PALAVRA SERÁ FALADA"+ vbNewLine &_
  "==================================="+ vbNewLine &_
  "DIGITE SEU NOME"))
  if IsEmpty(user) then
   wscript.quit
  end if
  user=Trim(user)
 Loop Until user > ""
 call sortear
end sub

sub fim_de_jogo()
	audio.speak ("VOCÊ PERDEU "& user & "")
	n=(msgbox("QUE PENA, VOCÊ ERROU!"+ vbNewLine &_
	"QUANTIDADE DE ACERTOS: "& acerto & " DE 12"+ vbNewLine &_
	"NÍVEL " & nivel & ""+ vbNewLine &_
	"DESEJA JOGAR NOVAMENTE? ",vbQuestion + vbYesNo,"FIM DE JOGO"))
	
	if n = vbYes then
		call carregar_audio
	else
		wscript.quit
	end if	
end sub


sub sortear()
	chance = 1

    if acerto < 3 Then
        nivel1(1) = "CUPIM"
	    nivel1(2) = "JILÓ"
	    nivel1(3) = "CHÁCARA"
	    nivel1(4) = "ESCADARIA"
	    nivel1(5) = "CADEADO"
		
		for n=1 to 5 step 1
			    randomize(second(time))
			    sorteio_op1=int(rnd * 5) + 1		
		next

        if plv(1) = nivel1(sorteio_op1) Then
				
				do while plv(1) = nivel1(sorteio_op1)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op1=int(rnd * 5) + 1		
					next
				loop
                	
				plv2(1) = nivel1(sorteio_op1)
				
		elseif plv(1) = plv2(1) Then
		
				do while plv2(1) = nivel1(sorteio_op1)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op1=int(rnd * 5) + 1		
					next
				loop
 			
				plv3(1) = nivel1(sorteio_op1)
				
		elseif plv(1) = plv3(1) Then
		
				do while plv3(1) = nivel1(sorteio_op1)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op1=int(rnd * 5) + 1		
					next
				loop

				plv4(1) = nivel1(sorteio_op1)		
				
		elseif plv(1) = plv4(1) Then
		
				do while plv4(1) = nivel1(sorteio_op1)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op1=int(rnd * 5) + 1		
					next
				loop
 		
				plv5(1) = nivel1(sorteio_op1)
				
		elseif plv(1) = plv5(1) Then
 		
				do while plv5(1) = nivel1(sorteio_op1)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op1=int(rnd * 5) + 1		
					next
				loop	
        end if

	    call falar

    elseif acerto > 2 AND acerto < 6 Then

		nivel2(1) = "HIGIENE"
	    nivel2(2) = "FILOSOFAR"
	    nivel2(3) = "MÍOPE"
	    nivel2(4) = "FÓSFORO"
	    nivel2(5) = "CHUCHU"

        for n=1 to 5 step 1
			    randomize(second(time))
			    sorteio_op2=int(rnd * 5) + 1		
		next

        if plv(2) = nivel2(sorteio_op2) Then
		
				do while plv(2) = nivel2(sorteio_op2)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op2=int(rnd * 5) + 1		
					next
				loop

				plv2(2) = nivel2(sorteio_op2)
				
		elseif plv(2) = plv2(2) Then
 		
				do while plv2(2) = nivel2(sorteio_op2)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op2=int(rnd * 5) + 1		
					next
				loop
				
				plv3(2) = nivel2(sorteio_op2)
				
		elseif plv(2) = plv3(2) Then
				
				do while plv3(2) = nivel2(sorteio_op2)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op2=int(rnd * 5) + 1		
					next
				loop
				plv4(2) = nivel2(sorteio_op2)		
				
		elseif plv(2) = plv4(2) Then
 		
				do while plv4(2) = nivel2(sorteio_op2)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op2=int(rnd * 5) + 1		
					next
				loop
				plv5(2) = nivel2(sorteio_op2)
				
		elseif plv(2) = plv5(2) Then
 		
				do while plv5(2) = nivel2(sorteio_op2)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op2=int(rnd * 5) + 1		
					next
				loop
        end if
        
	    call falar

    elseif acerto > 5 AND acerto < 9 Then

        nivel3(1) = "XÍCARA"
        nivel3(2) = "ÂMBAR"
        nivel3(3) = "ACADÊMICO"
        nivel3(4) = "DILIGÊNCIA"
        nivel3(5) = "PROPÓSITO"

        for n=1 to 5 step 1
			    randomize(second(time))
			    sorteio_op3=int(rnd * 5) + 1		
		next

        if plv(3) = nivel3(sorteio_op3) Then

                do while plv(3) = nivel3(sorteio_op3)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op3=int(rnd * 5) + 1		
					next
				loop
				plv2(3) = nivel3(sorteio_op3)
				
		elseif plv(3) = plv2(3) Then
 		
				do while plv2(3) = nivel3(sorteio_op3)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op3=int(rnd * 5) + 1		
					next
				loop
				plv3(3) = nivel3(sorteio_op3)
				
		elseif plv(3) = plv3(3) Then
 		
				do while plv3(3) = nivel3(sorteio_op3)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op3=int(rnd * 5) + 1		
					next
				loop
				plv4(3) = nivel3(sorteio_op3)		
				
		elseif plv(3) = plv4(3) Then
 		
				do while plv4(3) = nivel3(sorteio_op3)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op3=int(rnd * 5) + 1		
					next
				loop
				plv5(3) = nivel3(sorteio_op3)
				
		elseif plv(3) = plv5(3) Then
 		
				do while plv5(3) = nivel3(sorteio_op3)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op3=int(rnd * 5) + 1		
					next
				loop	
        end if

	    call falar

    elseif acerto > 8 AND acerto < 12 Then

        nivel4(1) = "CONDOLÊNCIAS"
        nivel4(2) = "SUPÉRFLUO"
        nivel4(3) = "PARCIMÔNIA"
        nivel4(4) = "COMPLACÊNCIA"
        nivel4(5) = "ESDRÚXULO"

        for n=1 to 5 step 1
			    randomize(second(time))
			    sorteio_op4=int(rnd * 5) + 1		
		next

        if plv(4) = nivel4(sorteio_op4) Then

                do while plv(4) = nivel4(sorteio_op4)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op4=int(rnd * 5) + 1		
					next
				loop
				plv2(4) = nivel4(sorteio_op4)
				
		elseif plv(4) = plv2(4) Then
 		
				do while plv2(4) = nivel4(sorteio_op4)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op4=int(rnd * 5) + 1		
					next
				loop
				plv3(4) = nivel4(sorteio_op4)
				
		elseif plv(4) = plv3(4) Then
 		
				do while plv3(4) = nivel4(sorteio_op4)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op4=int(rnd * 5) + 1		
					next
				loop
				plv4(4) = nivel4(sorteio_op4)		
				
		elseif plv(4) = plv4(4) Then
 		
				do while plv4(4) = nivel4(sorteio_op4)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op4=int(rnd * 5) + 1		
					next
				loop
				plv5(4) = nivel4(sorteio_op4)
				
		elseif plv(4) = plv5(4) Then
 		
				do while plv5(4) = nivel4(sorteio_op4)
					for n=1 to 5 step 1
						randomize(second(time))
						sorteio_op4=int(rnd * 5) + 1		
					next
				loop	
        end if
    
	    call falar
    end if
end sub

sub falar()
  if acerto < 3 Then
    nivel=1
    audio.speak ("A palavra é " + nivel1(sorteio_op1))
    call texto
  elseif acerto > 2 AND acerto < 6 Then
    nivel=2
    audio.speak ("A palavra é " + nivel2(sorteio_op2))
    call texto
  elseif acerto > 5 AND acerto < 9 Then
    nivel=3
    audio.speak ("A palavra é " + nivel3(sorteio_op3))
    call texto
  elseif acerto > 8 AND acerto < 12 Then
    nivel=4
    audio.speak ("A palavra é " + nivel4(sorteio_op4))
    call texto
  end if

end sub

sub texto()
	res1 = 0
	res1=Ucase(inputbox("NÍVEL "& nivel &""+ vbNewLine + vbNewLine &_
    "DIGITE A PALAVRA OUVIDA"+ vbNewLine + vbNewLine &_
    "NOME DO JOGADOR: "& user & "" + vbNewLine + vbNewLine &_
    "================================" + vbNewLine &_
    "[O]UVIR NOVAMENTE A PALAVRA" + vbNewLine &_
    "[P]ULAR A PALAVRA UMA ÚNICA VEZ" + vbNewLine &_
    "================================"))
	if acerto < 3 Then
	    call carregar_fase1
  elseif acerto > 2 AND acerto < 6 Then
        call carregar_fase2
  elseif acerto > 5 AND acerto < 9 Then
        call carregar_fase3
  elseif acerto > 8 AND acerto < 12 Then
        call carregar_fase4
  end if      
end sub

sub carregar_fase1() 
	
    if res1 = "O" Then
      if chance > 0 Then
        chance = chance - 1
		call falar
      else 
		msgbox("VOCÊ JÁ OUVIU A PALAVRA DUAS VEZES!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
	  end if	
	  
    elseif res1 = "P" Then
      if pulo > 0 Then
		pulo = pulo - 1
        call sortear
	  else 
	    msgbox("VOCÊ JÁ PULOU A PALAVRA!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
      end if
	  
    elseif res1 = nivel1(sorteio_op1) Then
	
		acerto = acerto + 1
		
		plv(1) = nivel1(sorteio_op1)
	  
	    msgbox("PARABÉNS VOCÊ ACERTOU!" + vbNewLine &_
	    "QUANTIDADE DE ACERTOS: "& acerto & " DE 12"+ vbNewLine &_
	    "NÍVEL 1"),vbInformation+vbOKOnly,"ATENÇÃO"	 

	  call sortear	  
	elseif res1 <> nivel1(sorteio_op1) Then
	  call fim_de_jogo	  
    end if 
	
 call sortear
end sub

sub carregar_fase2() 

    if res1 = "O" Then	
      if chance > 0 Then
        chance = chance - 1
		call falar
      else 
		msgbox("VOCÊ JÁ OUVIU A PALAVRA DUAS VEZES!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
	  end if	
	  
    elseif res1 = "P" Then
      if pulo > 0 Then
		pulo = pulo - 1
        call sortear
	  else 
	    msgbox("VOCÊ JÁ PULOU A PALAVRA!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
      end if

    elseif res1 = nivel2(sorteio_op2) Then
	  acerto = acerto + 1	  
	  msgbox("PARABÉNS VOCÊ ACERTOU!"+ vbNewLine &_
	  "QUANTIDADE DE ACERTOS: "& acerto & " DE 12"+ vbNewLine &_
	  "NÍVEL 2"),vbInformation+vbOKOnly,"ATENÇÃO" 
	  
	  plv(2) = nivel2(sorteio_op2)

	  call sortear  
	elseif res1 <> nivel2(sorteio_op2) Then
	  call fim_de_jogo	  
    end if 

 call sortear
end sub

sub carregar_fase3() 

    if res1 = "O" Then	
      if chance > 0 Then
        chance = chance - 1
		call falar
      else 
		msgbox("VOCÊ JÁ OUVIU A PALAVRA DUAS VEZES!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
	  end if	
	  
    elseif res1 = "P" Then
      if pulo > 0 Then
		pulo = pulo - 1
        call sortear
	  else 
	    msgbox("VOCÊ JÁ PULOU A PALAVRA!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
      end if

    elseif res1 = nivel3(sorteio_op3) Then
	  acerto = acerto + 1	  
	  msgbox("PARABÉNS VOCÊ ACERTOU!"+ vbNewLine &_
	  "QUANTIDADE DE ACERTOS: "& acerto & " DE 12"+ vbNewLine &_
	  "NÍVEL 3"),vbInformation+vbOKOnly,"ATENÇÃO" 

      plv(3) = nivel3(sorteio_op3) 
	  call sortear  
	elseif res1 <> nivel3(sorteio_op3) Then
	  call fim_de_jogo	  
    end if 

 call sortear
end sub

sub carregar_fase4() 

    if res1 = "O" Then	
      if chance > 0 Then
        chance = chance - 1
		call falar
      else 
		msgbox("VOCÊ JÁ OUVIU A PALAVRA DUAS VEZES!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
	  end if	
	  
    elseif res1 = "P" Then
      if pulo > 0 Then
		pulo = pulo - 1
        call sortear
	  else 
	    msgbox("VOCÊ JÁ PULOU A PALAVRA!"),vbInformation+vbOKOnly,"ATENÇÃO"
		call texto
      end if

    elseif res1 = nivel4(sorteio_op4) Then
	  acerto = acerto + 1	  
	  msgbox("PARABÉNS VOCÊ ACERTOU!"+ vbNewLine &_
	  "QUANTIDADE DE ACERTOS: "& acerto & " DE 12"+ vbNewLine &_
	  "NÍVEL 4"),vbInformation+vbOKOnly,"ATENÇÃO" 

      plv(4) = nivel4(sorteio_op4)
	  call sortear  
	elseif res1 <> nivel4(sorteio_op4) Then
	  call fim_de_jogo	  
    end if 
	
 call venceu
end sub

sub venceu()
	audio.speak ("PARABÉNS, VOCÊ VENCEU O SOLETRANDO "& user & "")
    n=0
	n=(msgbox("VOCÊ VENCEU " & user & "!"+ vbNewLine &_
	"QUANTIDADE DE ACERTOS: "& acerto & " "+ vbNewLine &_
	"NÍVEL " & nivel & ""+ vbNewLine &_
	"DESEJA JOGAR NOVAMENTE? ",vbQuestion + vbYesNo,"FIM DE JOGO"))
	
	if n = vbYes then
		call carregar_audio
	else
		wscript.quit
	end if

end sub