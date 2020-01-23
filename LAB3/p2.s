.text
mov r0, #9
mov r1, #69
mov r4, #0
mov r7, #-1
ldr r2, =a

loop:
        ldr r3, [r2], #4
        cmp r0, #0
        beq end
        cmp r3, r1
        beq found
        add r4, r4, #1
        sub r0, r0, #1
        b loop

found:
        mov r7, r4  
end:
        swi 0x11          
.data
a: .word 10, 20, 30, 40, 50, 69, 70, 80, 90
