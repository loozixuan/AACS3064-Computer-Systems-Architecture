.MODEL MEDIUM 
.STACK 100 
.DATA
	;------------------------------------------------------LOGIN MODULE------------------------------------------------------------------------
	LOG_IN LABEL BYTE 
	MAXNUM DB 15
	ACTNUM DB ?
	USER_NAME DB 20 DUP("$")
	USER_PASSWORD DB 20 DUP(0)
	
	PROMPT_USERNAME DB 10,13,"Enter your userName :$"
	PROMPT_PASSWORD DB "Enter your password :$"
	
	;EXISTING PASSWORD AND USERNAME
	USERNAME DB "johnlow"
	PASSSWORD DB "clc12345"
	
	;ERROR WHEN NOT MATCHED
	INVALID_NAME DB 10,13,"***************************************",10,13,"Invalid UserName!!! Please Enter Again.",10,13,"***************************************$"
	INVALID_PASSWORD DB 10,13,"***************************************",10,13,"Invalid Password!!! Please Enter Again.",10,13,"***************************************$"
	VALID_LOGIN DB 10,13,"==================",10,13,"LOGIN SUCCESSFULLY",10,13,"==================$"
	
;------------------------------------------------------END LOGIN------------------------------------------------------------------------	
	MAIN_MENU   DB 10,10,"=========",13,10,"Main Menu",10,13,"=========$"
	OPTION1     DB 13,10,"1. Product ",13,10,"$"
   	OPTION2     DB "2. Purchase ",13,10,"$"
    OPTION3     DB "3. Sales Summary ",13,10,"$"
    OPTION4     DB "4. Exit ",13,10,"$"
 	QUE_OPTION  DB "Select Option : $"
    CHOICE      DB ?
    NEWLINE     DB 13,10,"$" 
	TEN			DB 10
	HUNDRED     DB 100
	THOUSAND    DW 1000
	TENTHOUSAND DW 10000
	
	INVALIDINPUT DB 13,10,"*************",10,13,"Invalid Input",10,13,"*************$" 
	
	;------------------------------------------------------PRODUCT VARIABLE------------------------------------------------------------------------
	PURCHASE_TITLE DB 13,10,13,10,"========================================================",10,13,"		    Purchase Module			  ",10,13,"========================================================$"
	QUE_PRODUCT DB 13,10,13,10,"Select the Product : $"
	OPT_PRODUCT DB ?
	ADD_MORE DB 13,10,"Add more product? (Y = Yes / N = No) : $"
	
	;TIITLE
	
	
	;PRODUCT LABEL
	PRODUCT1 DB 13,10,"1. PEANUT COOKIES    RM$"
	PRODUCT2 DB 13,10,"2. LOVE COOKIES      RM$"
	PRODUCT3 DB 13,10,"3. NUT COOKIES       RM$"
	PRODUCT4 DB 13,10,"4. CHOCOLATE COOKIES RM$"
	PRODUCT5 DB 13,10,"5. OREO COOKIES      RM$"
	DECIMAL  DB ".00        $"

	;PRICE
	PEANUT_COOKIES    DB 10
	LOVE_COOKIES      DB 20
	NUT_COOKIES       DB 22
	CHOCOLATE_COOKIES DB 22
	OREO_COOKIES      DB 32	
	
	;PRODUCT PURCHASED QUANTITY
	QUE_QTY DB 13,10,"Enter the quantity : $"

	PEANUT_COOKIES_QUANTITY 	DB 0
	LOVE_COOKIES_QUANTITY		DB 0
	NUT_COOKIES_QUANTITY		DB 0
	CHOCOLATE_COOKIES_QUANTITY	DB 0
	OREO_COOKIES_QUANTITY		DB 0
	
	;Bill		
	SUBTOTAL       DW ?
	SST_RATE       DB 6
	SUBTOTAL_LABEL DB 13,10,"Subtotal (RM): $"
	SST_LABEL      DB 13,10,"SST      (6%): $"
	SST_INTEGER    DW ?
	SST_DECIMAL    DW ?
	TOTAL_LABEL    DB 13,10,"Total        : $"
	TOTAL_INTEGER  DW ?
	TOTAL_DECIMAL  DW ?
	
	;BACKHOMEPAGE
	ANY_KEY2 DB 10,13,10,13,"PRESS ANY KEY TO BACK TO HOMEPAGE e.g(B)",10,13,"$"
	
	;--------------------------------------<PRODUCT MODULE>----------------------------------------------------------------------------------------------------
	TITILE_PROD DB 13,10,13,10,"========================================================",10,13,"		    Product Module			  ",10,13,"========================================================$"
	OPT_PROD1 DB 13,10,"1. Display Product",13,10,"$"
	OPT_PROD2 DB "2. Single Character Product Search::(Uppercase/Lowercase)",13,10,"$"
	OPT_PROD3 DB "3. String Product Search::(Uppercase/Lowercase)",13,10,"$"
	OPT_PROD4 DB "4. Back to Main Module",13,10,"$"
	
	CHOICE_PROD DB 10,13,"Enter a choice(1-4): $"
	ANS DB ?
	ANY_KEY DB 10,13,10,13,"PRESS ANY KEY TO BACK TO PRODUCT MODULE e.g(B)",10,13,"$"
	ANYKEY DB ?
	INVALID_MSG DB 10,13,10,13,"************************************************",10,13,"INVALID INPUT. Do you still wanna continue(Y/N)?",10,13,"************************************************",10,13,"$"
	
	;------PRODUCT MODULE HEADER
	PROD_HEADER DB 10,13,10,13,"------------------------------",10,13,"        PRODUCT LIST          ",10,13,"==============================",10,13,"NO. PRODUCT NAME    UNIT PRICE",10,13,"==============================$"
	PROD_HEADER2 DB 10,13,10,13,"==================================",10,13,"      Search Product Function     ",10,13,"==================================$"
	PROD_HEADER3 DB 10,13,"==============================",10,13,"  PRODUCT NAME      UNIT PRICE",10,13,"==============================$"
	
	;------SINGLE CHARACTER SEARCH DATA
	SING_SEARCH DB 10,13,"Enter a character to search product(e.g C): $"
	STR_INPUT DB ?
	SEARCH_RESULT DB 10,13,10,13,"        ---------------",10,13,"         Search Result        ",10,13,"        ---------------$"
	ERROR_FOUND DB 10,13,10,13,"*******************",10,13,"NO PRODUCT FOUND!!!",10,13,"*******************$"
	CONT_SEARCH DB 10,13,10,13,"Do you wanna continue search process?(Y/N) $"
	
	;STRING SEARCH PROCESS DATA
	STR LABEL BYTE 
	MAXN DB 20
	ACTN DB ?
	INPUT_SEARCH DB 20 DUP("$")
	SEARCH_ASK DB 10,13,"Enter String to search product(Uppercase/Lowercase): $"
	PROD_ENTER DB 10,13,"Product Name Entered: $"
	
	;PRODUCT STRING TO BE COMPARED(UPPERCASE)
	CMP_PROD1 DB "PEANUT COOKIES$"
	CMP_PROD2 DB "LOVE COOKIES$"
	CMP_PROD3 DB "NUT COOKIES$"
	CMP_PROD4 DB "CHOCOLATE COOKIES$"
	CMP_PROD5 DB "OREO COOKIES$"
	
	;PRODUCT STRING TO BE COMPARED(LOWERCASE)
	CMP_PROD1L DB "peanut cookies$"
	CMP_PROD2L DB "love cookies$"
	CMP_PROD3L DB "nut cookies$"
	CMP_PROD4L DB "chocolate cookies$"
	CMP_PROD5L DB "oreo cookies$"
	
	;PRODUCT STRING 
	PRODUCT_FOUND1 DB 13,10,"   PEANUT COOKIES    RM 10.00$"
	PRODUCT_FOUND2 DB 13,10,"   LOVE COOKIES      RM 20.00$"
	PRODUCT_FOUND3 DB 13,10,"   NUT COOKIES       RM 22.00$"
	PRODUCT_FOUND4 DB 13,10,"   CHOCOLATE COOKIES RM 22.00$"
	PRODUCT_FOUND5 DB 13,10,"   OREO COOKIES      RM 32.00$"
	
	;SUBTOTAL SALES
	LINE DB "========================================================",13,10,"$"
	TH DB "  Product            Price        Quantity      Subtotal",13,10,"$"
	HEAD DB "                      SALES SUMMARY                         ",13,10,"$"
	SPACE DB "                                  TOTAL AMOUNT: RM $"
	REVENUE DB "                                REVENUE(10%): RM $"
	REVENUE_1 DW ?
	REVENUE_2 DW ?
	REVENUE_PERCENT DW 10
	
	SALES_1 DW 0;
	SALES_2 DW 0;
	SALES_3 DW 0;
	SALES_4 DW 0;
	SALES_5 DW 0;
	TOTAL_SALES DW 0;
	RM          DB "         RM $"
	
	;PRODUCT SALES
	COOKIES_SALES_QTY1 DB 0
	COOKIES_SALES_QTY2 DB 0
	COOKIES_SALES_QTY3 DB 0
	COOKIES_SALES_QTY4 DB 0
	COOKIES_SALES_QTY5 DB 0
	
