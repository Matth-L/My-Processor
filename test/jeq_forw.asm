loop:
  ldi r0, 42
  ldi r1, 42
  jeq r0, r1, end
  jmp loop
end: 
  jmp end
