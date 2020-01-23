.data
a: .word 10
b: .word 20
c: .word 00
.text
ldr r0, =a
ldr r1, =b
ldr r2, =c
ldr r3, [r0]
ldr r4, [r1]
add r5, r4, r3
str r5, [r2]
swi 0x11
