.model small
.stack

.data
tempRem DW 0
maxTaxPriceStatus db "0"
logo db 10,13, "              ______    ______    ______   __   __      ____       __    __" 
     db 10,13, "            /______/}  /_____/|  /_____/| /_ / /_/|    /____/|    /_/|  /_/|"
     db 10,13, "            |  __  }] |  __  || |  __  || | ||/ //    / __  ||__  | ||  | ||"
    db 10,13,  "            | ||_} }] | || | || | || | || | |/ //    / //_/ |__/| | ||  | ||" 
    db 10,13,  "            |  __  }] | || | || | || | || |   //    /_____   __|/ | ||  | ||"
    db 10,13,  "            | || } }] | || | || | || | || |    \\        |  ||    | ||  | ||" 
    db 10,13,  "            | |/_} }] | |/_| || | |/_| || | |\  \\       |  ||    | \/__/ ||"
    db 10,13,  "            |______/  |______|/ |______|/ |_| \__\/      |__|/    \_______//"
    db 10,13,  "$"
LOGLOGO db 10,13, "                ____          ______    _________    ______    ___    ___"
        db 10,13, "               /___/|        /_____/|  /________/|  /_____/|  /__/\  /__/|"
        db 10,13, "               |   ||       |  __  || |   _____|/  |__  __|/  |  \ \ | | |" 
        db 10,13, "               |   ||       | || | || |  ||  ____    |  ||    |   \ \| | |"
        db 10,13, "               |   ||       | || | || |  || /___/|   |  ||    |    \ | | |" 
        db 10,13, "               |   ||_____  | || | || |  ||   | ||   |  ||__  |  |\ \| | |"
        db 10,13, "               |   |/____/| | |/_| || |  |/___| ||  _|  |/_/| |  ||\   | |"
        db 10,13, "               |_________|/ |______|/ |_________|/ |_______|/ |__|/ \__|/"
        db 10,13, "$"
REGLOGO db 10,13, "      _______   _____   ______   ______   _____   ______   _____   _______"
        db 10,13, "     /______/| /____/| /_____/| /_____/| /____/| /_____/| /____/| /______/|"
        db 10,13, "     |  __  }| |  __|/ | ____|/ |_   _|/ |  __|/ |_   _|/ |  __|/ |  __  }| "
        db 10,13, "     | ||_} }| | ||__  |||  __    | ||   | ||___   | ||   | ||__  | ||_} }| "
        db 10,13, "     | |/_} }| | |/_/| ||| /_/|   | ||   | |/__/|  | ||   | |/_/| | |/_} }|" 
        db 10,13, "     |  __  // |  __|/_||||_ ||  _| ||_  |___ | |  | ||   |  __|/ |  __  //"  
        db 10,13, "     | || \ \\ | |/__/|||/__||| /_| |_/|  __| | |  | ||   | |/__/|| || \ \\" 
        db 10,13, "     |_||  \_\\|_____|/|_____|| |_____|/ |____| /  |_|/   |_____|/|_||  \_\\"
        db 10,13, "$"


 MMSG DB 13,10, "                        ____________Welcome User_______________"
      DB 13,10, "                        |           [1] Register              |"
  	  DB 13,10, "                        |           [2] Login                 |"
  	  DB 13,10, "                        |           [3] Exit                  |"
      DB 13,10, "                        |                                     |"
      DB 13,10, "                        |_____________________________________|"
  	  DB 10,13,13,10, "                       Select your option (1,2,3 only) : $"
 
 RUMSG DB 10,13,13,10, "          	       (1-10 Characters) (Press Enter When Done) "
       DB 13,10, "                    "
   	   DB 13,10, "                           	Enter Username 	: $"
 
 
 RPMSG DB 13,10,13,10, "               	      (8 Characters Only) (Press Enter When Done) "
       DB 13,10, "                    "
   	   DB 13,10, "                  	        Enter Password  : $"
 
 EMMSG DB 13,10,"                    	Please select 1,2,3 only $"
 USEL DB 0
 LMSG1  DB 13,10,13,10,13,10,"                    	Username: $"
 LMSG2  DB 13,10,13,10,13,10, "                    	Password: $"
 INAME DB 0,0,0,0
 IPSW  DB 4 DUP (0)
 IMSG  DB 13,10,13,10,13,10,"                                  LOGIN FAILED $"
 VMSG  DB 13,10,13,10,13,10,"                           	   LOGIN SUCCESSFUL $"
 RSMSG1 DB 13,10,13,10,"                    	        REGISTRATION SUCCESSFUL$"
 RSMSG2 DB 13,10,13,10,"                    	        REGISTRATION SUCCESSFUL$"
 RSMSG3 DB 13,10,13,10,"                    	        REGISTRATION SUCCESSFUL$"
 REMSG DB 13,10,13,10,"                    	          REGISTRATION FAILED$"
 ACC1     DB    11 DUP (0)
 PASS1 DB 8 DUP (0)
 ACC2     DB    11 DUP (0)
 PASS2 DB 8 DUP (0)
 ACC3  DB    11 DUP (0)
 PASS3 DB 8 DUP (0)
 TEN DB 10H
 CHAR DB 'A'
 COUNT DB 0
 ERRUSER DB 13,10,"                    	Invalid Username$"
 ERRPASS DB 13,10,"                    	Invalid Password$"
 ERRCOMP DB 13,10,"                    	Account Registration Full$"
 CONMSG DB 13,10,13,10,"                         Do you want to continue (Y/N): $"
 CONMSG2 DB 13,10,13,10,"                        Do you want to continue (Y/N): $"
 CONTI1 DB ?
 CONTI2 DB ?
 CONLOG DB ?
 ERMSG1 DB 13,10,"                    	Invalid input $"
 ERMSG2 DB 13,10,"                    	Invalid input $"
 RPASS DB 8 dup (0)
 LPASS DB 8 dup (0)
 PCOUNT DB 1
 
 RUSER LABEL BYTE
 MAXRU DB  11
 ACTRU DB   0
 RUDATA  DB 11 dup(0)

  LUSER LABEL BYTE
  MAXLU  DB	11
  ACTLU DB   0
  LUDATA DB   11 DUP(0)


book1salesQuan dw 0
book2salesQuan dw 0
BOOK3QUAN DB ?
book3salesQuan DW ?
BOOK4QUAN DB ?
book4salesQuan DW ?
BOOK5QUAN DB ?
book5salesQuan DW ?
BOOK6QUAN DB ?
book6salesQuan DW ?
BOOK7QUAN DB ?
book7salesQuan DW ?
BOOK8QUAN DB ?
book8salesQuan DW ?
BOOK9QUAN DB ?
book9salesQuan DW ?


book1sales dw 0
book2sales dw 0
book3sales DW 0
book4sales DW 0
book5sales DW 0
book6sales DW 0
book7sales DW 0
book8sales DW 0
book9sales DW 0

book1sales2 dw 0
book2sales2 dw 0
book3sales2 DW 0
book4sales2 DW 0
book5sales2 DW 0
book6sales2 DW 0
book7sales2 DW 0
book8sales2 DW 0
book9sales2 DW 0

temptotalsalestax dw 0
temptotalsalestax1 dw 0
tempsubtotal dw 0


totalsales dw 0
totalsales2 dw 0
totalsales3 dw 0




totalsalestax dw 0  
totalsalestax2 dw 0
totalsalestax3 dw 0
totalsalestax4 dw 0


Subtotalsales dw 0
Subtotalsales2 dw 0
Subtotalsales3 dw 0
subtotalFloatPoint dw 0


temptotalsalestax2 dw 0


bookCategoryMenu db 10,13,"                    	 ____________Book Category______________ "
   		         db 10,13,"                    	|                                       |"
   		         db 10,13,"                    	|   1.Cooking                           |"
   		         db 10,13,"                    	|   2.Entertainment                     |"
                 db 10,13,"                    	|   3.Science & Math  (Bundle)          |"
   		         db 10,13,"                    	|   0.Exit                              |"
   		         db 10,13,"                    	|_______________________________________|"
            db 10,13,10,13,"                                    Option :  1 , 2 , 3 , 0 $,",10,13


cookingMenu db 10,13,"                    	 ____________________Cooking Book__________________  "
   		    db 10,13,"                    	|                                                  |"
   		    db 10,13,"                    	|   1.Our Family Favourites Cookbook /Book RM 50   |"
   		    db 10,13,"                    	|   2.Tasty Asia Cookbook Recipes    /Book RM 65   |"
   		    db 10,13,"                    	|   3.The Malay Kitchen              /Book RM 80   |"
   		    db 10,13,"                    	|   0.Exit                                         |"
   		    db 10,13,"                    	|__________________________________________________|"
            db 10,13,10,13,"                                  Option :  1 , 2 , 3 , 0$        ",10,13

entertainmentMenu db 10,13,"      ______________________Entertainment Book_________________________"
   		          db 10,13,"      |  	1.Harry Potter and the Sorcerer's Stone /Book RM 100  |"
   		   	      db 10,13,"      |  	2.The Hobbit                          	/Book RM 150  |"
   		   	      db 10,13,"      |  	3.Game of Thrones                     	/Book RM 200  |"
   		   	      DB 10,13,"      |  	0.Exit                                	              |"
   			      db 10,13,"      |_______________________________________________________________|"
            db 10,13,10,13,"                            Option :  1 , 2 , 3 , 0             $",10,13

ScienceMenu db 10,13,"       _______________________________Science Book_____________________"
    		db 10,13,"      |                                                                |"
   		    db 10,13,"      |     1.A Short History of Nearly Everything / Bundle RM 1388    |"
   		    db 10,13,"      |     2.Astrophysics for People in a Hurry   / Bundle RM 1488    |"
   		    db 10,13,"      |     3.Optics, 11Th Edition                 / Bundle RM 1888    |"
   		    db 10,13,"      |     0.Exit                                                     |"
   		    db 10,13,"      |                                                                |"
   		    db 10,13,"      |________________________________________________________________|"
            db 10,13,10,13,"                            Option :  1 , 2 , 3 , 0                    $",10,13




equo4rem1 dw 0
equo4rem2 DW 0
quo4back db 0
equo4back db 0
address db 10,13,"                             Book 4 U  SDN BDH"
   	    db 10,13,"                          	1,Jalan 88/88, 	"
   	    db 10,13,"                         	Taman Bunga Raya,   "
   	    db 10,13,"                         	53300 Kuala Lumpur.$"
   	 

   	 
DERROR DB 10,13,"                    	Invalid input! Enter Digit only!$"


DECIMALPOINT DB ".$"

