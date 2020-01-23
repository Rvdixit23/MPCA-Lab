mov r0, #0
cmp r0, #0
moveq r1, #1
beq end
movmi r1, #3
bmi end
mov r1, #2
end:
swi 0x11