.CODE
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	
    LOGIN:
		MOV AH,09H
		LEA DX,PROMPT_USERNAME
		INT 21H
		
		MOV AH,0AH
		LEA DX,LOG_IN
		INT 21H		
	
		MOV AH,09H
		LEA DX,NEWLINE
		INT 21H
		
		MOV AH,09H
		LEA DX,PROMPT_PASSWORD
		INT 21H
	
	MOV CX,8
	MOV SI,0
	ENTER_PW:
		MOV AH,07H
		INT 21H
		MOV USER_PASSWORD[SI],AL
		INC SI
		LOOP ENTER_PW
		
	MOV CX,7
	MOV SI,0	
	CMP_USERNAME:
		MOV BL,USER_NAME[SI]
		CMP BL,USERNAME[SI]
		JNE ERROR_NAME
		INC SI
		LOOP CMP_USERNAME
	
	MOV CX,8
	MOV SI,0
	CMP_PASSWORD:
		MOV BL,PASSSWORD[SI]
		CMP BL,USER_PASSWORD[SI]
		JNE ERROR_PASSWORD
		INC SI
		LOOP CMP_PASSWORD
		JMP VALID_LOGINMSG
		
	ERROR_NAME:
		MOV AH,09H
		LEA DX, INVALID_NAME
		INT 21H
		JMP LOGIN
		
	ERROR_PASSWORD:
		MOV AH,09H
		LEA DX, INVALID_PASSWORD
		INT 21H
		JMP LOGIN
	
	VALID_LOGINMSG:
		MOV AH,09H
		LEA DX,VALID_LOGIN
		INT 21H
		JMP HOME
	
	
	
	HOME:
		MOV AX,0600H
		MOV CX,0000H
		MOV DX,184FH
		INT 10H
		
		MOV AH,09H
		LEA DX,MAIN_MENU
		INT 21H
		
		MOV AH,09H
		LEA DX,OPTION1
		INT 21H

		MOV AH,09H
		LEA DX,OPTION2
		INT 21H

		MOV AH,09H
		LEA DX,OPTION3
		INT 21H
		  
		MOV AH,09H
		LEA DX,OPTION4
		INT 21H

		MOV AH,09H
		LEA DX,QUE_OPTION    									  
		INT 21H
			
		;-----------------input option
		MOV AH,01H
		INT 21H
		SUB AL,30H
		MOV CHOICE,AL
	  
		MOV AH,09H
		LEA DX,NEWLINE
		INT 21H
		
		MOV AX,0600H
		MOV CX,0000H
		MOV DX,184FH
		INT 10H
		
		CMP CHOICE,1
		JE  PRODUCT
		
		CMP CHOICE,2
		JE JUMP_PURCHASE1
		
		CMP CHOICE,3
		JE JUMPBOARD1
		
		CMP CHOICE,4
		JE JUMPBOARD_FINISH
		
		JMP INVALID_MESSAGE
		
		INVALID_MESSAGE:
			MOV AH,09H
			LEA DX,INVALIDINPUT
			INT 21H
			JMP HOME
			
	JMPTOHOME:
		JMP HOME
	JUMPBOARD_FINISH:
		JMP FINISH
	JUMPBOARD1:
		JMP SALES
	;OPTION 1------------------------------------------------<<PRODUCT MODULE>>--------------------------------------------------------------
	PRODUCT:
	
		MOV AH,09H
		LEA DX,TITILE_PROD
		INT 21H
		
		MOV AH,09H
		LEA DX,OPT_PROD1
		INT 21H
		
		MOV AH,09H
		LEA DX,OPT_PROD2
		INT 21H
		
		MOV AH,09H
		LEA DX,OPT_PROD3
		INT 21H
		
		MOV AH,09H
		LEA DX,OPT_PROD4
		INT 21H
		
		MOV AH,09H
		LEA DX,CHOICE_PROD
		INT 21H
		
		
		MOV AH,01H
		INT 21H
		SUB AL,48
		MOV ANS,AL
		
		CMP ANS,1
		JL MSG_INVALID
		JE DISPLAY_PROD
		
		CMP ANS,2
		JE JUMPCHANGES2
		
		CMP ANS,3
		JE JUMPCHANGES3
		
		CMP ANS,4
		JG MSG_INVALID
		JE JMPTOHOME
		
		
		;-------------------------------------JUMPBOARD TO PURCHASE
		JUMP_PURCHASE1:
			JMP JUMP_PURCHASE2
		MSG_INVALID:
			MOV AH,09H
			LEA DX,INVALID_MSG
			INT 21H
			
			MOV AH,01H
			INT 21H
			MOV ANS,AL
		
			CMP ANS,'Y'
			CMP ANS,'y'
			JE PRODUCT
			
		JMP HOME
		
		;<!----------------------------------JUMPBOARD--------------------------------------->
		JUMPCHANGES2:
			JMP SEARCH_SINGLE
		JUMPCHANGES3:
			JMP SEARCH_STRING	

			
		DISPLAY_PROD:
			MOV AH,09H
			LEA DX,PROD_HEADER
			INT 21H
			
			;-------------------------DISPLAY PEANUT_COOKIES----------------------------------------
			MOV AH,09H
			LEA DX,PRODUCT1
			INT 21H
		
			MOV AH,0
			MOV AL,PEANUT_COOKIES 
			DIV TEN
			MOV BX,AX
			
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,DECIMAL
			INT 21H

			
			;-------------------------DISPLAY LOVE_COOKIES----------------------------------------
				
			MOV AH,09H
			LEA DX,PRODUCT2
			INT 21H
			
			MOV AH,0
			MOV AL,LOVE_COOKIES
			DIV TEN
			MOV BX,AX
			
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,DECIMAL
			INT 21H
			
			;--------------------------DISPLAY NUT_COOKIES----------------------------------------
		
			MOV AH,09H
			LEA DX,PRODUCT3
			INT 21H
			
			MOV AH,0	
			MOV AL,NUT_COOKIES
			DIV TEN
			MOV BX,AX
			
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,DECIMAL
			INT 21H
			
			;--------------------------DISPLAY CHOCOLATE_COOKIES--------------------------------
			MOV AH,09H
			LEA DX,PRODUCT4
			INT 21H
					
			MOV AH,0
			MOV AL,CHOCOLATE_COOKIES
			DIV TEN
			MOV BX,AX
			
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,DECIMAL
			INT 21H
			
			;---------------------------DISPLAY OREO_COOKIES----------------------------------------
			MOV AH,09H
			LEA DX,PRODUCT5
			INT 21H
					
			MOV AH,0
			MOV AL,OREO_COOKIES
			DIV TEN
			MOV BX,AX
			
			MOV AH,02H
			MOV DL,BL
			ADD DL,30H
			INT 21H
			
			MOV AH,02H
			MOV DL,BH
			ADD DL,30H
			INT 21H
			
			MOV AH,09H
			LEA DX,DECIMAL
			INT 21H
			
			MOV AH,09H
			LEA DX,ANY_KEY
			INT 21H
			
			MOV AH,01H
			INT 21H
			
			JMP PRODUCT
		
		JUMP_PURCHASE2:
			JMP JUMP_PURCHASE3
	
		;-------------------------------(CHOICE2)->SEACRH SINGLE CHARACTER PROCESS--------------------------------------
		SEARCH_SINGLE:
			
			MOV AH,09H
			LEA DX,PROD_HEADER2
			INT 21H
			
			MOV AH,09H
			LEA DX,SING_SEARCH
			INT 21H
			
			MOV AH,01H
			INT 21H
			MOV STR_INPUT,AL
			
			;---------------------------------------------------------COMPARE SINGLE CHARACTER PROCESS--------------
			CMP STR_INPUT,'P'   ;UPPERCASE SEARCH
			JE PEANUT
			CMP STR_INPUT,'p'	;LOWERCASE SEARCH
			JE PEANUT
			
			CMP STR_INPUT,'L'	;UPPERCASE SEARCH
			JE JUMPCHANGES7
			CMP STR_INPUT,'l'	;LOWERCASE SEARCH
			JE JUMPCHANGES7
			
			CMP STR_INPUT,'N'	;UPPERCASE SEARCH
			JE JUMPCHANGES4
			CMP STR_INPUT,'n'	;LOWERCASE SEARCH
			JE JUMPCHANGES4
			
			CMP STR_INPUT,'C'	;UPPERCASE SEARCH
			JE JUMPCHANGES5
			CMP STR_INPUT,'c'	;LOWERCASE SEARCH
			JE JUMPCHANGES5
			
			CMP STR_INPUT,'O'	;UPPERCASE SEARCH
			JE JUMPCHANGES6
			CMP STR_INPUT,'o'	;LOWERCASE SEARCH
			JE JUMPCHANGES6
			
			;------------------------------------------------------IF NOT RESULT(PRODUCT) FOUND
			MOV AH,09H
			LEA DX,ERROR_FOUND
			INT 21H
			
			;------------------------------------------------------ASKING WHETHER WANNA CONTINUE SEARCH OR NOT(YES/NO)
			MOV AH,09H
			LEA DX,CONT_SEARCH
			INT 21H
			
			MOV AH,01H
			INT 21H
			MOV ANS,AL
		
			CMP ANS,'Y'
			CMP ANS,'y'
			JE SEARCH_SINGLE   ;JUMP CHANGES TO ABOVE	
			JMP PRODUCT
						
			;---------------------------------------JUMPBOARD---------------------------------------
			JUMPCHANGESA1:
				JMP SEARCH_SINGLE
			JUMPCHANGES7:
				JMP LOVE_LETTER
			JUMPCHANGES4:
				JMP NUT
			JUMPCHANGES5:	
				JMP CHOCOLATE
			JUMPCHANGES6:
				JMP OREO
			JUMP_PURCHASE3:
				JMP JUMP_PURCHASE4
			;------------------------------------------------------IF THE SEARCH RESULT IS MATCHING.....
			PEANUT:
			
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
							
				MOV AH,09H
				LEA DX,PRODUCT_FOUND1
				INT 21H

				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JE JUMPCHANGESA1
				JMP PRODUCT
			;----------------------JUMPBOARD
			JUMPCHANGESA2:
				JMP JUMPCHANGESA1
			JUMP_PURCHASE4:
				JMP JUMP_PURCHASE5
				
			LOVE_LETTER:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
							
				MOV AH,09H
				LEA DX,PRODUCT_FOUND2
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JE JUMPCHANGESA2
				JMP PRODUCT
			;----------------------JUMPBOARD
			JUMPCHANGESA3:
				JMP JUMPCHANGESA2
			JUMP_PURCHASE5:
				JMP JUMP_PURCHASE6
			NUT:
			
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND3
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JE JUMPCHANGESA3
				JMP PRODUCT
			;----------------------JUMPBOARD
			JUMPCHANGESA4:
				JMP JUMPCHANGESA3
			JUMP_PURCHASE6:
				JMP JUMP_PURCHASE7
			CHOCOLATE:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND4
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JE JUMPCHANGESA4
				JMP PRODUCT
			;----------------------JUMPBOARD
			JUMPCHANGESA5:
				JMP JUMPCHANGESA4		
			JUMP_PURCHASE7:
				JMP JUMP_PURCHASE8
			OREO:
			
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND5
				INT 21H
			
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JE JUMPCHANGESA5	
				JMP PRODUCT
				
		JUMP_PURCHASE8:
			JMP JUMP_PURCHASE9
		;-----------------------------------------------------------<STRING SEARCH PART>--------------------------------------------------------		
		SEARCH_STRING:
			MOV AH,09H
			LEA DX,PROD_HEADER2
			INT 21H
			
			MOV AH,09H
			LEA DX,SEARCH_ASK
			INT 21H
			
			;----------INPUT STRING
			MOV AH,0AH
			LEA DX,STR
			INT 21H		
			
			MOV AH,09H
			LEA DX,PROD_ENTER
			INT 21H
			
			MOV AH,09H
			LEA DX,NEWLINE
			INT 21H
			
			MOV AH,09H
			LEA DX,INPUT_SEARCH
			INT 21H
		 
			;------------------------------------COMPARE THEN JUMP TO CORRESPONDING LABEL
			MOV BH,INPUT_SEARCH
			CMP BH,CMP_PROD1
			JE PROD_FOUND1
			CMP BH,CMP_PROD1L
			JE PROD_FOUND1
			
			MOV BH,INPUT_SEARCH
			CMP BH,CMP_PROD2
			JE JUMPCHANGES11
			CMP BH,CMP_PROD2L
			JE JUMPCHANGES11
	
			MOV BH,INPUT_SEARCH
			CMP BH,CMP_PROD3
			JE JUMPCHANGES9
			CMP BH,CMP_PROD3L
			JE JUMPCHANGES9

			
			MOV BH,INPUT_SEARCH
			CMP BH,CMP_PROD4
			JE JUMPCHANGES10
			CMP BH,CMP_PROD4L
			JE JUMPCHANGES10
		
			MOV BH,INPUT_SEARCH
			CMP BH,CMP_PROD5
			JE JUMPCHANGES8
			CMP BH,CMP_PROD5L
			JE JUMPCHANGES8
			JMP ERROR_MESSAGE
			
			JMPSEARCH_STRING:
				JMP SEARCH_STRING
			;------------------------------------------------------IF NOT RESULT(PRODUCT) FOUND
			ERROR_MESSAGE:
				MOV AH,09H
				LEA DX,ERROR_FOUND
				INT 21H
			
			;------------------------------------------------------ASKING WHETHER WANNA CONTINUE SEARCH OR NOT(YES/NO)
			MOV AH,09H
			LEA DX,CONT_SEARCH
			INT 21H
			
			MOV AH,01H
			INT 21H
			MOV ANS,AL
			
			CMP ANS,'Y'
			;-------------------JUMPBOARD
			JUMPCHANGESA6:
				JE JMPSEARCH_STRING ;JUMP TO SEACRH STRING PROCESS AGAIN				
			
			JMP PRODUCT

			;-------------------JUMPBOARD TO BELOW
			JUMPCHANGES8:
				JMP PROD_FOUND5
			JUMPCHANGES9:
				JMP PROD_FOUND3
			JUMPCHANGES11:
				JMP PROD_FOUND2
			JUMP_PURCHASE9:
				JMP JUMP_PURCHASE10
			;------------------{COMPARE RESULTS}----------------------			
			PROD_FOUND1:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND1
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JUMPCHANGESA7:
					JE JUMPCHANGESA6
					
				JMP PRODUCT
			
			;-------------------JUMPBOARD TO BELOW 
			JUMPCHANGES10:
				JMP PROD_FOUND4
			JUMP_PURCHASE10:
				JMP PURCHASE
			PROD_FOUND2:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND2
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JUMPCHANGESA8:
					JE JUMPCHANGESA7
				JMP PRODUCT
			
			PROD_FOUND3:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND3
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JUMPCHANGESA9:
					JE JUMPCHANGESA8
					
				JMP PRODUCT
			
			PROD_FOUND4:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND4
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JUMPCHANGESA10:
					JE JUMPCHANGESA9
					
				JMP PRODUCT
			
			PROD_FOUND5:
				MOV AH,09H
				LEA DX,SEARCH_RESULT
				INT 21H
				
				MOV AH,09H
				LEA DX,PROD_HEADER3
				INT 21H
				
				MOV AH,09H
				LEA DX,PRODUCT_FOUND5
				INT 21H
				
				MOV AH,09H
				LEA DX,CONT_SEARCH
				INT 21H
				
				MOV AH,01H
				INT 21H
				MOV ANS,AL
				
				CMP ANS,'Y'
				CMP ANS,'y'
				JE JUMPCHANGESA10
				JMP PRODUCT
		
		JMP HOME
	
	;----------------------------------------------------------------<<PURCHASE MODULE>>--------------------------------------------------------
	PURCHASE:
		MOV AH,09H
		LEA DX,PURCHASE_TITLE
		INT 21H 

		;-------------------------PEANUT_COOKIES
		MOV AH,09H
		LEA DX,PRODUCT1
		INT 21H
		
		;---------------------PRICE
		MOV AH,0
		MOV AL,PEANUT_COOKIES 
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H

		
		;-------------------------LOVE_COOKIES
		
		MOV AH,09H
		LEA DX,PRODUCT2
		INT 21H
		
		MOV AH,0
		MOV AL,LOVE_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		;--------------------------NUT_COOKIES	

		
		MOV AH,09H
		LEA DX,PRODUCT3
		INT 21H
		
		MOV AH,0	
		MOV AL,NUT_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H

		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		;--------------------------CHOCOLATE_COOKIES
		MOV AH,09H
		LEA DX,PRODUCT4
		INT 21H
				
		MOV AH,0
		MOV AL,CHOCOLATE_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		;---------------------------OREO_COOKIES
		MOV AH,09H
		LEA DX,PRODUCT5
		INT 21H
				
		MOV AH,0
		MOV AL,OREO_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		;----------------------------PROMP USER TO SELECT PRODUCT
		SELECT_PRODUCT:
			
			;Select Product
			MOV AH,09H
			LEA DX,QUE_PRODUCT
			INT 21H 
			
			MOV AH,01H
			INT 21H
			SUB AL,30H
			MOV OPT_PRODUCT,AL
			
			CMP OPT_PRODUCT,6
			JAE P6
					
			;SELECT QUANTITY
			
			MOV AH,09H
			LEA DX,QUE_QTY
			INT 21H 
			
			MOV AH,01H 
			INT 21H
			SUB AL,30H
			MUL TEN
			MOV BL,AL
			
			MOV AH,01H
			INT 21H
			SUB AL,30H
			ADD BL,AL
				
			CMP OPT_PRODUCT,1
			JE P1
			
			CMP OPT_PRODUCT,2
			JE P2
			
			CMP OPT_PRODUCT,3
			JE P3
			
			CMP OPT_PRODUCT,4
			JE P4
			
			CMP OPT_PRODUCT,5
			JE P5
			
			
			JUMPBOARD_SELECTPRODUCT:
				JMP SELECT_PRODUCT

			
			P1:
				ADD PEANUT_COOKIES_QUANTITY,BL
				ADD COOKIES_SALES_QTY1,BL
				JMP CONT
			
			P2:
				ADD LOVE_COOKIES_QUANTITY,BL
				ADD COOKIES_SALES_QTY2,BL
				JMP CONT
			
			P3:
				ADD NUT_COOKIES_QUANTITY,BL
				ADD COOKIES_SALES_QTY3,BL
				JMP CONT
			
			P4:
				ADD CHOCOLATE_COOKIES_QUANTITY,BL
				ADD COOKIES_SALES_QTY4,BL
				JMP CONT
				
			P5:
				ADD OREO_COOKIES_QUANTITY,BL
				ADD COOKIES_SALES_QTY5,BL
				JMP CONT
			
			P6:
				MOV AH,09H
				LEA DX,INVALIDINPUT
				INT 21H
				
				
			CONT :
				MOV AH,09H
				LEA DX,ADD_MORE
				INT 21H
				
				MOV AH,01H
				INT 21H
				
				CMP AL,"Y"
				JE JUMPBOARD_SELECTPRODUCT
				CMP AL,"y"
				JE JUMPBOARD_SELECTPRODUCT
				
				CMP AL,"N"
				JE CONT2
				CMP AL,"n"
				JNE P6
				
				CONT2:
				MOV BH,0
				MOV BL,0
				MOV AL,PEANUT_COOKIES_QUANTITY
				MUL PEANUT_COOKIES
				ADD BX,AX
				
				MOV AL,LOVE_COOKIES_QUANTITY
				MUL LOVE_COOKIES
				ADD BX,AX
				
				MOV AL,NUT_COOKIES_QUANTITY
				MUL NUT_COOKIES
				ADD BX,AX
				
				MOV AL,CHOCOLATE_COOKIES_QUANTITY
				MUL CHOCOLATE_COOKIES
				ADD BX,AX
				
				MOV AL,OREO_COOKIES_QUANTITY
				MUL OREO_COOKIES
				ADD BX,AX
				
				MOV SUBTOTAL,BX
					
				MOV AH,09H
				LEA DX,SUBTOTAL_LABEL
				INT 21H
				
				MOV DX,0     ;FIRST DIGIT
				MOV AX,SUBTOTAL
				DIV THOUSAND			
				MOV BX,AX
				MOV CX,DX
				
				MOV AH,02H
				MOV DX,BX
				ADD DX,30H
				INT 21H

				MOV AX,CX 	;SECOND DIGIT
				DIV HUNDRED				
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				  
				MOV AH,0   ;THIRD DIGIT
				MOV AL,BH  
				DIV TEN
				
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,02H ;FOURTH DIGIT
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,09H
				LEA DX,SST_LABEL
				INT 21H
			
				MOV AX,SUBTOTAL ;2590
				MOV BH,00H
				MOV BL,06H     
				MUL BX    ;15540
				
				MOV CH,0H
				MOV CL,100
				
				DIV CX
				
				MOV SST_INTEGER,AX
				MOV SST_DECIMAL,DX
							
				
				MOV AX,SST_INTEGER
				DIV HUNDRED
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,0H
				MOV AL,BH
				DIV TEN
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,02H
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,02H
				MOV DL,'.'
				INT 21H
				
				MOV AX,SST_DECIMAL
				DIV TEN
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,02H
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,09H
				LEA DX,TOTAL_LABEL
				INT 21H
				
				MOV BX,SUBTOTAL
				ADD BX,SST_INTEGER
				MOV TOTAL_INTEGER,BX
				MOV BX,SST_DECIMAL
				MOV TOTAL_DECIMAL,BX
				
				MOV DX,0H
				MOV AX,TOTAL_INTEGER
				DIV THOUSAND
				MOV BX,AX
				MOV CX,DX
				
				MOV AH,02H
				MOV DX,BX
				ADD DX,30H
				INT 21H
				
				MOV AX,CX
				DIV HUNDRED
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,0H
				MOV AL,BH
				DIV TEN
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,02H
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				MOV AH,02H
				MOV DL,'.'
				INT 21H
				
				MOV AX,TOTAL_DECIMAL
				DIV TEN
				MOV BX,AX
				
				MOV AH,02H
				MOV DL,BL
				ADD DL,30H
				INT 21H
				
				MOV AH,02H
				MOV DL,BH
				ADD DL,30H
				INT 21H
				
				
				MOV PEANUT_COOKIES_QUANTITY,0H
				MOV LOVE_COOKIES_QUANTITY,0H
				MOV NUT_COOKIES_QUANTITY,0H
				MOV CHOCOLATE_COOKIES_QUANTITY,0H
				MOV OREO_COOKIES_QUANTITY,0H
				
			MOV AH,09H
			LEA DX,ANY_KEY2
			INT 21H
			
			MOV AH,01H
			INT 21H				
			JMP HOME
			
				