PROMPT1 DB 10,13,10,13,10,13,"                        	Select the option : $"
PROMOT2 DB 10,13,10,13,   		  "                         Enter the book quantity (1-9) : $"
PROMOT3 DB 10,13,10,13,  	"                    	Current Amount is : $"
PROMOT4 DB 10,13,10,13,        	"                    	Amount 6% tax  : RM $"
PROMOT5 DB 10,13,10,13,  	"                    	Total amount   : RM $"
PROMOT6 DB 10,13,10,13,        	"                    	Subtotal   	: RM $"
PROMOT10 DB 10,13,10,13,       	"                    	Rounding Price : RM $"

PROMPT7 DB 10,13,10,13,"                              Current Order Amount : RM $"
PROMPT9 DB 10,13,10,13,"                    	     Each Digit : (0 - 9) Only$"




INVOICEMSG DB 10,13,"                    	------------------INVOICE-------------"
   		DB 10,13,"                      	Quantity     	Name      	"
   		DB 10,13,"                    	--------------------------------------$"
INVOICEEND DB 10,13,"                    	--------------------------------------$",10,13



MAINMENUMSG db 10,13,"                   __________________ Main Menu_____________________ "
   		    db 10,13,"                  |                                                 |"
   		    db 10,13,"                  |                 1.Purchase Book                 |"
   		    db 10,13,"                  |                 2.Proceed to Payment            |"
   		    db 10,13,"                  |                 3.Sales Report                  |"
   		    db 10,13,"                  |                 0.Exit                          |"
   		    db 10,13,"                  |                                                 |"
   		    db 10,13,"                  |_________________________________________________|$",10,13



BOOKLIST DB 10,13,10,13,"------------BOOK LIST------------"
   	  DB 10,13,"1.Harry Potter and the Sorcerer's Stone /5"
   	  DB 10,13,"2.The Hobbit/6"
   	  DB 10,13,"3.Game of Thrones /7"
   	  DB 10,13,"4.Moby Dick /8"
   	 
   	  DB 10,13,"3.Exit"
   	  DB 10,13,"---------------------------$",10,13


ERROR1 DB 10,13,10,13,"                    	           Please enter correct option!$"

USEROPTION DB ?
BOOKQUANTITY DB ?

HarryPotter DW 3000
TheHobbit DW 6H
gameOfThrones dw 7h
mobyDick dw 8h

totalAfterTax DW 0
TOTALPRICE DW ?
QUO1 DW ?
REM1 DW ?

QUO2 DW ?
REM2 DW ?

QUO3 DW ?
REM3 DW ?

ttl dw 0
ttl2 dw 0
decimal dw ?
decquo1 dw ?
decrem1 dw 0
decrem2 dw ?
Rounddecrem1 dw 0
Rounddecrem2 dw 0


ttlquo1 dw ?
ttlrem1 dw ?
ttlrem2 dw ?
ttlquo2 dw ?
ttlquo3 dw ?
ttlrem3 dw ?
ttlquo4 dw ?
ttlrem4 dw ?




;display the book amount in invoice
BOOK1QUAN DB 0h
BOOK2QUAN DB 0h
BOOKSLEC DB ?

    
BOOK1 DB  "   Our Family Favourites Cookbook   	$"
BOOK2 DB  "   Tasty Asia Cookbook Recipes      	$"
BOOK3  DB "   The Malay Kitchen                	$"
BOOK4  DB "   Harry Potter and the Sorcerer's Stone$"
BOOK5  DB "   The Hobbit                       	$"
BOOK6  DB "   Game of Thrones                  	$"
BOOK7  DB "   A Short History of Nearly Everything $"
BOOK8  DB "   Astrophysics for People in a Hurry   $"
BOOK9  DB "   Optics, 11Th Edition             	$"

bookQuanRem1 db ?
bookQuanRem2 db ?
bookQuanQuo1 db ?
bookQuanRem3 db ?
bookQuanQuo2 db ?
;display the book amount in invoice (end)


;sales Report
space db "         	$"

SALESREPORTMSG DB 10,13,"______________________________Sales Report_____________________________"
   			   db 10,13,"                                                                       "
   			   db 10,13,"           	Name                    	Quantity       	Amount$     "
SALESREPORTMSG1 db 10,13,"Our Family Favourites Cookbook             	$"
SALESREPORTMSG2 db 10,13,"Tasty Asia Cookbook Recipes                	$"
SALESREPORTMSG3 db 10,13,"The Malay Kitchen                          	$"
SALESREPORTMSG4 db 10,13,"Harry Potter and the Sorcerer's Stone      	$"
SALESREPORTMSG5 db 10,13,"The Hobbit                                 	$"
SALESREPORTMSG6 db 10,13,"Game of Thrones                            	$"
SALESREPORTMSG7 db 10,13,"A Short History of Nearly Everything       	$"
SALESREPORTMSG8 db 10,13,"Astrophysics for People in a Hurry         	$"
SALESREPORTMSG9 db 10,13,"Optics, 11Th Edition                       	$"

SALESREPORTMSG10 db 10,13,"______________________________________________________________________"
   		 	     db 10,13,"                    	Total sales amount : RM $"

 
SALESREPORTMSG11 db 10,13,"                    	Total sales tax    : RM $"

SALESREPORTMSG12 db 10,13,"                    	Total Revenue      : RM $"
   		 	    

;sales report (end)


;PAYMENT METHOD
 PAYMENU db 10,13,"                    	 ___________Payment Method___________"
   		db 10,13,"                    	|                                    |"
   		db 10,13,"                    	|            1.Touch 'n Go           |"
   		db 10,13,"                    	|                                    |"
   		db 10,13,"                    	|              	2.Cash               |"
   		db 10,13,"                    	|                                    |"
   		db 10,13,"                    	|____________________________________|"
   		db 10,13,10,13,"                    	               Option : 1 , 2        $"




   	 
paymentOptionMsg DB 10,13,"                    	Please select the payment option : $"
paymentMsg DB 10,13,10,13,10,13,"                        	     You have not order yet ."
   		   DB 10,13,"                    	            Please continuee order . $"
paymentOption DB ?
paymentMsg1 db 10,13,10,13,"                      	     Payment Amount : RM $"
paymentMsg2 db 10,13,10,13,"                            	Payment Suceesfully$"

;PAYMENT METHOD(TNG)
touchNgoMsg1 DB 10,13,10,13,"                    	Enter your phone number : $"
touchNgoMsg2 DB 10,13,10,13,"                    Enter  6-digit password(123456) : $"
touchNgoMsg3 DB 10,13,10,13,                      	    "Password Wrong!"
   		     DB 10,13,"                    	Please re-enter again!$"
touchNgoMsg4 DB 10,13,10,13,"                      	     Password Correct ! $"

touchNgoNum DB ?
ARRAY 	LABEL BYTE
MAX   	DB	14
ACT   	DB	?
ARRAYDATA DB	14 DUP (0)

touchNgoPass  DB 6 DUP (0)
touchNgoPassCheck DB "123456"
;PAYMENT METHOD(TNG)(END)

;PAYMENT METHOD(Cash)
cashStatus DB "0"


cashPaymentMsg DB 10,13,"                   	Please enter the cash amount :RM $"
cashPaymentMsg1 DB 10,13,"                   	Change    	:RM $"
cashPaymentMsg2 DB 10,13,"                   	Cash      	:RM $"
cashPaymentMsg3 DB 10,13,"                   	Cash Amount Not Enough$"
cashPaymentMsg4 DB 10,13,"                   	     Enter Format : ( xxxxx )$"


cashNotEnoughStatus db "0"
cashMinusStatus db "0"
cashAmount DW 0



cashDigit1 DB ?
cashDigit2 DB ?
cashDigit3 DB ?
cashDigit4 db ?
cashDigit5 db ?
cashDigit6 db ?
tempcashDigit5 db 0
tempCashRemainDigit5 db 0
tempRemainder dw 0
tempRemainder1 dw 0



remdecimal dw ?
remdecquo1 dw ?
remdecrem1 dw 0
remdecrem2 dw ?
;PAYMENT METHOD(Cash)(END)

;PAYMENT METHOD(END)



subTimes DB 0
equo4 db 0
quo4 db 0
rem4 db ?

userQuan db 0
maxPriceStatus db "0"
maxPriceMsg db 10,13,"                    	Your have order maximum amount"
   		 db 10,13,"                    	Please make another order$"
temp dw ?




orderStatus db "0"
roudingStatus db "0"
spaceMiddle db "                    	$"
clearMsg db 10,13,"                               	Press Enter To Continue$"


price1 dw 0
price2 dw 0
numpricepart1 dw 0
mumpricepart2 dw 0

.code
exitProgram proc
    call resetVariable
	 mov ah, 4Ch    
	int 21h  	 
    
    ret
exitProgram endp

middlespace proc
    mov ah,09H
    lea dx,spaceMiddle
    int 21h
    ret
middlespace endp

DbookCategoryMenu proc

    bookCategoryMenuStart:

    CALL clear

    LEA DX,logo
    MOV AH,09H
    INT 21h


    LEA DX,bookCategoryMenu
    MOV AH,09H
    INT 21H


    MOV AH,09H
    LEA DX,PROMPT7
    INT 21H

    MOV AX, TOTALPRICE
    CALL displayPrice


  
    LEA DX,PROMPT1 ;"Please select the option : $"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H ; input byte (ask the user to select the option)
    INT 21H
    
    CMP AL,'1'
    JE cookingMenuOption
    CMP AL,'2'
    JE entertainmentMenuOption
    CMP AL,'3'
    JE ScienceMenuOption
    cmp al,'0'
    je previousMenuOption

    call errormsg
    jmp bookCategoryMenuStart

    cookingMenuOption:
   	call DcookingMenu
   	jmp DbookCategoryMenuExit
    entertainmentMenuOption:
   	call DentertainmentMenu
   	jmp DbookCategoryMenuExit
    ScienceMenuOption:
   	call DScienceMenu
   	jmp DbookCategoryMenuExit
    previousMenuOption:
   	jmp mainMenu

    DbookCategoryMenuExit:
    RET

DbookCategoryMenu endp

DcookingMenu proc
DcookingMenuStart:

    CALL clear


    LEA DX,cookingMenu
    MOV AH,09H
    INT 21H


   

    LEA DX,PROMPT1 ;"Please select the option : $"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H ; input byte (ask the user to select the option)
    INT 21H
    
    
    CMP AL,'1'
    JE cookBook1
    CMP AL,'2'
    JE cookBook2
    CMP AL,'3'
    JE cookBook3
    cmp al,'0'
    je previousMenuOptionCook
    


    
    call errormsg
    jmp DcookingMenuStart



    cookBook1:
   	 mov BOOKSLEC,"1"
   	 call bookprice
    cookBook2:
   	 mov BOOKSLEC,"2"
   	 call bookprice    
    cookBook3:
   	 mov BOOKSLEC,"3"
   	 call bookprice    
    previousMenuOptionCook:
   	 call DbookCategoryMenu


    RET

