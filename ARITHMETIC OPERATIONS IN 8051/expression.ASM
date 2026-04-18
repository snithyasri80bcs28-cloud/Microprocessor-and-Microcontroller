;EXPRESSION PROGRAM: A^2 + B^2 - c^2
  .ORG 8000H
START:
        MOV DPTR,#9000H
        MOVX A,@DPTR
        MOV B,A
        MUL AB
        MOV R1,A
                INC DPTR
        MOVX A,@DPTR
        MOV B,A
        MUL AB
        ADD A,R1
        MOV R1,A
                INC DPTR
        MOVX A,@DPTR
        MOV B,A
        MUL AB
        MOV R2,A
                MOV A,R1
        CLR C
        SUBB A,R2
                INC DPTR
        MOVX @DPTR,A
END
