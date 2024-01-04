start: 
  in r0 # int n
  in r1 # char c 
  ldi r3, 0 # i = 0 
  ldi r4, 0 # j=0
  jmp loop_i # on lance la boucle

input_enter:
  ldi r2, 13
  out r2
  ldi r4, 0 # reset j
  jmp loop_i

loop_j:
  addi r4, r4, 1 # j++
  out r1 #print c 
  jeq r4, r0, input_enter # on passe à entrée et on termine j 
  jmp loop_j

loop_i:
  addi r3, r3, 1 # i++
  jeq r3, r0, end # i = n ? 
  jmp loop_j
  
end: 
  jmp end
