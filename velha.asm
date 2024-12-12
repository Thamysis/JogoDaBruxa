; O JOGO DA BRUXA
; Thamyres Santos Silva	n° 11819240

jmp main

Tabuleiro: string "_________"
Mensagem: string "Use os numeros pra movimentar o cursor  ( 1 a 9) e o ENTER para executar as     jogadas."
Mensagem1  : string "------------  JOGO DA BRUXA  -----------"

gameOverScreen00 : string "                                        "
gameOverScreen01 : string "                                        "
gameOverScreen02 : string "      ooo   v       v  e e e    r r r   "
gameOverScreen03 : string "     o   o   v     v   e        r   r   "
gameOverScreen04 : string "    o     o   v   v    e e e    r       "
gameOverScreen05 : string "     o   o     v v     e        r       "
gameOverScreen06 : string "      ooo       v      e e e    r       "
gameOverScreen07 : string "                                        "
gameOverScreen08 : string "                                        "
gameOverScreen09 : string "                                        "
gameOverScreen10 : string "                                        "
gameOverScreen11 : string "                                        "
gameOverScreen12 : string "                                        "
gameOverScreen13 : string "         VOCE GANHOU!!!!!!!!!!!!!       "
gameOverScreen14 : string "                                        "
gameOverScreen15 : string "                   -                    "
gameOverScreen16 : string "                  ---                   "
gameOverScreen17 : string "                 -----                  "
gameOverScreen18 : string "                -------                 "
gameOverScreen19 : string "                 |O O|                  "
gameOverScreen20 : string "             | | | U | | |              "
gameOverScreen21 : string "             | |__| |__| |              "
gameOverScreen22 : string "              |         |               "
gameOverScreen23 : string "               |       |                "
gameOverScreen24 : string "               |       |                "
gameOverScreen25 : string "               |  ___  |                "
gameOverScreen26 : string "               | |   | |                "
gameOverScreen27 : string "              | |     | |               "
gameOverScreen28 : string "             | |       | |              "
gameOverScreen29 : string "                                        "

gameOverScreen30 : string "                                        "
gameOverScreen31 : string "                                        "
gameOverScreen32 : string "      ooo   v       v  e e e    r r r   "
gameOverScreen33 : string "     o   o   v     v   e        r   r   "
gameOverScreen34 : string "    o     o   v   v    e e e    r       "
gameOverScreen35 : string "     o   o     v v     e        r       "
gameOverScreen36 : string "      ooo       v      e e e    r       "
gameOverScreen37 : string "                                        "
gameOverScreen38 : string "                                        "
gameOverScreen39 : string "                                        "
gameOverScreen40 : string "                                        "
gameOverScreen41 : string "                                        "
gameOverScreen42 : string "                                        "
gameOverScreen43 : string "         VOCE PERDEU!!!!!!!!!!!!!       "
gameOverScreen44 : string "                                        "
gameOverScreen45 : string "                   -                    "
gameOverScreen46 : string "                  ---                   "
gameOverScreen47 : string "                 -----                  "
gameOverScreen48 : string "                -------                 "
gameOverScreen49 : string "                 |X X|                  "
gameOverScreen50 : string "             | | | O | | |              "
gameOverScreen51 : string "             | |__| |__| |              "
gameOverScreen52 : string "              |         |               "
gameOverScreen53 : string "               |       |                "
gameOverScreen54 : string "               |       |                "
gameOverScreen55 : string "               |  ___  |                "
gameOverScreen56 : string "               | |   | |                "
gameOverScreen57 : string "              | |     | |               "
gameOverScreen58 : string "             | |       | |              "
gameOverScreen59 : string "                                        "

Cursor: var #1
Slot: var #1
Vez: var #1;1 é vez do pc, 0 é do usuario
Pontuacao: var #0
rnd: var #1

Iguais:
	push r0
	push r1
	push r2
	loadn r3, #Tabuleiro
	add r0, r0, r3
	add r1, r1, r3
	add r2, r2, r3
	loadi r0, r0
	loadi r1, r1
	loadi r2, r2
	
	cmp r0, r1
	jne NaoIguais
	cmp r0, r2
	jne NaoIguais	
	
	loadn r3, #'_'
	cmp r3, r0
	jeq NaoIguais;São iguais, mas não conta....
	
	loadn r3, #1
	jmp IguaisFim
	
	NaoIguais:
	loadn r3, #0
	
	IguaisFim:
	pop r2
	pop r1
	pop r0