DcookingMenu ENDP

DentertainmentMenu proc
DentertainmentMenuStart:

    CALL clear

    LEA DX,entertainmentMenu
    MOV AH,09H
    INT 21H


  
    LEA DX,PROMPT1 ;"Please select the option : $"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H ; input byte (ask the user to select the option)
    INT 21H
    
    
    CMP AL,'1'
    JE entertainmentBook1
    CMP AL,'2'
    JE entertainmentBook2
    CMP AL,'3'
    JE entertainmentBook3
    cmp al,'0'
    je previousMenuOptionEntertainment


    
    call errormsg
    jmp DentertainmentMenuStart


    entertainmentBook1:
   	 mov BOOKSLEC,"4"
   	 call bookprice
    entertainmentBook2:
   	 mov BOOKSLEC,"5"
   	 call bookprice
    entertainmentBook3:
   	 mov BOOKSLEC,"6"
   	 call bookprice
    previousMenuOptionEntertainment:
   	 call DbookCategoryMenu



    RET


DentertainmentMenu ENDP

DScienceMenu proc
DScienceMenuStart:

    CALL clear

    LEA DX,ScienceMenu
    MOV AH,09H
    INT 21H


    LEA DX,PROMPT1 ;"Please select the option : $"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H ; input byte (ask the user to select the option)
    INT 21H
    
    
    CMP AL,'1'
    JE ScienceBook1
    CMP AL,'2'
    JE ScienceBook2
    CMP AL,'3'
    JE ScienceBook3
    cmp al,'0'
    je previousMenuOptionScience
    


    
    call errormsg
    jmp DScienceMenuStart



    ScienceBook1:
   	 mov BOOKSLEC,"7"
   	 call bookprice
    ScienceBook2:
   	 mov BOOKSLEC,"8"
   	 call bookprice
    ScienceBook3:
   	 mov BOOKSLEC,"9"
   	 call bookprice
    previousMenuOptionScience:
   	 call DbookCategoryMenu


    RET


DScienceMenu ENDP

resetVariable proc
    mov totalAfterTax,0000
    mov TOTALPRICE,0000
    mov cashDigit5,0000
    mov quo4,0000
    mov equo4,0000
    mov quo4back,0000
    mov equo4back,0000
    mov ttl,0000
    mov decimal,0000
    mov remdecrem1,0000
    mov remdecrem2,0000
    mov REM1,0000
    mov orderStatus,"0"
    MOV BOOK1QUAN,0
    MOV BOOK2QUAN,0
    MOV BOOK3QUAN,0
    MOV BOOK4QUAN,0
    MOV BOOK5QUAN,0
    MOV BOOK6QUAN,0
    MOV BOOK7QUAN,0
    MOV BOOK8QUAN,0
    MOV BOOK9QUAN,0
	mov maxTaxPriceStatus,"0"

    ret
resetVariable ENDP

checkPriceM30000 PROC
    mov subTimes,0

startCheckPriceM30000:




    cmp subTimes,3
    jae endd
    cmp TOTALPRICE,30000
	jae sub30000
	jb endd


sub30000:

   sub TOTALPRICE,30000
   add equo4,3
   add equo4back,3
   add subTimes,1


   jmp startCheckPriceM30000



endd:
    RET

checkPriceM30000 ENDP

checkPriceM999999 proc

;     MOV AX,0000
     MOV DX,0000
     MOV AX,TOTALPRICE
     MOV BX,10
     DIV BX
     MOV REM1,DX
     MOV QUO1,AX
    

     mov dx,0000
     mov ax,QUO1
     mov bx,10
     div bx
     MOV REM2,DX
     MOV QUO2,AX

     mov dx,0000
     mov ax,QUO2
     mov bx,10
     div bx
     MOV REM3,DX
     MOV QUO3,AX


     MOV Ax,0000
     mov ax,QUO3
     MOV BL,10
     DIV BL
     mov QUO4,AL
     mov quo4back,al
     MOV REM4,AH   


     MOV AX,0000
     MOV AL,QUO4
     add al,equo4
     add al,48
     CMP AL,'9'
     JA maxPrice
     JBE lessThan9





     maxPrice:

         mov maxPriceStatus,"1"
   	 jmp endPriceStatusCheck

     lessThan9:

         mov maxPriceStatus,"0"

     endPriceStatusCheck:
         mov ax,0000
         RET

checkPriceM999999 ENDP

checkTaxPriceM100000 proc

;     MOV AX,0000
     MOV DX,0000
     MOV AX,TOTALPRICE
     MOV BX,10
     DIV BX
     MOV REM1,DX
     MOV QUO1,AX
    

     mov dx,0000
     mov ax,QUO1
     mov bx,10
     div bx
     MOV REM2,DX
     MOV QUO2,AX

     mov dx,0000
     mov ax,QUO2
     mov bx,10
     div bx
     MOV REM3,DX
     MOV QUO3,AX


     MOV Ax,0000
     mov ax,QUO3
     MOV BL,10
     DIV BL
     mov QUO4,AL
     mov quo4back,al
     MOV REM4,AH   


     MOV AX,0000
     MOV AL,QUO4
     add al,equo4
     add al,48
     CMP AL,'9'
     JE euo4E9
     JBE lessThan9

euo4E9:
     MOV AX,0000
     MOV AL,rem4
     add al,48
     CMP AL,'4'
     jae taxpriceMax
     JBE lessThan4

	taxpriceMax:

     mov maxTaxPriceStatus,"1"
   	 jmp endcheckTaxPriceM100000

    lessThan4:

    mov maxTaxPriceStatus,"0"

     endcheckTaxPriceM100000:
     mov ax,0000
     RET




checkTaxPriceM100000 endp

spaceDisplay PROC
    
    MOV AH,09H
    LEA DX,space
    INT 21H
    
    RET

spaceDisplay ENDP
salesReportCalc PROC
;book1
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book1salesQuan ;10
    mov BX,0;12
    mul BX
    mov price1,ax;10*12 = 120  

    mov dx,0000
    mov ax,0000
    mov ax,book1salesQuan ;10
    mov BX,50
    mul BX
    mov price2,ax ;10 * 34 = 340
;------------------------

    mov dx,0000
    mov ax,price1 ;120
    mov BX,100
    div BX
    mov book1sales2,ax ;1
    mov book1sales,dx ;20

    mov dx,0000
    mov ax,book1sales ;20
    mov bx,100
    mul bx
    mov book1sales,ax ;20 * 100 = 2000

;---------------------------
    mov dx,0000
    mov ax,price2 ;340
    mov BX,10000
    div BX
    add book1sales2,ax ; 0
    add book1sales,dx ; 2340

    mov dx,0000
    mov ax,book1sales ;2000
    mov bx,10000
    div bx
    add book1sales2,ax ;0
    mov book1sales,dx ;2000


;book1sales :2000
;book1sales2 :1

;---------------------------------------

;book2
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book2salesQuan 
    mov BX,00
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book2salesQuan
    mov BX,65
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book2sales2,ax ;4
    mov book2sales,dx ;56

    mov dx,0000
    mov ax,book2sales ;56
    mov bx,100
    mul bx
    mov book2sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book2sales2,ax ; 0 + 4
    add book2sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book2sales
    mov bx,10000
    div bx
    add book2sales2,ax
    mov book2sales,dx
;---------------------------------------

;book3

;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book3salesQuan 
    mov BX,00
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book3salesQuan
    mov BX,80
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book3sales2,ax ;4
    mov book3sales,dx ;56

    mov dx,0000
    mov ax,book3sales ;56
    mov bx,100
    mul bx
    mov book3sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book3sales2,ax ; 0 + 4
    add book3sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book3sales
    mov bx,10000
    div bx
    add book3sales2,ax
    mov book3sales,dx
;---------------------------------------

;book4

;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book4salesQuan 
    mov BX,1
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book4salesQuan
    mov BX,00
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book4sales2,ax ;4
    mov book4sales,dx ;56

    mov dx,0000
    mov ax,book4sales ;56
    mov bx,100
    mul bx
    mov book4sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book4sales2,ax ; 0 + 4
    add book4sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book4sales
    mov bx,10000
    div bx
    add book4sales2,ax
    mov book4sales,dx
;---------------------------------------
;book5
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book5salesQuan 
    mov BX,1
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book5salesQuan
    mov BX,50
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book5sales2,ax ;4
    mov book5sales,dx ;56

    mov dx,0000
    mov ax,book5sales ;56
    mov bx,100
    mul bx
    mov book5sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book5sales2,ax ; 0 + 4
    add book5sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book5sales
    mov bx,10000
    div bx
    add book5sales2,ax
    mov book5sales,dx
;---------------------------------------
;book6
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book6salesQuan 
    mov BX,2
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book6salesQuan
    mov BX,00
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book6sales2,ax ;4
    mov book6sales,dx ;56

    mov dx,0000
    mov ax,book6sales ;56
    mov bx,100
    mul bx
    mov book6sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book6sales2,ax ; 0 + 4
    add book6sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book6sales
    mov bx,10000
    div bx
    add book6sales2,ax
    mov book6sales,dx
;---------------------------------------
;book7
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book7salesQuan 
    mov BX,13
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book7salesQuan
    mov BX,88
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book7sales2,ax ;4
    mov book7sales,dx ;56

    mov dx,0000
    mov ax,book7sales ;56
    mov bx,100
    mul bx
    mov book7sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book7sales2,ax ; 0 + 4
    add book7sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book7sales
    mov bx,10000
    div bx
    add book7sales2,ax
    mov book7sales,dx
;---------------------------------------
;book8
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book8salesQuan 
    mov BX,14
    mul BX
    mov price1,ax  ;38 * 12 = 456

    mov dx,0000
    mov ax,0000
    mov ax,book8salesQuan
    mov BX,88
    mul BX
    mov price2,ax ;38 * 34 = 1292
;------------------------

    mov dx,0000
    mov ax,price1 ;456
    mov BX,100
    div BX
    mov book8sales2,ax ;4
    mov book8sales,dx ;56

    mov dx,0000
    mov ax,book8sales ;56
    mov bx,100
    mul bx
    mov book8sales,ax ;56 * 1000 = 5600

;---------------------------
    mov dx,0000
    mov ax,price2 ;1292
    mov BX,10000
    div BX
    add book8sales2,ax ; 0 + 4
    add book8sales,dx ; 1292+5600 =6892

    mov dx,0000
    mov ax,book8sales
    mov bx,10000
    div bx
    add book8sales2,ax
    mov book8sales,dx
;---------------------------------------
;book9
;--------------------------
    mov dx,0000
    mov ax,0000
    mov ax,book9salesQuan 
    mov BX,18
    mul BX
    mov price1,ax  ;120

    mov dx,0000
    mov ax,0000
    mov ax,book9salesQuan
    mov BX,88
    mul BX
    mov price2,ax ;340
