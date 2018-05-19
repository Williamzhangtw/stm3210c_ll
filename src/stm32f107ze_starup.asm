

		PRESERVE8
		THUMB
			
; Vector table Mapped to address 0 at Reset
		AREA	RESET, DATA, READONLY
		EXPORT __Vectors
			
__Vectors		DCD 	0x20001000			; Initial MSP
				DCD		Reset_Handler		; The first Address loaded to PC
					
					
		AREA	|.text|, CODE, READONLY		; Code section
			
; Reset handler
Reset_Handler  	PROC						; Function begin
				EXPORT	Reset_Handler
start
		MOV  	R0, #0x10
		MOV		R1, #0x18
		ADDS	R0,R0,R1
loop	B		loop
				ENDP						; Function end
				
				END			; Assembly program end
					