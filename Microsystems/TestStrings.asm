INCLUDE	PCMAC.INC
				.MODEL	SMALL
				.STACK	100h
				.CODE
TestStrings		PROC

				mov		ax, @data
				mov		ds, ax

				mov		dl, 024h
				mov		dh, 069h

				mov 	ah, 9h
				int		21h

				mov		ax, 04c00h
				int		21h

TestStrings		ENDP
				END	TestStrings
