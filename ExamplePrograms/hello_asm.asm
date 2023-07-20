; a comment - hello_asm.asm
; To Assemble and Link 32-bit code in Linux with NASM:
;    nasm -f elf hello_asm.asm     (add -g for debug)
;    ld -m elf_i386 hello_asm.o -o hello_asm
; To Assemble and Link 64-bit code in Linux with NASM:
;     nasm -f elf64 hello_asm.asm  (add -g for debug)
;     ld  hello_asm.o -o hello_asm

section .data
        helloString db "Hello, world!+",10,0  ;String, LF, ASCIIZ
        len1 equ $ - helloString              ;length of string (15)

section .text
        global  _start              
_start:
                                ;Write String to Stdout w Syscall
        mov   edx,len1          ; load string length
        mov   ecx,helloString   ; load pointer to the string to write
        mov   ebx,1             ; load file handle (1 is stdout)
        mov   eax,4             ; load system call number (sys_write)
        int   0x80              ; invoke Interrupt to call OS

                                ;Exit Program
        mov    ebx,0            ; load exit code (0 = normal completion)
        mov    eax,1            ; load system call number (sys_exit)
        int    0x80             ; invoke Interupt to call OS
        
; note 32-bit hello_asm excutable is 9076 bytes 64-bit is 9424 bytes

