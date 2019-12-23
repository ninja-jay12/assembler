program laba3;
var A,B,C: integer;
begin
writeln('enter A,B,C');
readln(A,B,C);
asm
mov AX,A
mov BX,B
cmp AX,BX
jl @ac
jmp @bc
@ac:
mov BX,C
cmp AX,BX
jl @cib
jmp @bc
@bc:
mov AX,C
cmp BX,AX
jl @aic
jmp @aib
@cib:
mov AX,B
add AX,BX
mov A,AX
jmp @ext
@aic:
mov BX,A
add AX,BX
mov B,AX
jmp @ext
@aib:
mov AX,A
mov BX,B
add AX,BX
mov C,AX
jmp @ext
@ext:
end;
writeln ('A,B,C= ');
writeln (A);
writeln (B);
writeln (C);
end.
