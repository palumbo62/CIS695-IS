program-id. ListStudenAdmRecords as "ListStudenAdmRecords.Program1".

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT StudentFile ASSIGN TO "C:\Users\peebs\data\IDXSTUDADM.DAT"
    ORGANIZATION IS INDEXED   
    ACCESS MODE IS SEQUENTIAL
    RECORD KEY IS StudentId
        WITH NO DUPLICATES
    FILE STATUS IS RecordStatus.

DATA DIVISION.
FILE SECTION.
FD StudentFile.
01 StudentRec.
    88 EndOfFile VALUE HIGH-VALUE.
    02 StudentId       PIC 9(5).
    02 StudentName.
       03 Lastname     PIC X(20).
       03 Firstname    PIC X(15).
       03 Middlename   PIC X(15).
    02 DateOfBirth.
       03 BirthYear    PIC 9(4).
       03 BirthMonth   PIC 9(2).
       03 BirthDay     PIC 9(2).
    02  StudentSSN      PIC 9(9).
    02  Gender          PIC X.
    02  StudentAddress  PIC X(30).
    02  StudentCity     PIC X(20).
    02  StudentState    PIC X(2).

WORKING-STORAGE SECTION.
01 RecordStatus         PIC X(2).
01 EOF                  PIC X VALUE 'N'.
01 RequiredKey          PIC 9.

PROCEDURE DIVISION.
Begin.
    OPEN INPUT StudentFile.

    PERFORM Read-Input-File UNTIL EOF = 'Y'. 

    DISPLAY "End of Data - Press any key to terminate..." WITH NO ADVANCING.
    ACCEPT RequiredKey.
    	    
    CLOSE StudentFile.

    STOP RUN.

Read-Input-File. 
    READ StudentFile INTO StudentRec 
         AT END MOVE 'Y' TO EOF. 

    IF EOF NOT = 'Y'
        DISPLAY "StudentID:  " & StudentId
        DISPLAY "Lastname:   " & Lastname
        DISPLAY "Firstname:  " & Firstname
        DISPLAY "Middlename: " & Middlename
        DISPLAY "SSN:        " & StudentSSN
        DISPLAY "-------------"
    END-IF

END PROGRAM ListStudenAdmRecords.
