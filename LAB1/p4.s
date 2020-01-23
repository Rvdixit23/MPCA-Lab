mov r0, #51
and r1, r0, #1
cmp r1, #1
beq eqal
  mov r2, #0
  b fin
eqal:
  mov r2, #255
fin:swi 0x11