;------------------------

    mov dx,0000
    mov ax,price1 ;120
    mov BX,100
    div BX
    mov book9sales2,ax ;1!
    mov book9sales,dx ;20

    mov dx,0000
    mov ax,book9sales ;20
    mov bx,100
    mul bx
    mov book9sales,ax ;2000!

;---------------------------
    mov dx,0000
    mov ax,price2 ;340
    mov BX,10000
    div BX
    add book9sales2,ax ; 3+1 =4 !
    add book9sales,dx ; 2000+

    mov dx,0000
    mov ax,book9sales
    mov bx,10000
    div bx
    add book9sales2,ax
    mov book9sales,dx
;---------------------------------------

;totol sales

    mov ax,book1sales2
    mov totalsales2,ax
    mov ax,book1sales
    mov totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book2sales2
    add totalsales2,ax
    mov ax,book2sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book3sales2
    add totalsales2,ax
    mov ax,book3sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book4sales2
    add totalsales2,ax
    mov ax,book4sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book5sales2
    add totalsales2,ax
    mov ax,book5sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book6sales2
    add totalsales2,ax
    mov ax,book6sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book7sales2
    add totalsales2,ax
    mov ax,book7sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book8sales2
    add totalsales2,ax
    mov ax,book8sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov ax,book9sales2
    add totalsales2,ax
    mov ax,book9sales
    add totalsales,ax
    mov dx,0000
    mov ax,totalsales
    mov bx,10000
    div bx
    add totalsales2,ax
    mov totalsales,dx

    mov dx,0000
    mov ax,totalsales2
    mov bx,10000
    div bx
    mov totalsales3,ax
    mov totalsales2,dx   

;get the first 4 digit of totalsalestax
    mov dx,0000
    mov ax,totalsales ;9999
    mov bx,6
    mul bx
    mov totalsalestax,ax ;9999*6 =59994

;make the first 4 digit of totalsalestax < 10 000 
    mov dx,0000
    mov ax,totalsalestax ;59994
    mov bx,10000
    div bx
    mov totalsalestax2,ax ;5 
    mov totalsalestax,dx ;9994

;get the next 4 digit of totalsalestax
    mov dx,0000
    mov ax,totalsales2 ;9999
    mov bx,6
    mul bx
    mov temptotalsalestax2,ax

;make the next 4 digit of totalsalestax < 10 000 
    mov dx,0000
    mov ax,temptotalsalestax2 ;59994
    mov bx,10000
    div bx
    mov totalsalestax3,ax ;5
    add totalsalestax2,dx ;9994


;get the last 4 digit of totalsalestax
    mov dx,0000
    mov ax,totalsales3 ;9999
    mov bx,6
    mul bx
    mov temptotalsalestax2,ax

;make the last 4 digit of totalsalestax < 10 000 
    mov dx,0000
    mov ax,temptotalsalestax2 ;59994
    mov bx,10000
    div bx
    mov totalsalestax4,ax ;5
    add totalsalestax3,dx ;9994






;;calculate the subtotalsalesprice
;part1 ax dx

    mov dx,0000
    mov ax,totalsalestax ;4148
    mov bx,100
    div bx
    mov temptotalsalestax,ax ;add with part2 dx*1000 ;41
    mov subtotalFloatPoint,dx;48
    

;part2 ax dx
    mov dx,0000
    mov ax,totalsalestax2 ;0064
    mov bx,100
    div bx
    mov temptotalsalestax2,ax ;add with part3 dx*1000 ;0
    mov tempsubtotal,dx ;64

    mov dx,0000
    mov ax,tempsubtotal ;64
    mov bx,100
    mul bx
    mov tempsubtotal,ax ; 6400

    mov ax,totalsales
    mov Subtotalsales,ax
    mov ax, tempsubtotal
    add Subtotalsales,ax
    mov ax,temptotalsalestax
    add Subtotalsales,ax

    mov dx,0000
    mov ax,Subtotalsales
    mov bx,10000
    div bx
    mov Subtotalsales2,ax ;1
    mov Subtotalsales,dx;3799

;part3 ax dx
    mov dx,0000
    mov ax,totalsalestax3
    mov bx,100
    div bx
    mov Subtotalsales3,ax 
    mov temptotalsalestax,dx

    mov dx,0000
    mov ax,temptotalsalestax
    mov bx,100
    mul bx
    mov tempsubtotal,ax ; 6400



    mov ax,totalsales2
    add Subtotalsales2,ax
    mov ax, tempsubtotal
    add Subtotalsales2,ax
    mov ax,temptotalsalestax2
    add Subtotalsales2,ax


    mov dx,0000
    mov ax,Subtotalsales2
    mov bx,10000
    div bx
    mov Subtotalsales3,ax ;1
    mov Subtotalsales2,dx;3799


    mov dx,0000
    mov ax,totalsalestax4 ; 5
    mov bx,100
    div bx
    add Subtotalsales3,ax  ;0
    mov temptotalsalestax,dx ;5

    mov dx,0000
    mov ax,temptotalsalestax
    mov bx,100
    mul bx
    mov tempsubtotal,ax ; 500


    mov ax,totalsales3
    add Subtotalsales3,ax
    mov ax, tempsubtotal
    add Subtotalsales3,ax




    mov dx,0000
    mov ax,Subtotalsales3
    mov bx,10000
    div bx
    mov Subtotalsales3,dx;3799








  
    
 




    
    RET
salesReportCalc ENDP
salesReportDisplay PROC
    CALL clear

    mov ah,09h
    lea dx,SALESREPORTMSG
    int 21h
    
    mov ah,09h
    lea dx,SALESREPORTMSG1
    int 21h
    mov ax,0000
    mov ax,book1salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book1sales2
    call salespriceDisplay
	mov Ax,book1sales
    call salespriceDisplay

	

    
    
    mov ah,09h
    lea dx,SALESREPORTMSG2
    int 21h
    mov ax,0000
    mov ax,book2salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book2sales2
    call salespriceDisplay
	mov Ax,book2sales
    call salespriceDisplay

    
    
    mov ah,09h
    lea dx,SALESREPORTMSG3
    int 21h
    mov ax,0000
    mov ax,book3salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book3sales2
    call salespriceDisplay
	mov Ax,book3sales
    call salespriceDisplay

    
    mov ah,09h
    lea dx,SALESREPORTMSG4
    int 21h
    mov ax,0000
    mov ax,book4salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book4sales2
    call salespriceDisplay
	mov Ax,book4sales
    call salespriceDisplay

    
    
    mov ah,09h
    lea dx,SALESREPORTMSG5
    int 21h
    mov ax,0000
    mov ax,book5salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book5sales2
    call salespriceDisplay
	mov Ax,book5sales
    call salespriceDisplay

    
    mov ah,09h
    lea dx,SALESREPORTMSG6
    int 21h
    mov ax,0000
    mov ax,book6salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book6sales2
    call salespriceDisplay
	mov Ax,book6sales
    call salespriceDisplay

    
    mov ah,09h
    lea dx,SALESREPORTMSG7
    int 21h
    mov ax,0000
    mov ax,book7salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book7sales2
    call salespriceDisplay
	mov Ax,book7sales
    call salespriceDisplay

    
    
    mov ah,09h
    lea dx,SALESREPORTMSG8
    int 21h
    mov ax,0000
    mov ax,book8salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book8sales2
    call salespriceDisplay
	mov Ax,book8sales
    call salespriceDisplay

    

    mov ah,09h
    lea dx,SALESREPORTMSG9
    int 21h
    mov ax,0000
    mov ax,book9salesQuan
    call displayBookQuan
    call spaceDisplay
    mov Ax,book9sales2
    call salespriceDisplay
	mov Ax,book9sales
    call salespriceDisplay

    
    


    mov ah,09h
    lea dx,SALESREPORTMSG10
    int 21h
    mov Ax,totalsales3
    call salespriceDisplay
    mov Ax,totalsales2
    call salespriceDisplay
	mov Ax,totalsales
    call salespriceDisplay


    mov ah,09h
    lea dx,SALESREPORTMSG11
    int 21h
    mov Ax,totalsalestax4
    call salespriceDisplay
    mov Ax,totalsalestax3
    call salespriceDisplay
	mov Ax,totalsalestax2
    call salespriceDisplay
    mov Ax,totalsalestax

     MOV DX,0000
     MOV BX,10
     DIV BX
     MOV REM1,DX
     MOV QUO1,AX
    

     mov dx,0000
     mov ax,QUO1
     mov bx,10
     div bx
     MOV REM2,DX
     MOV QUO2,AX


     mov dx,0000
     mov ax,QUO2
     mov bx,10
     div bx
     MOV REM3,DX
     MOV QUO3,AX


     MOV Ax,0000
     mov ax,QUO3
     MOV BL,10
     DIV BL
     mov QUO4,AL
     MOV REM4,AH   



     MOV DL,REM4
     ADD DL,48
     MOV AH,02H
     INT 21H


     MOV DX,REM3
     ADD DL,48
     MOV AH,02H
     INT 21H

     mov ah,02H
     mov dl,DECIMALPOINT
     int 21h



     MOV DX,REM2
     ADD DL,48
     MOV AH,02H
     INT 21H

     MOV DX,REM1
     ADD DL,48
     MOV AH,02H
     INT 21H


    mov ah,09h
    lea dx,SALESREPORTMSG12
    int 21h
    mov Ax,Subtotalsales3
    call salespriceDisplay
    mov Ax,Subtotalsales2
    call salespriceDisplay
	mov Ax,Subtotalsales
    call salespriceDisplay

    mov dx,0000
    mov ax,subtotalFloatPoint
    mov bx,10
    div bx

    mov rem1,ax
    mov rem2,dx


     mov ah,02H
     mov dl,DECIMALPOINT
     int 21h




     MOV DX,REM1
     ADD DL,48
     MOV AH,02H
     INT 21H

     MOV DX,REM2
     ADD DL,48
     MOV AH,02H
     INT 21H

    MOV AH,01H
    INT 21H


    RET
    
    
salesReportDisplay ENDP
salespriceDisplay proc

     MOV DX,0000
     MOV BX,10
     DIV BX
     MOV REM1,DX
     MOV QUO1,AX
    

     mov dx,0000
     mov ax,QUO1
     mov bx,10
     div bx
     MOV REM2,DX
     MOV QUO2,AX


     mov dx,0000
     mov ax,QUO2
     mov bx,10
     div bx
     MOV REM3,DX
     MOV QUO3,AX


     MOV Ax,0000
     mov ax,QUO3
     MOV BL,10
     DIV BL
     mov QUO4,AL
     MOV REM4,AH   



     MOV DL,REM4
     ADD DL,48
     MOV AH,02H
     INT 21H


     MOV DX,REM3
     ADD DL,48
     MOV AH,02H
     INT 21H


     MOV DX,REM2
     ADD DL,48
     MOV AH,02H
     INT 21H

     MOV DX,REM1
     ADD DL,48
     MOV AH,02H
     INT 21H
    
     RET

