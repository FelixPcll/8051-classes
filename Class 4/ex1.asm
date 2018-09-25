; P1.4 -> Parada (vermelho)
; P1.5 -> Produção (verde)
; P1.6 -> Teste (amarelo)

; P1.7 -> Botão 



org 0h
    ljmp START


org 03h; INT0 Interruption
    acall SOS
    reti


org 30h
    START: mov IE, #10000001b; Enable INT0

    setb P1.5

    acall BOTAO
    mov A, #00010001b

    J1: mov P0, A
    
    jb P1.6, YB
    jnb P1.6, NB
    YB: acall SDELAY
    sjmp C0
    NB: acall LDELAY
    
    C0: rl A
    sjmp J1




    LDELAY: mov R0, #FFh
        LOOP: djnz R0, LOOP
    ret




    SDELAY: mov R0, #7Fh
        LOOP: djnz R0, LOOP
    ret




    BOTAO: jb P1.3, BOTAO
    ret



    SOS: clr P1.5
        clr P1.6
        setb P1.4

        acall BOTAO
        clr P1.4


        jb P1.6, YB
        jnb P1.6, NB
        YB: setb P1.5
        sjmp C1
        NB: setb P1.6

        C1: ret