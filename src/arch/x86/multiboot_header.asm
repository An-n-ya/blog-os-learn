section .multiboot_header
header_start:
    dd 0xe85250d6                       ; 魔数
    dd 0                                ; protected mode i386
    dd header_end - header_start        ; 头部长度
    ; 校验和
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))
    
    ; end type
    dw 0    ; type 默认值
    dw 0    ; flags 默认值 忽略
    dd 8    ; size 默认值
header_end: