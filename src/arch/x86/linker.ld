ENTRY(start)    

SECTIONS {
    /* 移动到1M的位置 */
    . = 1M;
    
    .boot : {
        /* 把multiboot的header放进来 */
        *(.multiboot_header)
    }
    
    .text : {
        *(.text)
    }
}