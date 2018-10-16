;program for finding the sum of n elements
.MODEL small
.STACK 100h
.DATA
    ARR db 25h,12h,15h,1Fh,2Bh
    sum db 0
  
.CODE
main proc
    mov ax, @data
    mov ds, ax
	
    mov cx,5
    mov ax,0
    mov bx, offset arr
	
    repeat:
    add al, [bx]
    inc bx
	dec cx
    jnz repeat
	
	mov sum,al
	mov dl,sum
    int 3  ;it is an interupt to see the hexadecimal value in register through debugging bcoz assembler cannot display hexadecimal value on screen
main endp
end main

;note here;
;for see the hexadecimal output of register follow the following procedure 
;step-1-masm lab3.asm
;step-2-link lab3.obj
;step-3-debug lab3.exe
;after pressing enter u will find a -(hypen).then type g and see registers content 
;after that u can see result