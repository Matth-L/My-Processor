# @file : input_int.asm
# @brief : Read int from keyboard and print it to the screen 
start:
    ldi r0, 48 # 0
    ldi r1, 57 # 9
    ldi r2, 13 # enter
    ldi r3, 255 # no value
    jmp loop

loop:
    in r4
    jeq r4, r3, loop
    jeq r4, r2, to_print
    # is r4 between 0 and 9 ?
    jle r4, r0, loop # r4 < 0 ?
    # greater than 9 ? 
    
    
