;demonstrating the addition and subtrction instruction for 8-bit
.MODEL SMALL
.STACK 100H
.data
a db 09h
b db 02h

.code
main proc
mov ax,@data
mov ds,ax
mov al,a
mov bl,b
add al,bl
mov cx,ax
mov ax,0
mov al,a
sub al,bl
int 3    ;it is an interupt to see the hexadecimal value in register through debugging bcoz assembler cannot display hexadecimal value on screen
main endp
end main

;note here;
;for see the hexadecimal output of register follow the following procedure 
;step-1-masm lab2_8.asm
;step-2-link lab2_8.obj
;step-3-debug lab2_8.exe
;after pressing enter u will find a -(hypen).then type g and see registers content 
;after that u can see result