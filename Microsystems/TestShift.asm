INCLUDE	PCMAC.INC
				.MODEL SMALL
				.STACK 100h
				.CODE
				Extern	PutDec : NEAR
TestShift		PROC
				mov		ax, @data
				mov		ds, ax

				mov		ax, 00000h
				mov		dx, 00001h

				shr		dx, 1

				rcr		ax, 1
				
				call 	PutDec

				mov		ax, 04c00h
				int		21h
TestShift		ENDP
				END		TestShift
