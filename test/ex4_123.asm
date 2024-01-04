# --- ex4_123.asm ---
# test      : in, jeq, add, st, ld
# result    : when we input for instance "wob" then press enter
#             the program outputs "bow" on screen
# get user input and prints it backward once 13 (Enter key)
    nop
    ldi r0, 13      # cst for stopping the read (jeq)
    ldi r1, -1      # cst for input reading (jeq)
    ldi r4, 0       # cst 0 (for jeq)
    ldi r3, 0       # index
input:
    in r2
# block until we get a char different than empty input (255 or -1)
    jeq r1, r2, input
# goto print sequence if user press [Enter] on keyboard
    jeq r0, r2, print
# stock input at MEM[index] and increment index
    mov (r3), r2
    addi r3, r3, 1
    jmp input
# print the stocked input (by decrementing one by one the index and outputting MEM[index])
print:
    subi r3, r3, 1
    mov r2, (r3)
    out r2
    jeq r3, r4, end
    jmp print
end:
    jmp end
