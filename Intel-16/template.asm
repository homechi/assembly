CODE	SEGMENT
		ASSUME	CS:CODE
MAIN	PROC	FAR
START:	PUSH	DS
		SUB		AX,AX
		PUSH	AX
						; add codes here
		RET
MAIN	ENDP

CODE	ENDS
		END MAIN