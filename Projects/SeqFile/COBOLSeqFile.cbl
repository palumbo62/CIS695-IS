       
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  SeqWrite.
       AUTHOR.    Michael Coughlan with modifications by Jon Clark.
      * Example program showing how to create a sequential file
      * using    the ACCEPT and the WRITE verbs.
      * Note:    In this version of COBOL pressing the Carriage Return (CR)
      * without entering any data results in StudentDetails being filled
      * with spaces.


       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSIGN TO "C:\Users\peebs\data\STUDENTS.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentDetails.
           02  StudentId       PIC 9(6).
           02  StudentName.
               03 Lastname     PIC X(12).
               03 Firstname    PIC X(10).
               03 Middlename   PIC X(10).
           02  DateOfBirth.
               03 YOBirth      PIC 9(4).
               03 MOBirth      PIC 9(2).
               03 DOBirth      PIC 9(2).
           02  CourseCode      PIC X(4).
           02  Gender          PIC X.

       PROCEDURE DIVISION.
       Begin.
           OPEN OUTPUT StudentFile
           DISPLAY "Enter student details using template below."
           DISPLAY "Enter NO data to end input."

           PERFORM GetStudentDetails
           PERFORM UNTIL StudentDetails = SPACES
               WRITE StudentDetails
               PERFORM GetStudentDetails
           END-PERFORM
           CLOSE StudentFile
           STOP RUN.

       GetStudentDetails.
           DISPLAY "Enter - SID, Surname, Initials, DOB, Course, Gender"
           DISPLAY "NNNNNNLLLLLLLLLLLLFFFFFFFFFFMMMMMMMMMMYYYYMMDDCCCCG"
           ACCEPT  StudentDetails.  