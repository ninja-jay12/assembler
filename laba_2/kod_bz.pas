program laba2;
var A,B,C,D,Y: integer;
begin
writeln('enter A,B');
readln(A,B);
asm
mov AX,2
mov C,AX
mov AX,11
mov D,AX
mov AX,A
mul A
mul C
mov Y,AX
mov AX,D
mul A
add AX,Y
div B
mov Y,AX
end;
writeln('Y= ',Y);
end.
