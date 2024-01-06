# @file : io.asm
# @brief : input 2 char in 2 different registry then output
start:
  nop
  in r0
  in r1
  out r0
  out r1
  jmp end

end: jmp end
