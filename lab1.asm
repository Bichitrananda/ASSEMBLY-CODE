;program for counting number of characters in a given string
.model small
.stack 100h
.data 
var1 db 100 dup("$") 
msg db 'Enter the string$'
.code 
main proc 
mov ax,@data 
mov ds,ax 

lea dx,msg
mov ah,09h
int 21h

mov bl, 0 ; counts the length of string
mov si,offset var1 
l1: mov ah,1 
int 21h  
cmp al,13 
je printString 
mov [si],al 
inc si 
inc bl
jmp l1 
printString: 
mov dl, bl
mov ah,2
add dl, 48
int 21h 

mov ah,4ch 
int 21h 
main endp 
end main