;=========================================================================
; Name & Email must be EXACTLY as in Gradescope roster!
; Name: 
; Email: 
; 
; Assignment name: Assignment 4
; Lab section: 
; TA: 
; 
; I hereby certify that I have not received assistance on this assignment,
; or used code, from ANY outside source other than the instruction team
; (apart from what was provided in the starter file).
;
;=================================================================================
;THE BINARY REPRESENTATION OF THE USER-ENTERED DECIMAL NUMBER MUST BE STORED IN R5
;=================================================================================

					.ORIG x3000		
;-------------
;Instructions
;-------------

; output intro prompt
						
; Set up flags, counters, accumulators as needed

; Get first character, test for '\n', '+', '-', digit/non-digit 	
					
					; is very first character = '\n'? if so, just quit (no message)!

					; is it = '+'? if so, ignore it, go get digits

					; is it = '-'? if so, set neg flag, go get digits
					
					; is it < '0'? if so, it is not a digit	- o/p error message, start over

					; is it > '9'? if so, it is not a digit	- o/p error message, start over
				
					; if none of the above, first character is first numeric digit - deal with it!
					
; Now get (remaining) digits (max 5) from user and build up number in accumulator

					; remember to end with a newline!
					
					HALT

;---------------	
; Program Data
;---------------

introPromptPtr		.FILL x3A00
errorMessagePtr		.FILL x3B00


;------------
; Remote data
;------------
					.ORIG x3A00			; intro prompt
					.STRINGZ	"Input a positive or negative decimal number (max 5 digits), followed by ENTER\n"
					
					
					.ORIG x3B00			; error message
					.STRINGZ	"ERROR: invalid input\n"

;---------------
; END of PROGRAM
;---------------
					.END

;-------------------
; PURPOSE of PROGRAM
;-------------------
; Convert a sequence of up to 5 user-entered ascii numeric digits into a 16-bit two's complement binary representation of the number.
; if the input sequence is less than 5 digits, it will be user-terminated with a newline (ENTER).
; Otherwise, the program will emit its own newline after 5 input digits.
; The program must also output a final newline.
; Input validation is performed on the individual characters as they are input, but not on the magnitude of the number.
