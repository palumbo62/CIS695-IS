       IDENTIFICATION DIVISION.
       PROGRAM-ID. Hello-World.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  RM-COBOL.
       OBJECT-COMPUTER.  RM-COBOL.

       DATA DIVISION.
       
       FILE SECTION.
       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY " " line 1 position 1 erase eos.
           DISPLAY "Hello World" line 15 position 10.
           STOP RUN.
       MAIN-LOGIC-EXIT.
           EXIT.    

       