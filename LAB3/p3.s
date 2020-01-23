.text
mov r0, #0
mov r1, #1
ldr r2, =mem
str r0, [r2], #4
str r1, [r2], #4
mov r3, #7
loop:
        cmp r3, #0
        beq end
        add r4, r0, r1
        str r4, [r2], #4
        mov r0, r1
        mov r1 ,r4
        sub r3, r3, #1
        b loop

end:
        swi 0x11
.data
mem: .word 00, 00, 00, 00, 00, 00, 00, 00, 00
