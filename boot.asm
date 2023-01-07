global start    ; 暴露内核入口

section .text
bits 32         ; 保护模式32位
start:
    ; 打印OK
    mov dword [0xb8000], 0x2f4b2f4f
    hlt