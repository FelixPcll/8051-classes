org 0h

org 30h


mov A, #00010001b

J1: mov P0, A
acall DELAY
rl A
sjmp J1


DELAY: mov R0, #FFh
LOOP: djnz R0, LOOP
ret
