org 0h

org 30h


mov A, #00010001b; Motor pass variable
mov R2, #00000011b; 3 rolls indicator
J2: mov R1, #00011000b; One roll indicator

    J1: mov P0, A
        acall DELAY
        rl A
        djnz R1, J1
        djnz R2, J2

J3: sjmp J3


DELAY: mov R0, #FFh
    LOOP: djnz R0, LOOP
    ret
