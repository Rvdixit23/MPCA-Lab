.data
a: .word 23, 34, 45, 69
b: .word 00, 00, 00, 00

.text
ldr r0, =a
ldr r1, =b
;counter here
mov r2, #4
loop:
        sub r2, r2, #1
        ldr r3, [r0], #4
        str r3, [r1], #4
        cmp r2, #0
        bne loop
swi 0x11
