*-----------------------------------------------------------
* Title      : Read File
* Written by : Akshatha Vasant Hegde
* Date       : 5/5/22
* Description: Assembly 3 Project
*-----------------------------------------------------------
START   ORG    $1000

    LEA     filename, a1  ;moves file to a1
    MOVE    #51, d0
    TRAP    #15

    MOVE.L  #filesize, d2
    LEA     buffer, a1
    MOVE    #53, d0
    TRAP    #15
        
    SIMHALT *halts sim

    ORG     $2000

filename    dc.b    'TheFile.txt',0
buffer      ds.b    80
filesize    dc.b    80

        END     START







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
