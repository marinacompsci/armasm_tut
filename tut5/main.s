// Defining a custom symbol for the program's entry point
// requires telling the linker through the flag '-e'
// the name of the entry point(default _start)
// E.g.: ld -e _hakuna -o main main.o

.global _hakuna

_hakuna:
    mov x0, #1
    mov x8, #93
    svc #0
