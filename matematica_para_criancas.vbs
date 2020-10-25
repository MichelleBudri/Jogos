dim n,n1,n2,simbolo(3),resp,conta,resposta,op_calc
dim resp_calc,sorteio_op,sort1,sort2,ponto,user
call inicio

sub inicio()
Do
 user=Ucase(inputbox("OLÁ, SEJA BEM-VINDO(A) AO JOGO MATEMÁTICO!"+ vbnewline &_
 "QUAL É O SEU NOME?"))
 if IsEmpty(user) then
 wscript.quit
 end if
 user = Trim(user)
Loop Until user > ""

call jogo

end sub

sub variavel()
resposta=0
call jogo
end sub

sub tchau()
resp=msgbox("VOCÊ DESEJA JOGAR NOVAMENTE "& user &" ?",vbquestion + vbyesno,"ATENÇÃO")
 if resp=vbyes then
 call variavel
 else
 wscript.quit
 end if	
end sub

sub jogo()

simbolo(1) = "+"
simbolo(2) = "-"
simbolo(3) = "x"

for n=1 to 3 step 1
	randomize(second(time))
	sorteio_op=int(rnd * 3) + 1
next

for n1=1 to 10 step 1
	randomize(second(time))
	sort1=int(rnd * 10) + 1
next

for n2=1 to 10 step 1
	randomize(second(time))
	sort2=int(rnd * 10) + 1
next

if sorteio_op = 1 then
conta = sort1 + sort2
elseif sorteio_op = 2 then
conta = sort1 - sort2
else 
conta = sort1 * sort2
end if

resp_calc=cdbl(inputbox(" ACERTE O CÁLCULO MATEMÁTICO " + vbnewline & _
 "============================" + vbnewline &_
 "PONTUAÇÃO DE "& user &": " & resposta & ""+ vbnewline &_
 "RESOLVA : "& sort1 &" "& simbolo(sorteio_op) &" "& sort2 &" = ???"))

if resp_calc = conta then
resposta = resposta+1
op_calc=(msgbox("EBA!!! VOCÊ ACERTOU!" + vbnewline &_
"QUANTIDADE DE ACERTOS: "& resposta & "", vbinformation + vbOKOnly,"AVISO"))
call jogo
else

if resposta = 0 then
msgbox("QUE PENA, VOCÊ NÃO ACERTOU NENHUM CÁLCULO, " & user &" =(")
call tchau
elseif resposta > 0 AND resposta <= 5 then
msgbox("NADA MAL " & user &", VOCÊ ACERTOU " & resposta & " CÁLCULOS =)")
call tchau
elseif resposta > 5 then
msgbox("PARABÉNS " & user &", VOCÊ É UM GÊNIO DA MATEMÁTICA, VOCÊ ACERTOU " & resposta & " CÁLCULOS =D")
call tchau
end if

end if

end sub