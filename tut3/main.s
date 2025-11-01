// Read from stdout and write read input


.global _start


_start:
    mov x0, #0              // writing to buffer
    ldr x1, =input
    mov x2, 20
    mov x8, 63
    svc #0

    mov x0, #1              // reading from buffer
    ldr x1, =input_msg
    mov x2, 10
    mov x8, 64
    svc #0


    mov x0, #1              // reading from buffer
    ldr x1, =input
    mov x2, 20
    mov x8, 64
    svc #0


    mov x0, #0             // exit
    mov x8, #93
    svc #0


.data
    input_msg: .ascii "You said: \n"
    input: .asciz "%s"
