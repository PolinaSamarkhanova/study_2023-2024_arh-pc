%include 'in_out.asm' 
section .data 
msg2 db "Наименьшее число:",0h 
A dd '24' 
B dd '98' 
C dd '15'
section .bss 
min resb 10 
section .text
global _start 
_start: 
mov eax,C 
call atoi ; Вызов подпрограммы перевода символа в число 
mov [C],eax ; запись преобразованного числа в 'C' 
; ---------- Записываем 'A' в переменную 'min' 
mov ecx,[A] ; 'ecx = A' 
mov [min],ecx ; 'max = A' 
; ---------- Сравниваем 'A' и 'B' (как символы) 
cmp ecx,[B] ; Сравниваем 'A' и 'B' 
jl check_C ; если 'A<B', то переход на метку 'check_C', 
mov ecx,[B] ; иначе 'ecx = B' 
mov [min],ecx ; 'min = B' 
; ---------- Преобразование 'max(A,C)' из символа в число 
check_C: 
mov eax,min 
call atoi ; Вызов подпрограммы перевода символа в число 
mov [min],eax ; запись преобразованного числа в min 
; ---------- Сравниваем 'min(A,B)' и 'C' (как числа) 
mov ecx,[min] 
cmp ecx,[C] ; Сравниваем 'min(A,B)' и 'C' 
jl fin ; если 'min(A,B)<C', то переход на 'fin', 
mov ecx,[C] ; иначе 'ecx = C' 
mov [min],ecx 
; ---------- Вывод результата 
fin: 
mov eax, msg2 
call sprint ; Вывод сообщения 'Наименьшее число: ' 
mov eax,[min] 
call iprintLF ; Вывод 'min(A,B,C)' 
call quit ; Выход

