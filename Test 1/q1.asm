ORG     00h
ORG     30h

; Considerando os caracteres já armazenados de 30h à 36h

setb    P1.3    ; Desliga o LED

MOV R0,#30h ; Seta R0 como vetor, iniciando em 30h

BOTAO: jb P1.2, BOTAO   ; Espera set botão
BUSY:   jnb     P1.1, BUSY   ; Indica se o display está ocupado


ENVIO:  MOV     A, @R0  ; Joga o conteúdo da memória no acumulador
        MOV     P0, A   ; Joga do acumulador pra saída P.0
        SETB    P1.0    ; Struble, indica que um dado foi enviado
        CLR     P1.0    ; Setando alto e baixo para caracterizar um pulso
        INC     R0      ; incrementa R0 para mudar para a próxima memória
        CJNE    @R0,#03h,BUSY ;Checa se foi o último valor,comparando com #03h (ETX no ASCII) e retorna para checar se o busy está ativo 


        clr    P1.0; Liga o led do início

FIM:    SJMP   FIM; Loop infinito que prend o programa

        END