// Run exit syscall


.global _start


_start:
    mov x0, #0      // move 0 into reg 0
    mov x8, #93     // move 93 into reg 8 --> syscall exit
    svc #0
