CODE	SEGMENT
		ASSUME	CS:CODE
MAIN	PROC	FAR
START:	PUSH	DS
		SUB		AX,AX
		PUSH	AX
		
GET_KEY:MOV		AH,01H
		INT		21H
		CMP		AL,'Y'
		JE		YES
		CMP		AL,'N'
		JZ		NO
		JMP		GET_KEY

YES:	MOV		DL,'1'
		MOV		AH,02H
		INT		21H
		JMP		QUIT

NO:		MOV		DL,'0'
		MOV		AH,02H
		INT		21H

QUIT:	RET
MAIN	ENDP

CODE	ENDS
		END MAIN
