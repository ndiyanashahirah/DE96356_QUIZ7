	#include<p18f4550.inc>

		org		0x00
		goto	start
		org		0x08
		retfie	
		org		0x18
		retfie
		

start		clrf	TRISD,A
			setf	TRISB,A
			clrf	PORTB,A
			setf	PORTD,A	
check0		BTFSS	PORTB,0,A
			call	led_off1
			bcf		PORTD,0,A
check1		BTFSS	PORTB,1,A
			call	led_off2
			bcf		PORTD,1,A
			bra		check0
			
led_off1	bsf		PORTD,0,A
			bra		check1
			
led_off2	bsf		PORTD,1,A
			bra		check0
			
			end
