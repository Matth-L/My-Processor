start:
  ldi r0, 13 # enter 
  ldi r1, 255 # no value
  ldi r2, 97 # a
  ldi r3, 122 # z
  ldi r4, 32 # 97 : a ---> 65: A  ; gap = 32
  ldi r5, 0 # index
  ldi r6, 0 # count to check if index = count
  jmp loop_input
  # r7 = input

to_caps:
  sub r7, r7, r4  # changing to caps
  out r7 
  jmp loop_print

loop_input: 
  in r7
  jeq r7, r1, loop_input # if null value, loop
  jeq r7, r0, loop_print # if enter, print
  st r7, r5
  addi r5, r5, 1
  jmp loop_input

loop_print:
  jeq r6, r5, end
  ld r7, r6
  addi r6, r6, 1
  jle r7, r3, to_caps
  out r7
  jmp loop_print

end:
  jmp end 