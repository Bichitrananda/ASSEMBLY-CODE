;demonstrating the addition and subtrction instruction for 16-bit
.MODEL SMALL
.STACK 100H
.data
a dw 0609h
b dw 0408h
 
.code 
main proc
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b
add ax,bx
mov cx,ax
mov ax,0
mov ax,a
sub ax,bx
int 3
main endp
end main

;note here;
;for see the hexadecimal output of register follow the following procedure 
;step-1-masm lab2_16.asm
;step-2-link lab2_16.obj
;step-3-debug lab2_16.exe
;after pressing enter u will find a -(hypen).then type g and see registers content 
;after that u can see result