salespriceDisplay endp

checkSalesPric proc
;mov ax,sales
	mov dx,0000
	mov bx,10000
	div bx

	mov tempRem,ax
	mov bx,10000
	mul bx

;ax = quo * 10000
	ret

checkSalesPric endp


;TNG payment
paymentMethod PROC




    mov cashStatus,"0"

PAYMENUsec:



	mov ah,09h
    lea dx,INVOICEMSG
    int 21h
    
    call bookAmountDisplay





    ;display price before the tax
    mov ah,09h
    lea dx,PROMOT5
    int 21h

    MOV AX,TOTALPRICE
    call displayPrice
    
    ;display the price after tax
    mov ah,09h
    lea dx,PROMOT4
    int 21h
    call displayTax
    
;display the subtotal
    mov ah,09h
    lea dx,PROMOT6
    int 21h

    mov ax,totalAfterTax
    call displayPrice
    caLL point


    mov ah, 09h
    lea dx,PROMOT10
    int 21h

    mov ax,totalAfterTax
    call displayPrice
    caLL Roundpoint
    
    mov ah,09h
    lea dx,INVOICEEND
    int 21h
    
 

    mov ah,09h
    lea dx,clearMsg
    int 21h
    mov ah,01h
    int 21h
    call clear
    MOV AH,09H
    LEA DX,PAYMENU
    INT 21H
    


    MOV AH,09H
    LEA DX,PROMPT1
    INT 21H
    
    MOV AH,01H
    INT 21H
    
    CMP AL,"1"
    JE touchNGo
    CMP AL,"2"
    JE cash
    
    call errormsg
    
    JMP PAYMENUsec


    
cash:
    mov cashStatus,"1"
    CALL cashPayment
    JMP WELCOME1
    
touchNGo:
    mov ah, 09H
    lea dx, paymentMsg1
    int 21h
    mov ax,totalAfterTax
    call displayPrice
    caLL Roundpoint

    MOV AH,09H
    LEA DX,touchNgoMsg1
    INT 21H
    
    ;INPUT STRING 0AH ARRAY
    MOV AH,0AH
    LEA DX,ARRAY
    INT 21H
REGETPASS:
    MOV AH,09H
    LEA DX,touchNgoMsg2
    INT 21H

 
    
    MOV CX,6
    MOV SI,0
GETPASS:
    MOV AH,07H
    INT 21H
    MOV touchNgoPass[SI],AL
    INC SI

       
    MOV AH,2
    MOV DL,'*'
    INT 21H
    
    LOOP GETPASS
    
    MOV DI,0 ;FOR PASSWORD

CHKP:
    CMP DI,4
    JE WELCOME
    MOV AL,touchNgoPass[DI]
    CMP AL,touchNgoPassCheck[DI]
    JE correctDigit
    JNE wrongPass

correctDigit:
    INC DI    
    JMP CHKP
    
wrongPass:
    MOV AH,09H
    LEA DX,touchNgoMsg3
    INT 21H
    
    MOV AH,01H
    INT 21H
    
    JMP REGETPASS
    
WELCOME:
    MOV AH,09H
    LEA DX,touchNgoMsg4
    INT 21H
    
    MOV AH,01H
    INT 21H

WELCOME1:

    
    

    RET



    
    


paymentMethod ENDP
    

checkIsDigit PROC
    chkmin1:
   	 cmp AX,30h
   	 jae chkmax1
   	 jb error3
   	 
   	 
    chkmax1:
   	 cmp ax,39h
   	 jbe Isdigit
   	 ja error3
   	 
   	 
    error3:
   	 MOV AH,09H
   	 LEA DX,DERROR
   	 INT 21H
   	 mov ah,01h
   	 int 21h

   	 jmp PROCEEDPAYMENT



    Isdigit:
   	 RET    
   	 

checkIsDigit ENDP

;get the cash amount(cash payment)    
cashPayment PROC
cashStart:
    mov cashMinusStatus,"0"
    mov cashAmount,0
    mov cashDigit1,0
    mov cashDigit2,0
    mov cashDigit3,0
    mov cashDigit4,0
    mov cashDigit5,0
	mov cashdigit6,0


    mov ah, 09H
    lea dx, paymentMsg1
    int 21h
    mov ax,totalAfterTax
    call displayPrice
    caLL Roundpoint

    MOV AH,09H
    LEA DX, PROMPT9
    INT 21H

    MOV AH,09H
    LEA DX, cashPaymentMsg4
    INT 21H


    MOV AH,09H
    LEA DX,cashPaymentMsg
    INT 21H

	cmp maxTaxPriceStatus,"1"
	jne notchangeMaxpriceSatus1
	mov maxPriceStatus,"1"


	notchangeMaxpriceSatus1:
	cmp maxPriceStatus,"0"
	JE NotgetextraCashDigit

;WHEN THE PRICE MORE THAN >999 99

	MOV AH,01
    INT 21H
    MOV cashdigit6,AL
    mov ax,0000
    mov al,cashdigit6
    call checkIsDigit


;WHEN THE PRICE  LESS THAN < 999 99
    NotgetextraCashDigit:
    MOV AH,01
    INT 21H
    MOV cashDigit5,AL
    mov ax,0000
    mov al,cashDigit5
    call checkIsDigit

    MOV AH,01
    INT 21H
    MOV cashDigit4,AL
    mov ax,0000
    mov al,cashDigit4
    call checkIsDigit


    MOV AH,01
    INT 21H
    MOV cashDigit1,AL
    mov ax,0000
    mov al,cashDigit1
    call checkIsDigit

    
    MOV AH,01
    INT 21H
    MOV cashDigit2,AL
    mov ax,0000
    mov al,cashDigit2
    call checkIsDigit

    
    MOV AH,01
    INT 21H
    MOV cashDigit3,AL
    mov ax,0000
    mov al,cashDigit3
    call checkIsDigit

    

    sub cashDigit1,30h
    sub cashDigit2,30h
    sub cashDigit3,30h
    sub cashDigit4,30h
    sub cashDigit5,30h
	sub cashDigit6,30h



;get sequance is 6 5 4 1 2 3

CashAmountcalc:
;CHECK  THE USER  PAY > 30 000 OR <30 000 
    cmp cashDigit5,3
    jb calcCashWithNot3 ; JMP--> WHEN THE USER PAY < 30 000
;WHEN THE USER  PAY  > 30 000 

    add cashAmount,30000
    sub cashDigit5,3
    mov cashMinusStatus,"1" ; WHEN CASHDIGIT 5  - 3
    jmp continueCalcCashDigit ; JMP --> TO CALCULATE ONLY ( 4 DIGIT CASH AMOUNT )


;WHEN THE USER PAY < 30 000
calcCashWithNot3:
    MOV AX,0000
    MOV DX,0000
    MOV AL,cashDigit5
    MOV BX,10000
    MUL BX
    mov cashAmount,AX
    mov cashDigit5,0

continueCalcCashDigit:
    MOV AX,0000
    MOV DX,0000
    MOV AL,cashDigit4
    MOV BX,1000
    MUL BX
    add cashAmount,AX

    MOV AX,0000
    MOV DX,0000
    MOV AL,cashDigit1
    MOV BL,100
    MUL bl
    add cashAmount,AX
    
    MOV AX,0000
    MOV AL,cashDigit2
    MOV BL,10
    MUL bl
    ADD cashAmount,AX
    
    MOV AX,0000
    MOV AL,cashDigit3
    ADD cashAmount,AX
  
    RET

cashPayment ENDP   

displayCashRemain PROC

;here display Cash : Rm CashAmount ( user pay amount )
    mov ah,09h
    lea dx,cashPaymentMsg2
    int 21h

	cmp maxPriceStatus,"0" ; CMP WHETHER TOTALPRICE > 99 999 
	je notdisplay6CashDigit ; JMP --> TotalPrice < 99 999



;	TOTALPRICE > 99 999 
	display6CashDigit:


	    mov ax,0000
		mov quo4,0
    	mov equo4,0
    	mov al,cashDigit5
    	add equo4,al

		mov bx,0000
		mov ah,02H
		mov dl,cashDigit6
		add dl,30h
		INT 21H

	
    	MOV AX,0000
    	mov ax,cashAmount
    	CALL displayPrice
		jmp continueDisplayWithoutMaxStatus

		
	notdisplay6CashDigit:

		mov ax,0000
		mov quo4,0
		mov equo4,0
		mov al,cashDigit5
		add equo4,al

		MOV AX,0000
		mov ax,cashAmount
		CALL displayPrice


		;restore the quo4 and equo4 back
		mov ax,0000
		mov al,quo4back
		mov quo4,al
		mov al,equo4back
		mov equo4,al



;display the remaining amount
;.dec2dec1
continueDisplayWithoutMaxStatus:
    mov ah,09h
    lea dx,cashPaymentMsg1
    int 21h
    
    
    mov ax, 0000
    mov ax, decrem2
    mov bx, 10
    mul bx
    add ax,decrem1

    cmp ax,0
    je ddecimal ; JMP --> when no floting point

	cmp maxPriceStatus,"0"
	je notMinusCashDigit6





	;display the change with floting point will start here
	;when reach the totalprice > 99 999
	sub cashAmount,1
	mov ax,0000
	mov al,cashDigit6 ;move 9 to al
	mov bl,10
	mul bl
	add cashDigit5,al ;6+90=96




    mov ax,0000
    sub cashDigit5,9; 
    mov ax,totalAfterTax ;15951
    sub cashAmount,ax ;39998 - 15951 = 24047
	jmp  displayCashREmain1

notMinusCashDigit6:
;decimal point display
    sub cashAmount,1
    mov ax,0000
    mov al,equo4
    sub cashDigit5,al
    mov ax,totalAfterTax
    sub cashAmount,ax


displayCashREmain1:


    mov equo4,0
    mov ax,0000
    mov al,cashDigit5
    add equo4,al

    mov ax,cashAmount
    call displayPrice
    cmp roudingStatus,"1"
    je displayRoundremainPoint
    jne displayRemainPoint
    displayRemainPoint:
   	 call remainPoint
   	 jmp displayCashRemainEnd
    displayRoundremainPoint:
   	 call RoundremainPoint
   	 jmp displayCashRemainEnd
    
    
