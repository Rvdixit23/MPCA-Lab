.data
a: .word 10, 69, 43, 02

.text
ldr r0, =a
mov r1, #4
mov r2, #0
loop:
        ldr r3, [r0], #4
        add r2, r2, r3
        subs r1, r1, #1
        bne loop
swi 0x11