;----------------------------------------------------------------<<SALES MODULE>>--------------------------------------------------------
	SALES:
	
		MOV AH,09H
		LEA DX,NEWLINE
		INT 21H
	 
	    MOV AH,09H
		LEA DX,LINE
		INT 21H
		
		MOV AH,09H
		LEA DX,HEAD
		INT 21H
		
		MOV AH,09H
		LEA DX,LINE
		INT 21H
		
		
		MOV AH,09H
		LEA DX,TH
		INT 21H
		
		MOV AH,09H
		LEA DX,LINE
		INT 21H
		;-------------------------PEANUT_COOKIES
		MOV AH,09H
		LEA DX,PRODUCT1
		INT 21H
		
		;---------------------PRICE
		MOV AH,0
		MOV AL,PEANUT_COOKIES 
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
	
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY1
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,48
		INT 21H
		
		MOV AH,09H
		LEA DX,RM
		INT 21H
		
		
		;sales
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY1
		MUL PEANUT_COOKIES
		ADD SALES_1,AX
		ADD TOTAL_SALES,AX
		;div 1000
		MOV DX,0H
		MOV AX,SALES_1
		DIV THOUSAND
		
		MOV BX,AX
		MOV CX,DX
		
		MOV AH,02H
		MOV DX,BX
		ADD DX,30H
		INT 21H
		
		MOV AX,CX
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		
		

		
		;-------------------------LOVE_COOKIES
		
			
		MOV AH,09H
		LEA DX,PRODUCT2
		INT 21H
		
		MOV AH,0
		MOV AL,LOVE_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY2
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,48
		INT 21H
		
		MOV AH,09H
		LEA DX,RM
		INT 21H
		
		;sales
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY2
		MUL LOVE_COOKIES
		ADD SALES_2,AX
		ADD TOTAL_SALES,AX
		;div 1000
		MOV DX,0H
		MOV AX,SALES_2
		DIV THOUSAND
		
		MOV BX,AX
		MOV CX,DX
		
		MOV AH,02H
		MOV DX,BX
		ADD DX,30H
		INT 21H
		
		MOV AX,CX
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		;--------------------------NUT_COOKIES	

		
		MOV AH,09H
		LEA DX,PRODUCT3
		INT 21H
		
		MOV AH,0	
		MOV AL,NUT_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY3
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,48
		INT 21H
		
		MOV AH,09H
		LEA DX,RM
		INT 21H
		
		;sales
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY3
		MUL NUT_COOKIES 
		ADD SALES_3,AX
		ADD TOTAL_SALES,AX
		;div 1000
		MOV DX,0H
		MOV AX,SALES_3
		DIV THOUSAND
		
		MOV BX,AX
		MOV CX,DX
		
		MOV AH,02H
		MOV DX,BX
		ADD DX,30H
		INT 21H
		
		MOV AX,CX
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		
		;--------------------------CHOCOLATE_COOKIES
		MOV AH,09H
		LEA DX,PRODUCT4
		INT 21H
				
		MOV AH,0
		MOV AL,CHOCOLATE_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY4
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,48
		INT 21H
		
		MOV AH,09H
		LEA DX,RM
		INT 21H
		
	   ;sales
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY4
		MUL CHOCOLATE_COOKIES 
		ADD SALES_4,AX
		ADD TOTAL_SALES,AX
		;div 1000
		MOV DX,0H
		MOV AX,SALES_4
		DIV THOUSAND
		
		MOV BX,AX
		MOV CX,DX
		
		MOV AH,02H
		MOV DX,BX
		ADD DX,30H
		INT 21H
		
		MOV AX,CX
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		;---------------------------OREO_COOKIES
		MOV AH,09H
		LEA DX,PRODUCT5
		INT 21H
				
		MOV AH,0
		MOV AL,OREO_COOKIES
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,DECIMAL
		INT 21H
		
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY5
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,48
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,48
		INT 21H
		
		MOV AH,09H
		LEA DX,RM
		INT 21H
		
		;sales
		MOV AH,0
		MOV AL,COOKIES_SALES_QTY5
		MUL OREO_COOKIES 
		ADD SALES_5,AX
		ADD TOTAL_SALES,AX
		;div 1000
		MOV DX,0H
		MOV AX,SALES_5
		DIV THOUSAND
		
		MOV BX,AX
		MOV CX,DX
		
		MOV AH,02H
		MOV DX,BX
		ADD DX,30H
		INT 21H
		
		MOV AX,CX
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,NEWLINE
		INT 21H
		
		MOV AH,09H
		LEA DX,LINE
		INT 21H
		
		MOV AH,09H
		LEA DX,SPACE
		INT 21H
		
		;TOTAL SALE
		MOV DX,0H
		MOV AX,TOTAL_SALES
		DIV THOUSAND
		
		MOV BX,AX
		MOV CX,DX
		
		MOV AH,02H
		MOV DX,BX
		ADD DX,30H
		INT 21H
		
		MOV AX,CX
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,NEWLINE
		INT 21H
		
		MOV AH,09H
		LEA DX,LINE
		INT 21H
		
		;------------------------REVENUE
		
		MOV AH,09H
		LEA DX,REVENUE
		INT 21H
		
		MOV AX,TOTAL_SALES
		MUL REVENUE_PERCENT
		
		MOV CH,0
		MOV CL,100
		
		DIV  CX
		
		MOV REVENUE_1,AX
		MOV REVENUE_2,DX
		
		
		;div 100
		MOV AX,REVENUE_1
		DIV HUNDRED
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,0
		MOV AL,BH
		DIV TEN
		MOV BX,AX
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,"."
		INT 21H
		
		MOV AX,REVENUE_2
		DIV TEN
		MOV BX,AX
		
		
		MOV AH,02H
		MOV DL,BL
		ADD DL,30H
		INT 21H
		
		MOV AH,02H
		MOV DL,BH
		ADD DL,30H
		INT 21H
		
		MOV AH,09H
		LEA DX,NEWLINE
		INT 21H
		
		
		MOV AH,09H
		LEA DX,LINE
		INT 21H

		
		MOV AH,09H
		LEA DX,ANY_KEY2
		INT 21H
			
		MOV AH,01H
		INT 21H				
		JMP HOME
	;LOOP condition
 
	FINISH:
		MOV AX,4C00H
		INT 21H

MAIN ENDP
END MAIN



