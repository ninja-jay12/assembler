program laba2;
var A,B,C,D,Y:integer;
begin
writeln('enter A,B');
readln(A,B);
asm
MOV AX,2
MOV C,AX
MOV AX,11
mov D,AX
MOV AX,A
IMUL A
IMUL C
MOV Y,AX
MOV AX,D
IMUL A
ADD AX,Y
IDIV B
MOV Y,AX
end;
writeln('Y=',Y);
end.
