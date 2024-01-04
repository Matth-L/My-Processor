start: 
  ldi r1, 13 # on stock entrée dans le registre 0
  jmp loop # on passe à la boucle principale 
loop: 
  in r0
  out r0
  jeq r0, r1, end
  jmp loop
end: 
  jmp end
