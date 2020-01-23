.text
mov r0, #10
ldr r1, =a
mov r3, #0
loop:
        cmp r0, #0
        beq end        
        ldrb r2, [r1], #1
        sub r0, r0, #1
        add r3, r3, r2
        b loop
end:

.data
a:.byte 1, 2, 12, 36, 12, 6, 8, 0, 62, 69
