.global _start

_start:
    mov x0, #1      // move 1 into reg 0
    mov x8, #93     // move 93 into reg 8 --> syscall exit
    svc #0
