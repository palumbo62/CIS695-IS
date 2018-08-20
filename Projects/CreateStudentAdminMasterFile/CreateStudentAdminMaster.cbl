       IDENTIFICATION DIVISION.
       PROGRAM-ID.  Seq2Index.
       AUTHOR.  Michael Coughlan with modifications by Jon Clark.
      * Creates an indexed file  from a sequential file.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT StudentFile ASSIGN TO "C:\Users\peebs\data\IDXSTUDADM.DAT"
           ORGANIZATION IS INDEXED   
           ACCESS MODE IS RANDOM
           RECORD KEY IS StudentId
               WITH NO DUPLICATES
           FILE STATUS IS RecordStatus.

       SELECT SeqStudentFile ASSIGN TO "C:\Users\peebs\data\SEQSTUDADM.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentRec.
           02  StudentId       PIC 9(5).
           02  StudentName.
               03 Lastname     PIC X(20).
               03 Firstname    PIC X(15).
               03 Middlename   PIC X(15).
           02  DateOfBirth.
               03 BirthYear    PIC 9(4).
               03 BirthMonth   PIC 9(2).
               03 BirthDay     PIC 9(2).
           02  StudentSSN      PIC 9(9).
           02  Gender          PIC X.
           02  StudentAddress  PIC X(30).
           02  StudentCity     PIC X(20).
           02  StudentState    PIC X(2).


       FD SeqStudentFile.
       01 SeqStudentRec.
           88  EndOfFile          VALUE HIGH-VALUES.
           02  SeqStudentId       PIC 9(5).
           02  SeqStudentName.
               03 SeqLastname     PIC X(20).
               03 SeqFirstname    PIC X(15).
               03 SeqMiddlename   PIC X(15).
           02  SeqDateOfBirth.
               03 SeqBirthYear    PIC 9(4).
               03 SeqBirthMonth   PIC 9(2).
               03 SeqBirthDay     PIC 9(2).
           02  SEQStudentSSN      PIC 9(9).
           02  SeqGender          PIC X.
           02  SeqStudentAddress  PIC X(30).
           02  SeqStudentCity     PIC X(20).
           02  SeqStudentState    PIC X(2).

       
       WORKING-STORAGE SECTION.
       01  RecordStatus          PIC X(2).

       PROCEDURE DIVISION.
       Begin.
           OPEN INPUT SeqStudentFile.
           OPEN OUTPUT StudentFile.

           READ SeqStudentFile 
               AT END SET EndOfFile TO TRUE
           END-READ.

           PERFORM UNTIL EndOfFile
               WRITE StudentRec FROM SeqStudentRec
                   INVALID KEY DISPLAY "RecordStatus:- ", RecordStatus
               END-WRITE

               READ SeqStudentFile 
                   AT END SET EndOfFile TO TRUE
               END-READ
           END-PERFORM.

           CLOSE StudentFile, SeqStudentFile.

           STOP RUN.