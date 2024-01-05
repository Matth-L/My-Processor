# @file : until_enter.asm
# @brief : output the input until the enter key is pressed
start: 
  ldi r1, 13 # enter key is in r1
  jmp loop # main loop
loop: 
  in r0
  out r0
  jeq r0, r1, end
  jmp loop
end: 
  jmp end