;when not have dicimal places    
ddecimal:


	cmp maxPriceStatus,"0"
	je notMinusCashDigit61


	mov ax,0000
	mov al,cashDigit6 ;move 9 to al
	mov bl,10
	mul bl
	add cashDigit5,al ;6+90=96
    mov ax,0000
    sub cashDigit5,9
    mov ax,totalAfterTax
    sub cashAmount,ax

    mov quo4,0
    mov equo4,0
    mov ax,0000
    mov al,cashDigit5
    add equo4,al
    mov ax,cashAmount
    call displayPrice
		jmp displayCashRemainEnd



notMinusCashDigit61:
;decimal point display
;sub cashAmount,1
    mov ax,0000
    mov al,equo4
    sub cashDigit5,al
;	add cashDigit5,3
    mov ax,totalAfterTax
    sub cashAmount,ax
	mov quo4,0
    mov equo4,0
    mov ax,0000
    mov al,cashDigit5
    add equo4,al
    mov ax,cashAmount
    call displayPrice

displayCashRemainEnd:
    

    RET
    
    
    
    

    
displayCashRemain ENDP    
remainPoint PROC
    MOV AH,02h
    mov dl,DECIMALPOINT
    INT 21H
    
    mov ah,02h
    mov dx,9
    sub dx,rounddecrem2
    add dx,30h
    int 21h
    
    mov ah,02h
    mov dx,10
    sub dx,decrem1
    add dx,30h
    int 21h
    
    RET

remainPoint ENDP
RoundremainPoint PROC
    MOV AH,02h
    mov dl,DECIMALPOINT
    INT 21H
    
    mov ah,02h
    mov dx,10
    sub dx,Rounddecrem2
    add dx,30h
    int 21h
    
    mov ah,02h
    mov dx,0
    add dx,30h
    int 21h
    
    RET

RoundremainPoint ENDP
checkCashAmount proc




 
 cmp cashMinusStatus,"1"
 je calcCashMinusStatus
 cmp cashMinusStatus,"0"
 je calcCashNotMinusStatus



calcCashMinusStatus:


cmp maxPriceStatus,"0"
je notAddCashDigit6



;get total cashDigit
mov ax,0000
mov al, cashDigit5
add al, 3
add al,10
mov tempcashDigit5,al

;get total quo4
mov ax,0000
mov al,quo4
add al,equo4

jmp checkTheTempCashDigit5

notAddCashDigit6:
;get total cashDigit
mov ax,0000
mov al, cashDigit5
add al, 3
mov tempcashDigit5,al

;get total quo4
mov ax,0000
mov al,quo4
add al,equo4

checkTheTempCashDigit5:

cmp tempcashDigit5,al
je     Cashdigit5Equal
jb    cashNotEnough
ja    cashEnough




Cashdigit5Equal:


    mov dx, 0000
    mov ax, cashAmount
    sub ax,30000
    mov tempRemainder ,ax

    mov ax,0000
    mov al, quo4
    mov bx, 10000
    mul bx
    mov tempRemainder1,ax



    mov ax, totalAfterTax
    sub ax,tempRemainder1

    cmp tempRemainder,ax
    jae cashEnough
    jb cashNotEnough





calcCashNotMinusStatus:
    mov ax,totalAfterTax
    cmp cashAmount,ax
    jb cashNotEnough

    jmp cashEnough





cashEnough:

    mov cashNotEnoughStatus,"0"
    jmp endCheckCashAmount


cashNotEnough:
    mov cashNotEnoughStatus,"1"


endCheckCashAmount:
    RET





checkCashAmount ENDP
    
    
    

displayMenu PROC
    LEA DX, logo ;"----------ain Menu------------$"
    MOV AH,09H
    INT 21H
    
    
    LEA DX,MAINMENUMSG ;"------------Main Menu------------$"
    MOV AH,09H
    INT 21H
    
    RET
displayMenu ENDP
bookMenu PROC
    CALL clear
    LEA DX,BOOKLIST ; "------------BOOK LIST------------$"
    MOV AH,09H
    INT 21H
    
    RET
bookMenu ENDP
errormsg PROC
    LEA DX,ERROR1  ;"Please enter correct option!$"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H
    INT 21H
    
    RET
    
errormsg ENDP
newline PROC
    MOV AH,02H
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AX,0000
    
    RET
newline ENDP
clear PROC




    mov ax, 3
    int 10h
    RET

clear ENDP
    

;display the book quantity in the invoice
displayBookQuan PROC



 
    
    mov bl,10
    div BL
    mov bookQuanRem1,AH
    mov bookQuanQuo1,AL
    
    mov ax,0000
    mov bx,0000
    mov al,bookQuanQuo1
    mov bl,10
    div BL

    mov bookQuanRem2,AH
    mov bookQuanQuo2,AL


    

    mov ah,02h
    mov dl,bookQuanQuo2
    add dl,30h
    int 21h

    
    mov ah,02h
    mov dl,bookQuanRem2
    add dl,30h
    int 21h
    
    mov ah,02h
    mov dl,bookQuanRem1
    add dl,30h
    int 21h
    
    
    
    RET
    
displayBookQuan ENDP

displayPrice PROC
   	 


     MOV DX,0000
     MOV BX,10
     DIV BX
     MOV REM1,DX
     MOV QUO1,AX
    

     mov dx,0000
     mov ax,QUO1
     mov bx,10
     div bx
     MOV REM2,DX
     MOV QUO2,AX






     mov dx,0000
     mov ax,QUO2
     mov bx,10
     div bx
     MOV REM3,DX
     MOV QUO3,AX





     MOV Ax,0000
      mov ax,QUO3
     MOV BL,10
     DIV BL
     mov QUO4,AL
     MOV REM4,AH   



   


	 	MOV DL,QUO4
		add dl,equo4
		cmp dl,10
		ja calcEquo4
        je DISPLAYTEN
		jb continuedisplay

	 calcEquo4:
	 	mov ax,0000
		mov dx,0000
		mov AL,equo4
		add al,quo4
		mov BX,10
		div BX
		mov equo4rem1,ax
		mov equo4rem2,dx

		mov ah,02h
		MOV dx,equo4rem1
		add DX,30h
		int 21h

		mov ah,02h
		MOV DX,equo4rem2
		add dx,30h
		int 21h

		jmp continueDisplay2




	 DISPLAYTEN:
	 	mov ah,02h
		mov dl,"1"
		int 21h

		mov ah,02h
		mov dl,"0"
		int 21h
		jmp continueDisplay2




   
	continuedisplay:


	 MOV DL,QUO4
	 add dl,equo4
	 ADD DL,48
	 MOV AH,02H
	 INT 21H

	continueDisplay2:
     MOV DL,REM4
     ADD DL,48
     MOV AH,02H
     INT 21H


     MOV DX,REM3
     ADD DL,48
     MOV AH,02H
     INT 21H


     MOV DX,REM2
     ADD DL,48
     MOV AH,02H
     INT 21H

     MOV DX,REM1
     ADD DL,48
     MOV AH,02H
     INT 21H
    
     RET

displayPrice ENDP



;calculate the book price
bookprice PROC
    mov userQuan,0


getprice:
    mov ax,0000
    LEA DX,PROMOT2  ;"Please enter the book quantity : $"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H  ;input byte ( enter the book quantity)
    INT 21H
    
    
chkmin:
    cmp AL,30h
    jae chkmax
    jb error2
    
    
chkmax:
    cmp AL,39h
    jbe calculation
    ja error2
    
    
error2:
     MOV AH,09H ;display total amount
     LEA DX,DERROR
     INT 21H
     jmp getprice
    


calculation:
    sub al,30h
    mov userQuan,al

    
    cmp BOOKSLEC,"1"
    je addbook1quan
    cmp BOOKSLEC,"2"
    je addbook2quan
    cmp BOOKSLEC,"3"
    je addbook3quanBetweenCall
    cmp BOOKSLEC,"4"
    je addbook4quanBetweenCall
    cmp BOOKSLEC,"5"
    je bookpriceBetween1
    cmp BOOKSLEC,"6"
    je bookpriceBetween2
    cmp BOOKSLEC,"7"
    je bookpriceBetween3
    cmp BOOKSLEC,"8"
    je bookpriceBetween4
    cmp BOOKSLEC,"9"
    je bookpriceBetween5

addbook3quanBetweenCall:
    call addbook3quanBetween

addbook4quanBetweenCall:
    call addbook4quanBetween



addbook1quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,50
    MUL BX
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc

addbook2quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,65
    mul bx
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc
bookpriceBetween1:
    jmp addbook5quan
bookpriceBetween2:
    jmp addbook6quan
bookpriceBetween3:
    jmp addbook7quan
bookpriceBetween4:
    jmp addbook8quan
bookpriceBetween5:
    jmp addbook9quan
addbook5quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,150
    mul bx
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc


addbook6quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,200
    mul bx
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc


addbook7quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,1388
    MUL BX
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc

addbook8quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,1488
    mul bx
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc


addbook9quan:
    mov ax,totalprice
    mov temp,ax

    mov ax,0000
    mov al,userQuan
    mov bx,1888
    mul bx
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc







checkTotalprice:
    call checkPriceM999999
    cmp maxPriceStatus,"1"
    JE exceedAmount
    call checkPriceM30000
	call checkTaxPriceM100000

    CMP BOOKSLEC,"1"
    je addBook1Quantity
    CMP BOOKSLEC,"2"
    je addBook2Quantity
    CMP BOOKSLEC,"3"
    je addBook3Quantity
    CMP BOOKSLEC,"4"
    je addBook4Quantity
    CMP BOOKSLEC,"5"
    je addBook5Quantity
    CMP BOOKSLEC,"6"
    je addBook6QuantityBETWEEN
    CMP BOOKSLEC,"7"
    je addBook7QuantityBETWEEN
    CMP BOOKSLEC,"8"
    je addBook8QuantityBETWEEN
    CMP BOOKSLEC,"9"
    je addBook9QuantityBETWEEN

exceedAmount:
    mov ah,09h
    lea dx,maxPriceMsg
    int 21h
    mov ah,01h
    int 21h

    mov ax,temp
    mov TOTALPRICE,ax
    jmp continueCalc

addBook1Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK1QUAN,al
    add book1salesQuan,ax
    jmp continueCalc

addBook2Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK2QUAN,al
    add book2salesQuan,ax
    jmp continueCalc
addBook6QuantityBETWEEN:
    JMP addBook6Quantity
addBook3Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK3QUAN,al
    add book3salesQuan,ax
    jmp continueCalc

addBook7QuantityBETWEEN:
    JMP addBook7Quantity

addBook4Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK4QUAN,al
    add book4salesQuan,ax
    jmp continueCalc
addBook8QuantityBETWEEN:
    JMP addBook8Quantity

addBook5Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK5QUAN,al
    add book5salesQuan,ax
    jmp continueCalc

addBook9QuantityBETWEEN:
    JMP addBook9Quantity
addBook6Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK6QUAN,al
    add book6salesQuan,ax
    jmp continueCalc

