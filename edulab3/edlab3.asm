//
//  edlab3.s
//  edulab3
//
//  Created by Eduardo Corona on 2/8/23.
//
.section __TEXT,__text,regular,pure_instructions
.globl _main
_main:
    mov w0, #4           ; Move 4 into register w0
    add w0, w0, #6       ; Add 6 to the value in w0, result is 10 in w0
    mov w1, #2           ; Move 2 into register w1
    add w1, w1, #3       ; Add 3 to the value in w1, result is 5 in w1
    sub w0, w0, w1       ; Subtract w1 from w0, result is 5 in w0
    ret
