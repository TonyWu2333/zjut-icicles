		ORG 	0000H
		AJMP	START

START:
		MOV		DPTR,#TAB
LOOP1:
		CLR		A
		MOVC	A,@A+DPTR
		CJNE	A,#00H,SHOW
		AJMP	START
SHOW:	
		MOV 	P1,A
		ACALL	DELAY
		INC		DPTR
		AJMP	LOOP1
DELAY:	MOV		R5,#25
D1:		MOV		R6,#100
D2:		MOV		R7,#100
D3:		DJNZ	R7,D3
		DJNZ	R6,D2
		DJNZ	R5,D1
		RET
		
TAB:	DB		01H,02H,04H,08H,10H,20H,40H,80H,40H,20H,10H,08H,04H,02H,01H
		DB		00H
		END
