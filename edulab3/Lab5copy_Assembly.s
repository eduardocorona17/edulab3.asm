//
//  Lab5copy_Assembly.s
//  edulab3
//
//  Created by Eduardo Corona on 3/6/23.
//
// Define the program entry point
.global _main

// Define the data section
.section __DATA, DATA
num1:   .quad   1234                // Initialize num1 to 1234
num2:   .quad   5678                // Initialize num2 to 5678

// Define the code section
.section __TEXT, TEXT, cstring_literals
_main:
    // Move the value of num1 into X0
    adrp    x0, num1@PAGE
    ldr     x0, [x0, num1@PAGEOFF]

    // Push the value of X0 onto the stack
    sub     sp, sp, #8
    str     x0, [sp]

    // Move the value of num2 into X1
    adrp    x1, num2@PAGE
    ldr     x1, [x1, num2@PAGEOFF]

    // Push the value of X1 onto the stack
    sub     sp, sp, #8
    str     x1, [sp]

    // Pop the value of the top of the stack into X0
    ldr     x0, [sp]
    add     sp, sp, #8

    // Pop the value of the top of the stack into X1
    ldr     x1, [sp]
    add     sp, sp, #8

    // Move the value of X0 back into num2
    adrp    x2, num2@PAGE
    str     x0, [x2, num2@PAGEOFF]

    // Move the value of X1 back into num1
    adrp    x3, num1@PAGE
    str     x1, [x3, num1@PAGEOFF]

    // Exit the program
    mov     x0, #0
    mov     x16, #1
    svc     #0