rts

AlguemGanhou:
	push r0
	push r1
	push r2
	push r3
	push r4
	
	loadn r4, #1
	loadn r0, #0
	loadn r1, #1
	loadn r2, #2
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	loadn r0,#3
	loadn r1,#4
	loadn r2,#5
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	loadn r0,#6
	loadn r1,#7
	loadn r2,#8
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	loadn r0,#0
	loadn r1,#3
	loadn r2,#6
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	loadn r0,#1
	loadn r1,#4
	loadn r2,#7
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	loadn r0,#2
	loadn r1,#5
	loadn r2,#8
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	loadn r0,#0
	loadn r1,#4
	loadn r2,#8
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou

	loadn r0,#2
	loadn r1,#4
	loadn r2,#6
	
	call Iguais
	
	cmp r4, r3
	jeq SimAlguemGanhou
	
	jmp NinguemGanhou
	
	SimAlguemGanhou:
	call ColoreLinha
	call ProximoSlot
	call reinicia
	
	NinguemGanhou:
	call DeuVelha
	
	pop r4
	pop r3
	pop r2
	pop r3
	pop r0
rts

DeuVelha:
	push r0
	
	loadn r0, #9
	
	cmp r0, r6
	jne NaoDeuVelha
	
	call PrintSemCursor
	call ProximoSlot
	call reinicia	
	
	NaoDeuVelha:

	pop r0
rts

ProximoSlot:
	push r0
	push r1
	push r2
	push r3
	
	load r0, Slot;Slot++;
	inc r0
	loadn r2, #70
	mod r0, r0, r2

	store Slot, r0
	
	loadn r2, #10
	
	mod r1, r0, r2
	loadn r2, #7
	mul r1, r1, r2
	
	loadn r3, #160
	add r1, r1, r3
	
	mov r5, r1
	
	
	loadn r2, #10
	div r1, r0, r2
	
	loadn r2, #160
	mul r1, r1, r2

	add r5, r5, r1
	
	pop r3
	pop r2
	pop r1
	pop r0
rts

ColoreLinha:;Colore a linha que ganhou 
	
	push r4
	push r3
	push r2
	push r1
	push r0
	push r7
	
	load r4, Vez
	loadn r3, #0
	
	cmp r4, r3
	jne CorAdversario
	
	loadn r7, #2304
	
	
	
	jmp SaiCor
	CorAdversario:
	loadn r7, #512
	call AumentaPontuacao
	
	SaiCor:
	loadn r3, #Tabuleiro
	add r3, r3, r0
	loadi r4, r3
	add r4, r4, r7
	storei r3, r4
	loadn r3, #Tabuleiro
	add r3, r3, r1
	loadi r4, r3
	add r4, r4, r7
	storei r3, r4
	loadn r3, #Tabuleiro
	add r3, r3, r2
	loadi r4, r3
	add r4, r4, r7
	storei r3, r4
	
	call PrintSemCursor
	
		
	pop r7
	pop r0
	pop r1
	pop r2
	pop r3
	pop r4
rts

PrintSemCursor:
	push r0
	push r1
	push r2
	
	load r0, Cursor
	loadn r1, #10
	store Cursor, r1
	
	mov r2, r5
	call print
	
	store Cursor, r0
	pop r2
	pop r1
	pop r0
rts

MudaVez:
	push r0
	push r1
	load r0, Vez
	loadn r1, #0
	cmp r0, r1
	jne MudaVezFim
	loadn r1, #1
	MudaVezFim :
	store Vez, r1
	pop r1
	pop r0
rts

AumentaPontuacao:
	push r0
	
	load r0, Pontuacao
	inc r0
	store Pontuacao, r0
	
	pop r0
rts

PCJoga:
	push r0
	push r1
	push r2
	push r3
	
	loadn r2, #'_'
	loadn r0, #Tabuleiro
	PCJogaLoop :
	call RND
	add r1, r0, r7; r1 = Tabuleiro[rnd];
	loadi r3, r1
	cmp r2, r3; while(Tabuleiro[rnd] != '_');
	jne PCJogaLoop;
	;Finalmente encontrou um lugar vazio
	loadn r3, #'O'
	storei r1, r3
	inc r6
	call MudaVez
	
	pop r3
	pop r2
	pop r1
	pop r0
