.text
mov r0, #5
ldr r1, =a
ldr r2, =b
mov r6, #0
loop:
        cmp r0, #0
        beq end
        ldr r3, [r1], #4
        ldr r4, [r2], #4
        mul r5, r3, r4
        add r6, r6, r5
        sub r0, r0, #1
        b loop
end:

.data
a: .word 1, 69, 32, 0, 6
b: .word 5, 1, 2, 99, 5
