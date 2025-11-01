.global _start



_start:
    mov x0, #1              // arg0: fd - stdout(0x01)
    ldr x1, =msg            // arg1: *buf - msg
    mov x2, #14             // arg2: strlen
    mov x8, #64             // syscall: write
    svc #0


    mov x0, #0              // arg0: int - 0(success)
    mov x8, #93             // syscall: exit
    svc #0

.data
    msg: .ascii "hakuna matata\n"