rts

Joga:;Ver de quem é a vez antes de jogar
	push r0
	push r1
	push r2
	;Se for vez do pc, pc joga
	load r0, Vez;r0 tem o valor de Vez
	loadn r1, #0
	cmp r0, r1;se for igual pc não joga pois é a vez do user
	jeq PCNaoJoga
	call PCJoga
	call AlguemGanhou
	jmp JogaFim
	
	PCNaoJoga :
	loadn r1, #Tabuleiro
	load r0, Cursor
	add r1, r1, r0
	
	loadi r0 , r1;Ver se a casa está vazia:
	loadn r2, #'_'
	cmp r2, r0
	jne JogaFim;Se não for vazia, termina
	loadn r0, #'X'
	storei r1, r0
	inc r6
	call MudaVez
	call AlguemGanhou
	;call PCJoga
	
	JogaFim :
	pop r2
	pop r1
	pop r0
rts

LeTeclado:
	push r0
	push r1
	
	inchar r0
	
	loadn r1, #13;Testa se enter
	cmp r0, r1
	jne LeTecladoNaoEnter
	;Se for enter:
	call Joga
	jmp LeTecladoFim
	
	LeTecladoNaoEnter :
	loadn r1, #49
	sub r0, r0, r1
	loadn r1, #9
	cmp r0, r1
	jgr LeTecladoFim
	store Cursor, r0
	
	LeTecladoFim :
	pop r1
	pop r0
rts

print:
	push r0               ; Salva o contador
	push r1               ; Salva o ponteiro do tabuleiro
	push r2               ; Salva o ponteiro da tela
	push r3               ; Salva um registrador auxiliar
	push r4               ; Salva outro registrador auxiliar
	
	loadn r0, #0          ; Inicializa o contador (posição no tabuleiro)
	loadn r1, #Tabuleiro  ; Ponteiro para o início do tabuleiro

printloop:
	loadi r3, r1          ; Carrega o caractere atual do tabuleiro em r3
	load r4, Cursor       ; Carrega a posição do cursor
	cmp r4, r0            ; Verifica se o cursor está na posição atual
	jne printsemcursor    ; Se não está, pula para printsemcursor
	; Se estiver, muda a cor
	loadn r4, #1280       ; Ajusta a cor
	add r3, r3, r4        ; Aplica a cor ao caractere atual
	
printsemcursor:
	outchar r3, r2        ; Imprime o caractere atual na tela
	inc r2                ; Avança o ponteiro da tela
	inc r1                ; Avança o ponteiro do tabuleiro
	inc r0                ; Incrementa o contador

	; Adiciona uma barra vertical, exceto no final da linha
	loadn r3, #3          ; Número de colunas no tabuleiro
	mod r3, r0, r3        ; Calcula a posição relativa na linha
	loadn r4, #0
	cmp r4, r3            ; Verifica se é o final da linha
	jeq printnewline      ; Se for, pula para adicionar uma nova linha
	; Caso contrário, imprime a barra vertical
	loadn r3, #'|'
	outchar r3, r2        ; Imprime "|"
	inc r2                ; Avança o ponteiro da tela
	jmp printnaoenter     ; Continua o loop

printnewline:
	; Adiciona uma nova linha e espaçamento
	loadn r3, #35         ; Código para saltar para a próxima linha
	add r2, r2, r3        ; Ajusta o ponteiro da tela para a nova linha
	
printnaoenter:
	loadn r3, #9          ; Número total de elementos no tabuleiro
	cmp r0, r3            ; Verifica se todos os elementos foram processados
	jle printloop         ; Continua o loop enquanto houver elementos

	; Restaura os valores salvos na pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
rts                   

RND:
	push r0
	inc r7
	loadn r0, #9
	mod r7, r7, r0
	pop r0
rts

reinicia:
	push r0;tabuleiro
	push r1;contador
	push r2
	push r3;aux
	loadn r6, #0
	loadn r0, #Tabuleiro
	loadn r1, #0
	
	reinicialoop :
	add r2, r0, r1
	loadn r3, #'_'
	storei r2, r3
	inc r1
	loadn r3, #9
	cmp r1, r3
	jne reinicialoop
	
	pop r3
	pop r2
	pop r1
	pop r0
rts

