.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
x DWORD ?
y DWORD ?
z DWORD ?
d BYTE "enter number x,y,z",0
f BYTE "the result of  is ",0
s BYTE 40 DUP (?)
res BYTE 11 DUP(?),0
.CODE
MainProc PROC
input d,s,40
atod s
mov x,eax
input d,s,40
atod s
mov y,eax
input d,s,40
atod s
mov z,eax
mov eax,x
add eax,y
mov ebx,z
imul ebx,2
sub eax,ebx
add eax,1
neg eax
dtoa res,eax
output f,res
mov eax,0
ret
MainProc ENDP
END 