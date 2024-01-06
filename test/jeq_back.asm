# @file : jeq_back.asm
# @brief : test jeq when the jump is backwards
loop:
  ldi r1, 1
  ldi r2, 1
  jeq r1, r2, loop
end: 
  jmp end 