ImprimeMensagem:
	push r0
	push r1
	push r2
	push r3
	loadn r0, #Mensagem
	loadn r1, #1080
	loadi r2, r0
	LoopImprimeMsg :
	outchar r2, r1
	inc r1
	inc r0
	loadi r2, r0
	loadn r3, #'\0'
	cmp r2, r3
	jne LoopImprimeMsg
	
	pop r3
	pop r2
	pop r1
	pop r0
rts

ImprimeMensagem1:
	push r0
	push r1
	push r2
	push r3
	loadn r0, #Mensagem1
	loadn r1, #0
	loadi r2, r0
	LoopImprimeMsg1 :
	outchar r2, r1
	inc r1
	inc r0
	loadi r2, r0
	loadn r3, #'\0'
	cmp r2, r3
	jne LoopImprimeMsg1
	
	pop r3
	pop r2
	pop r1
	pop r0
rts


overScreenstr: 
   push r0  ; protege o r0 na pilha para preservar seu valor
   push r1  ; protege o r1 na pilha para preservar seu valor
   push r2  ; protege o r1 na pilha para preservar seu valor
   push r3  ; protege o r3 na pilha para ser usado na subrotina
   push r4  ; protege o r4 na pilha para ser usado na subrotina
   
   loadn r3, #'\0'   ; Criterio de parada

   overScreenstr_Loop:  
      loadi r4, r1
      cmp r4, r3     ; If (Char == \0)  vai Embora
      jeq overScreenstr_Sai
      add r4, r2, r4 ; Soma a Cor
      outchar r4, r0 ; Imprime o caractere na tela
      inc r0         ; Incrementa a posicao na tela
      inc r1         ; Incrementa o ponteiro da String
      jmp overScreenstr_Loop
   
   overScreenstr_Sai:   
   pop r4   ; Resgata os valores dos registradores utilizados na Subrotina da Pilha
   pop r3
   pop r2
   pop r1
   pop r0
rts

gameOverGanhou:
   push r0 
   push r1 ;protege valores definidos no inicio
   push r2
   push r3
   push r4
   push r5
   push r6
   push r7

   loadn r1, #gameOverScreen00 ; Carrega r1 com o endereco do vetor que contem a mensagem
   loadn r2, #512    ; Seleciona a COR da Mensagem
   loadn r0, #0
   loadn r3, #40
   loadn r4, #41
   loadn r5, #1200
   
   overScreen_Loop:
      call overScreenstr
      add r0, r0, r3
      add r1, r1, r4
      cmp r0, r5
      jne overScreen_Loop
               
   pop r7
   pop r6
   pop r5
   pop r4
   pop r3
   pop r2
   pop r1
   pop r0
   
halt

gameOverPerdeu:
   push r0 
   push r1 ;protege valores definidos no inicio
   push r2
   push r3
   push r4
   push r5
   push r6
   push r7

   loadn r1, #gameOverScreen30 ; Carrega r1 com o endereco do vetor que contem a mensagem
   loadn r2, #2304    ; Seleciona a COR da Mensagem
   loadn r0, #0
   loadn r3, #40
   loadn r4, #41
   loadn r5, #1200
   
   overScreen_Loop:
      call overScreenstr
      add r0, r0, r3
      add r1, r1, r4
      cmp r0, r5
      jne overScreen_Loop
               
   pop r7
   pop r6
   pop r5
   pop r4
   pop r3
   pop r2
   pop r1
   pop r0
   
halt

verifica_resultado:
	push r0
	
	load r0, Pontuacao
	cmp r0, r4
    jeg gameOverGanhou
    
    jmp gameOverPerdeu 
    
    pop r0
rts

main:
	push r1
	push r4
	
	loadn r0, #0
	;loadn r3, #0
	loadn r4, #3
	
	loadn r5, #160;Posição do tabuleiro na tela
	loadn r6, #0
	loadn r1, #195;Máximo de jogadas
	
	store Cursor, r0;inicializa o cursor em 0
	store Slot, r0;inicializa o slot em 0
	store Vez, r0; inicializa vez em 0
	store Pontuacao, r0
	call ImprimeMensagem1
	call ImprimeMensagem
	
	mainloop :
	call RND;Gerencia o número aleatorio
	call LeTeclado
	
	mov r2, r5
	call print
	
	cmp r5, r1
	jeq verifica_resultado
    
	jmp mainloop
	
	pop r4
	pop r1
halt
