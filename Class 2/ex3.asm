org 0h

org 30h


mov A, #00010001b; Motor pass variable

J3: jb P1.1, J3

CONTINUE: mov R2, #00000011b; 3 rolls indicator
J2: mov R1, #00011000b; One roll indicator

    J1: mov P0, A
        acall DELAY
        rl A
        djnz R1, J1
        djnz R2, J2

;mov P1, #00000001b
clr P1.0; Turn on a led to indicate the end of operation
sjmp J3

; 2050 passos
; 8*FF
DELAY: mov R3, #08h
    TIME: mov R0, #FFh
    LOOP: djnz R0, LOOP
    djnz R3, TiME
    ret