addBook7Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK7QUAN,al
    add book7salesQuan,ax
    jmp continueCalc

addBook8Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK8QUAN,al
    add book8salesQuan,ax
    jmp continueCalc

addBook9Quantity:
    mov ax,0000
    mov al,userQuan
    add BOOK9QUAN,al
    add book9salesQuan,ax
    jmp continueCalc




continueCalc:
    
    call clear
    
    JMP purchaseMenu
    
bookprice ENDP

;display the tax amount including floting point
TAX PROC




    mov dx,0000
    mov bx,6
    mul bx


    

    mov bx,100
    div bx
    


    mov ttl,ax ;store integer RESULT
    mov decimal,dx ;store decimal RESULT

	mov dx,0000
	mov ax,0000
	mov al,equo4
	mov BX,6
	mul bx


	mov bx,100
	mul bx
	add ttl,ax
	

    ;reset the status
    mov roudingStatus,"0"


    mov dx,0000
    mov ax,decimal
    mov bx,10
    div bx
    
    mov decquo1,ax
    mov decrem1,dx
    
    mov dx,0000
    mov ax,decquo1
    mov bx,10
    div bx
    mov decrem2,dx
    mov Rounddecrem2,dx


    cmp decrem1, 0
    jne roudingDecPoint
    jmp calcInt

    
    

    roudingDecPoint:
   	 mov roudingStatus,"1"
   	 add Rounddecrem2,1
   	 mov Rounddecrem1,0
   	 cmp Rounddecrem2,10
   	 je addttl1

   	 jmp calcInt

    addttl1:
   	 add ttl,1
   	 mov Rounddecrem2,0


calcInt:



    mov dx,0000
    
    ;calc the integer quotient and remainder
    mov ax,ttl
    mov bx,10
    div bx
    
    mov ttlquo1,ax
    mov ttlrem1,dx
    
    mov dx,0000
    mov ax,ttlquo1
    mov bx,10
    div bx
    mov ttlrem2,dx
	mov ttlquo2,ax

    mov dx,0000
    mov ax,ttlquo2
    mov bx,10
    div bx
    mov ttlquo3,ax
    mov ttlrem3,dx


    mov dx,0000
    mov ax,ttlquo3
    mov bx,10
    div bx
    mov ttlquo4,ax
    mov ttlrem4,dx


    ;calc the integer quotient and remainder(end)

    


	taxEnd:
   	 RET

    
TAX ENDP


displayTax proc

    mov ah,02h
    mov dx,ttlrem4
    add dx,30h
    int 21h

    mov ah,02h
    mov dx,ttlrem3
    add dx,30h
    int 21h

    
    mov ah,02h
    mov dx,ttlrem2
    add dx,30h
    int 21h
    
    mov ah,02h
    mov dx,ttlrem1
    add dx,30h
    int 21h
    
    MOV AH,02h
    mov dl,DECIMALPOINT
    INT 21H
    
    mov ah,02h
    mov dx,decrem2
    add dx,30h
    int 21h
    
    mov ah,02h
    mov dx,decrem1
    add dx,30h
    int 21h

    ret
    

displayTax ENDP

;display the floting point value
point PROC
    MOV AH,02h
    mov dl,DECIMALPOINT
    INT 21H
    
    mov ah,02h
    mov dx,decrem2
    add dx,30h
    int 21h
    
    mov ah,02h
    mov dx,decrem1
    add dx,30h
    int 21h
    
    RET
point ENDP

;display the rounding floring value
Roundpoint PROC
    MOV AH,02h
    mov dl,DECIMALPOINT
    INT 21H

   	 
    mov ah,02h
    mov dx,Rounddecrem2
    add dx,30h
    int 21h
    
    mov ah,02h
    mov dx,Rounddecrem1
    add dx,30h
    int 21h

    
    RET
Roundpoint ENDP


JMPOUT1 proc
displayBook6:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK6QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK6
    INT 21H
    jmp book7quancheck
displayBook7:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK7QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK7
    INT 21H
    jmp book8quancheck
displayBook8:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK8QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK8
    INT 21H
    jmp book9quancheck
displayBook9:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK9QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK9
    INT 21H
    JMP bookAmountDisplayEnd

    RET
JMPOUT1 ENDP

bookAmountDisplay proc
cmp BOOK1QUAN,0
ja  displayBook1
jbe book2quancheck


book2quancheck:
cmp BOOK2QUAN,0
ja  displayBook2
jbe book3quancheck

displayBook6BETWEEN:
 JMP displayBook6

displayBook7BETWEEN:
 JMP displayBook7

book3quancheck:
cmp BOOK3QUAN,0
ja  displayBook3
jbe book4quancheck

book4quancheck:
cmp BOOK4QUAN,0
ja  displayBook4BETWEEN
jbe book5quancheck

book5quancheck:
cmp BOOK5QUAN,0
ja  displayBook5BETWEEN
jbe book6quancheck

book6quancheck:
cmp BOOK6QUAN,0
ja  displayBook6BETWEEN
jbe book7quancheck

book7quancheck:
cmp BOOK7QUAN,0
ja  displayBook7BETWEEN
jbe book8quancheck



book8quancheck:
cmp BOOK8QUAN,0
ja  displayBook8
jbe book9quancheck


displayBook5BETWEEN:
    jmp displayBook5
book9quancheck:
cmp BOOK9QUAN,0
ja  displayBook9
jbe bookAmountDisplayEndBetween

call JMPOUT1

displayBook1:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK1QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK1
    INT 21H
    jmp book2quancheck
displayBook4BETWEEN:
    JMP displayBook4
displayBook2:
    call newline   	 
    call middlespace
    mov ax,0000
    mov al,BOOK2QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK2
    INT 21H
    jmp book3quancheck
bookAmountDisplayEndBetween:
    jmp bookAmountDisplayEnd
displayBook3:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK3QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK3
    INT 21H
    jmp book4quancheck
displayBook4:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK4QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK4
    INT 21H
    jmp book5quancheck

displayBook5:
    call newline
    call middlespace
    mov ax,0000
    mov al,BOOK5QUAN
    call displayBookQuan
    MOV AH,09H
    LEA DX,BOOK5
    INT 21H
    jmp book6quancheck


bookAmountDisplayEnd:
    ret
bookAmountDisplay ENDP

addbook3quanBetween proc

addbook3quan:
    mov ax,totalprice
    mov temp,ax
    mov ax,0000
    mov bx,000
    mov al,userQuan
    mov bx,80
    mul bx
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc

addbook3quanBetween endp

addbook4quanBetween proc

addbook4quan:
    mov ax,totalprice
    mov temp,ax
    mov ax,0000
    mov bx,000
    mov al,userQuan
    mov bx,100
    MUL BX
    ADD TOTALPRICE,ax
    jmp checkTotalprice
    jmp continueCalc

addbook4quanBetween endp


MAIN PROC
	mov ax, @data
	mov ds, ax

START:

;-OUTPUT STRING: 09H (MMSG)
call clear
 mov ah, 09h
 lea dx, logo
 int 21h
MOV AH,09H
LEA DX,MMSG
INT 21H


;-INPUT BYTE: 01H, Move Input (AL) to USEL
MOV AX,0
MOV AH,01H
INT 21H
MOV USEL,AL


CSEL1:
CMP USEL,'1'
JE REG
JNE CSEL2

CSEL2:

CMP USEL,'2'
JE LOGIN1
JNE CSEL3

CSEL3:

CMP USEL,'3'
je exitProgramProc
JNE ERMENU


exitProgramProc:
    call exitProgram

ERMENU:
MOV AH, 09H
LEA DX, EMMSG
INT 21H
CALL CLEAR
JMP START



LOGIN1:
 JMP LOGIN
;---------------------------------------------------------------REGISTER
REG:
  CALL CLEAR
  MOV AH,09H 
  LEA DX,REGLOGO
  INT 21H
  MOV AH,09H
  LEA DX,RUMSG
  INT 21H

  MOV AH,0AH
  LEA DX,RUSER
  INT 21H
 

PASSMSG:
  MOV AH,09H
  LEA DX,RPMSG
  INT 21H
PASSREG:
 
  mov cx,8
  mov si,0

PASSREGStart:
  MOV AX,0
  MOV AH,07H
  INT 21H
  MOV RPASS[SI],AL

  MOV AH,2
  MOV DL,'*'
  INT 21H
 
  inc SI

  LOOP PASSREGStart
CHKUSER:
    MOV AL,RUDATA[0]
    CMP AL,0DH
    JE ERUSER
    JNE PRCOUNT1
ERUSER:
    MOV AX,0
    MOV AH,09H
    LEA DX,ERRUSER
    INT 21H
    JMP CONT2
PRCOUNT1:
  MOV CX,0
  MOV SI,0
  MOV DI,0
  MOV AX,0
  CMP PCOUNT,1
  JE SAVEU1
  JNE PRCOUNT2
PRCOUNT2:
  CMP PCOUNT,2
  JE SAVEU2
  JNE PRCOUNT3
PRCOUNT3:
  CMP PCOUNT,3
  JE SAVEU3BETWEEN
  JNE FULACC

FULACC:
  MOV AH,09H
  LEA DX,ERRCOMP
  INT 21H
  mov ah,01h
  int 21h
  JMP START

SAVEU1:
  CMP RUSER[DI],0DH
  JE SAVEP1
  MOV AL,RUDATA[DI]
  MOV ACC1[DI],AL
SUSER1:
  INC DI
  JMP SAVEU1
SAVEP1:
  CMP SI,8
  JE SUCR1
  MOV AL,RPASS[SI]
  MOV PASS1[SI],AL
SPASS1:
  INC SI
  JMP SAVEP1
SUCR1:
  INC PCOUNT
  MOV AH,09H
  LEA DX,RSMSG1
  INT 21H
  mov ah,01h
  int 21h
  MOV DI,0
  MOV SI,0
  JMP RESETNAME1

RESETNAME1:
  CMP DI,11
  JE RESETPASS1
  MOV RUDATA[DI],0
  INC DI
  LOOP RESETNAME1

RESETPASS1:
    CMP SI,8
    JE START2
    MOV RPASS[SI],0
    INC SI
    LOOP RESETPASS1

SAVEU3BETWEEN:
    JMP SAVEU3
START2:
  CALL START
;--------------------SAVE ACC2
SAVEU2:
  CMP RUSER[DI],0DH
  JE SAVEP2
  MOV AL,RUDATA[DI]
  MOV ACC2[DI],AL
SUSER2:
  INC DI
  JMP SAVEU2
SAVEP2:
  CMP SI,8
  JE SUCR2
  MOV AL,RPASS[SI]
  MOV PASS2[SI],AL
SPASS2:
  INC SI
  JMP SAVEP2
