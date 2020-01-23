mov r0, #69
mov r1, #23
mov r3, #1
mvn r4, r0
and r5, r0, r1
orr r6, r0, r1
eor r7, r0, r1
swi 0x11
