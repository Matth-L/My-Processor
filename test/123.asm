# @file 123.asm
# @brief read all char until Enter is pressed
# then it prints them in the reverse order, from recent to oldest
# @param n * char : char to read then print

start:
  ldi r0, 13 # Enter
  ldi r1, 0 # adress 
  ldi r4, 0 # jeq = 0 (16j)
  ldi r3, 255 # no value
  jmp fill_buffer

fill_buffer:
  in r2
  jeq r2, r3, fill_buffer # flush the buffer and only takes non null value
  jeq r2, r0, out # if r2 = Enter => print 
  st r2, r1 # MEM [adress] = r2
  addi r1, r1 , 1 # ----> 
  jmp out 

out:
  subi r1 ,r1 ,1 # <-----
  ld r2 ,r1 
  out r2
  jeq r1 ,r4 ,end
  jmp print

end:
  jmp end