SUCR2:
  INC PCOUNT
  MOV AH,09H
  LEA DX,RSMSG2
  INT 21H
  mov ah, 01h
  int 21h
  MOV DI,0
  MOV SI,0
  JMP RESETNAME2
RESETNAME2:
  CMP DI,11
  JE RESETPASS2
  MOV RUDATA[DI],0
  INC DI
  LOOP RESETNAME2

RESETPASS2:
    CMP SI,8
    JE START4
    MOV RPASS[SI],0
    INC SI
    LOOP RESETPASS2
START4:
  CALL START
;-------------------------------SAVE ACC3
SAVEU3:
  CMP RUSER[DI],0DH
  JE SAVEP3
  MOV AL,RUDATA[DI]
  MOV ACC3[DI],AL
SUSER3:
  INC DI
  JMP SAVEU3
SAVEP3:
  CMP SI,8
  JE SUCR3
  MOV AL,RPASS[SI]
  MOV PASS3[SI],AL
SPASS3:
  INC SI
  JMP SAVEP3
SUCR3:
  INC PCOUNT
  MOV AH,09H
  LEA DX,RSMSG3
  INT 21H
  mov ah, 01h
  int 21h
  JMP START5

START5:
  CALL START
;------------------------CONTINUE
CONT2:
  MOV AH,09H
  LEA DX,CONMSG
  INT 21H
  MOV AH,01H
  INT 21H
  MOV CONTI1,AL
CHKCONY1:
  MOV AX,0
  MOV AL,CONTI1
  CMP AL,59H ;Y in hexa
  JE USERREG1
  JNE CHKCONY2

CHKCONY2:
  MOV AX,0
  MOV AL,CONTI1
  CMP AL,79H ;y in hexa
  JE USERREG1
  JNE CHKCONN1

USERREG1:
  CALL REG

CHKCONN1:
  MOV AX,0
  MOV AL,CONTI1
  CMP AL,4EH ;N in hexa
  JE START1
  JNE CHKCONN2
CHKCONN2:
  MOV AX,0
  MOV AL,CONTI1
  CMP AL,6EH ; n in hexa
  JE START1
  JNE ERRCON
START1:
  CALL START
ERRCON:
  MOV AH,09H
  LEA DX,ERMSG1
  INT 21H
  JMP CONT2
 
  ;-------------------------------------
LOGIN:
CALL CLEAR
;-OUTPUT STRING: 09H (LMSG1)
MOV AH,09H
LEA DX,LOGLOGO
INT 21H

MOV AH,09H
LEA DX,LMSG1
INT 21H


MOV AH,0AH
LEA DX,LUSER
INT 21H


;-Output String: 09H (LMSG2)
MOV AH,09H
LEA DX,LMSG2
INT 21H


mov cx,8
MOV SI,0

GETPSW:
  MOV AX,0
  MOV AH,07H
  INT 21H
  MOV LPASS[SI],AL


  MOV AH,2
  MOV DL,'*'
  INT 21H

  inc SI

  ; CMP LPASS,0DH
  ; JE CHKN
  ; JNE GETPSW
 
  LOOP GETPSW
;---------------------------------------------------------------


 MOV SI,0 ;FOR NAME
 MOV DI,0 ;FOR PASSWORD

CHKN1:

 CMP SI,11
 JE STARTchkp1
 MOV AL,ACC1[SI]
 CMP AL,LUDATA[SI]
 JE CHKNAME1
 jne RESET1
CHKNAME1:
 inc SI
 JMP CHKN1

STARTchkp1:
  mov cx,0
  MOV DI,0
  JMP CHKP1
RESET1:
	MOV CX,0
	MOV SI,0
	JMP CHKN2
;---------------------------------------------------------------
CHKN2:
 CMP SI,11
 JE STARTCHKP2
 MOV AL,ACC2[SI]
 CMP AL,LUDATA[SI]
 JE CHKNAME2
 jne RESET2
CHKNAME2:
 inc SI
 JMP CHKN2

STARTCHKP2:
  mov cx,0
  MOV DI,0
  JMP CHKP2
RESET2:
	MOV CX,0
	MOV SI,0
	JMP CHKN3
;---------------------------------------
CHKN3:
 CMP SI,11
 JE STARTCHKP3
 MOV AL,ACC3[SI]
 CMP AL,LUDATA[SI]
 JE CHKNAME3
 JNE RESET3
CHKNAME3:
 inc SI
 JMP CHKN3
RESET3:
	MOV CX,0
	MOV SI,0
	JMP ERLOG
STARTCHKP3:
  mov cx,0
  MOV DI,0
  JMP CHKP3

CHKP1:

 CMP DI,8
 JE WELCOME2
 mov ax,0000
 MOV AL,PASS1[DI]
 CMP AL,LPASS[DI]

  jne ERLOG
  inc DI
  LOOP CHKP1
WELCOME2:
 CALL WELCOME3
CHKP2:

 CMP DI,8
 JE WELCOME2
 mov ax,0000
 MOV AL,PASS2[DI]
 CMP AL,LPASS[DI]

  jne ERLOG
  inc DI
  LOOP CHKP2

CHKP3:

 CMP DI,8
 JE WELCOME4
 mov ax,0000
 MOV AL,PASS3[DI]
 CMP AL,LPASS[DI]

  jne ERLOG
  inc DI
  LOOP CHKP3
;---------------------------------------------------------------
WELCOME4:
 CALL WELCOME3
ERLOG:
 MOV AH,09H
 LEA DX,IMSG
 INT 21H
 JMP RESETLUSER1
RESETLUSER1:
  CMP DI,11
  JE RESETLPASS1
  MOV LUDATA[DI],0
  INC DI
  LOOP RESETLUSER1
RESETLPASS1:
    CMP SI,8
    JE CONT1
    MOV LPASS[SI],0
    INC SI
    LOOP RESETLPASS1
CONT1:
  MOV AH,09H
  LEA DX,CONMSG
  INT 21H
  MOV AH,01H
  INT 21H
  MOV CONTI2,AL
CHKY1:
  MOV AX,0
  MOV AL,CONTI2
  CMP AL,59H ;Y in hexa
  JE LOGIN2
  JNE CHKY2

CHKY2:
  MOV AX,0
  MOV AL,CONTI2
  CMP AL,79H ;y in hexa
  JE LOGIN2
  JNE CHKNN1

LOGIN2:
  CALL LOGIN

CHKNN1:
  MOV AX,0
  MOV AL,CONTI2
  CMP AL,4EH ;N in hexa
  JE START7
  JNE CHKNN2
CHKNN2:
  MOV AX,0
  MOV AL,CONTI2
  CMP AL,6EH ; n in hexa
  JE START7
  JNE ERRCON2
START7:
  CALL START
ERRCON2:
  MOV AH,09H
  LEA DX,ERMSG2
  INT 21H
  JMP CONT1


 
WELCOME3:
 MOV AH,09H
 LEA DX,VMSG
 INT 21H
 mov ah,01h
int 21h
 MOV DI,0
 MOV SI,0
RESETLUSER2:
  CMP DI,11
  JE RESETLPASS2
  MOV LUDATA[DI],0
  INC DI
  LOOP RESETLUSER2
RESETLPASS2:
    CMP SI,8
    JE mainMenu
    MOV LPASS[SI],0
    INC SI
    LOOP RESETLPASS2

;----------
 INC COUNT
 CMP COUNT,3
 JE mainMenu


    
    

    
mainMenu:
    CALL clear
    call displayMenu

  
    LEA DX,PROMPT1 ;"Please select the option : $"
    MOV AH,09H
    INT 21H
    
    MOV AH,01H ; input byte (ask the user to select the option)
    INT 21H
    
    
    CMP AL,'1'
    JE purchaseMenu
    CMP AL,'2'
    JE BETWEEN2
    cmp al,'3'
    je BETWEEN3
    CMP AL,'0'
    JE STARTsec

    call errormsg
    
    JMP mainMenu

    STARTsec:
     call resetVariable
   	 call MAIN
    
    
purchaseMenu:

    call DbookCategoryMenu



BETWEEN1:
    JMP Exit
    
BETWEEN2:
    jmp PROCEEDPAYMENT
    
BETWEEN3:
	jmp Sales
    







PROCEEDPAYMENT:

    cmp TOTALPRICE,0
    jbe totalPriceNone
    ja continuePayment
    
totalPriceNone:
    MOV AH,09H
    lea dx,paymentMsg
    int 21H

    mov ah,01h
    int 21H

    jmp mainMenu

    
continuePayment:

    mov ax, TOTALPRICE
    call TAX
    MOV AX,TOTALPRICE
    add ax,ttl
    mov totalAfterTax,ax
    call clear
    call paymentMethod
    ;

    MOV AX,TOTALPRICE


    cmp cashStatus,"1"
    je callcheckCashAmount
    jne invoiceDisplay

callcheckCashAmount:
    call checkCashAmount
    cmp cashNotEnoughStatus,"1"
    je cashAmountNotEnoughBETWEEN



invoiceDisplay:

    mov ah, 09H
    lea dx, paymentMsg2
    int 21h

    mov ah,09h
    lea dx,clearMsg
    int 21h
    mov ah,01H
    int 21h

    call clear

    mov ah,09h
    lea dx,address
    int 21h
    
	mov ah,09h
    lea dx,INVOICEMSG
    int 21h
    
    call bookAmountDisplay



invoice: ; display the totalprice ,tax amount , subtotal


    ;display price before the tax
    mov ah,09h
    lea dx,PROMOT5
    int 21h

    MOV AX,TOTALPRICE
    call displayPrice
    
    ;display the price after tax
    mov ah,09h
    lea dx,PROMOT4
    int 21h
    call displayTax
    
;display the subtotal
    mov ah,09h
    lea dx,PROMOT6
    int 21h

    mov ax,totalAfterTax
    call displayPrice
    caLL point


    mov ah, 09h
    lea dx,PROMOT10
    int 21h

    mov ax,totalAfterTax
    call displayPrice
    caLL Roundpoint
    
    mov ah,09h
    lea dx,INVOICEEND
    int 21h
    
    
    cmp cashStatus,"1"
    je cashRemainDisplay
    jne paymentEnd
cashAmountNotEnoughBETWEEN:
    JMP cashAmountNotEnough
    
cashRemainDisplay:
    call displayCashRemain
    
    
paymentEnd:    

    call resetVariable
    MOV AH,01H
    INT 21H
    jmp mainMenu


cashAmountNotEnough:
    MOV AH,09H
    LEA DX,cashPaymentMsg3
    INT 21H

    mov ah,01H
    int 21h

    jmp PROCEEDPAYMENT




sales:
    call salesReportCalc
    call salesReportDisplay
    JMP mainMenu

    


    
    

    

    

    
    

exit:
	mov ah, 4Ch    
	int 21h  	 
    





MAIN ENDP
  END MAIN




