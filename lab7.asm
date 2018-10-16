;program to input string from user reverse it
.model small
.stack 100h
.data 
var1 db 100 dup("$") 
msg db 'Enter the string$'
.code 
inputString proc 
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
mov cl, bl
print:
dec si
mov dx,[si]
mov ah,2
int 21h 
loop print
mov ah,4ch 
int 21h 
inputString endp 
end inputString