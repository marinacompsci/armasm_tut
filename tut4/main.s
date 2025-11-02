//  ALU flag Z: 1(True) if result of last operation call ending with an 'S' was
//  zero. 0(False) otherwise.
//  b.eq branches(jumps) if Z is set(true).

.global _start

_start:
    mov x0, #3
    mov x1, #1
    subs x3, x0, x1     // 3 - 1 = 2 -> Z Flag = 0 (2 != 0)
    b.eq print
    b exit

print:
    mov x0, #0
    ldr x1, =output
    mov x2, 28
    mov x8, #64
    svc #0
    b exit

exit: 
    mov x0, #0          // exit
    mov x8, #93
    svc #0


.data
output: .ascii "Subtraction result equals 0\n"
