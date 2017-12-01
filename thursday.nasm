bits 32

global _fibonacci@4, _walk_list_map@8


section .text


_fibonacci@4:
;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;	This method takes a single parameter:
;	
;	Param 1: The fibonacci number to calculate (e.g., "5" would indicate
;	to calculate and return the 5th fibonacci number).
;
;	int __stdcall fibonacci(int n);	
;
; BEGIN STUDENT CODE
;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ecx, [esp + 4] ; stack pointer + 4 holds the int n value and placing it in ecx register (counter)
mov eax, 1 ; sotring the value of 1 in eax register for start of the fib sequence
mov edx, -1 ; store the value of -1 in edx register in order to add the eax register to = 0
inc ecx ; have the counter start at 1 instead of 0
.L1:
    cmp ecx, 0 ; compare the counter to 0 to start loop
    push eax ; store current value of eax register to prepare staorage for new value
    add eax, edx ; add the new value of eax with the current value of edx and store it in eax
    pop edx ; place original value of eax into the edx register
    dec ecx ; decrement the counter eventually getting to zero to ultimately end the loop
    jnz .L1 ; jump to the top of the loop while eax does not equal 0
ret 4 ; return the stack pointer to its original value
;;;;;;;;;;;;;;;;;;;;;;;;;;
; END STUDENT CODE
;;;;;;;;;;;;;;;;;;;;;;;;;;


struc Node
	.Next	resd  1
	.Data	resd  1
endstruc


_walk_list_map@8:
;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;	This method takes two parameters:
;
;	Param 1: A pointer to the beginning of a linked list of nodes (structure
;	definition above)
;
;	Param 2: A function pointer
;
;	Your task:
;	1.) Walk the list of nodes
;	2.) For each node, call the function pointer provided
;	as parameter 2, giving it as input the Data from the node.
;
;	void __stdcall walk_list_map(Node* n, void(*)(size_t));
;
; BEGIN STUDENT CODE
;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;
; END STUDENT CODE
;;;;;;;;;;;;;;;;;;;;;;;;;;