class-id StudentAdminWFA.StudentAdminForm is partial
            inherits type System.Windows.Forms.Form.

environment division.

input-output section.
file-control.
    
select StudentAdminMasterFile assign to "C:\Users\peebs\data\IDXSTUDADM.DAT"
    organization is indexed
    access mode is random
    record key is studentId
        with no duplicates
    file status is RecordStatus.
        
data division.
file section.
 
FD  StudentAdminMasterFile.
01 studentAdmRec.
    02 studentId       PIC 9(5).
    02 StudentName.
       03 Lastname     PIC X(20).
       03 Firstname    PIC X(15).
       03 Middlename   PIC X(15).
    02 DateOfBirth.
       03 BirthYear    PIC 9(4).
       03 BirthMonth   PIC 9(2).
       03 BirthDay     PIC 9(2).
    02 StudentSSN      PIC 9(9).
    02 Gender          PIC X.
       88 Male         VALUE 'M'.
       88 Female       VALUE 'F'.
    02 StudentAddress  PIC X(30).
    02 StudentCity     PIC X(20).
    02 StudentState    PIC X(2).
    02 StudentZipCode  PIC 9(5).

WORKING-STORAGE SECTION.
01  RecordStatus       PIC 9(2).
    88 RecordFound     VALUE 00.
    88 RecordDupKey    VALUE 22.
    88 RecordNotFound  VALUE 23.

method-id NEW.
procedure division.
    invoke openStudentAdminMaster
    open input StudentAdminMasterFile

    invoke self::InitializeComponent
    goback.
end method.

method-id copyDataFromRecordToForm final private.
procedure division.
    move Lastname to studentLastNameInp::Text
    move Firstname to studentFirstNameInp::Text
    move Middlename to studentMiddleNameInp::Text
    move StudentSSN to studentSsnInp::Text
            
    if Gender = 'M'
        move true to studentGenderMaleInp::Checked
        move false to studentGenderFemaleInp::Checked
    else
        move false to studentGenderMaleInp::Checked
        move true to studentGenderFemaleInp::Checked
    end-if

    move StudentAddress to studentAddressInp::Text
    move StudentCity to studentCityInp::Text
    move StudentState to studentStateInp::Text
    move StudentZipCode to studentZipCodeInp::Text
end method.

method-id copyDataFromFormToRecord final private.
local-storage section.
01 ls-date  type DateTime.

procedure division.
    try
*       Populate the record to add
        set studentId to type System.Convert::ToInt16(studentIdInp::Text)

        set Lastname to studentLastNameInp::Text
        set Firstname to studentFirstNameInp::Text
        set Middlename to studentMiddleNameInp::Text
        set studentSSN to type System.Convert::ToInt64(studentSsnInp::Text)
            
        if studentGenderMaleInp::Checked = true
            set Gender to Male
        else
            set Gender to Female
        end-if

*       Set date of birth
        set ls-date to studentDateOfBirthInp::Value
        set BirthYear to ls-date::Year
        set BirthMonth to ls-date::Month
        set BirthDay to ls-date::Day

        set StudentAddress to studentAddressInp::Text
        set StudentCity to studentCityInp::Text
        set StudentState to studentStateInp::Text
        set StudentZipCode to type System.Convert::ToInt32(studentZipCodeInp::Text)

    catch
        invoke type MessageBox::Show(exception-object::Message)

end method.

method-id openStudentAdminMaster final private.
procedure division.
    try
        open i-o StudentAdminMasterFile
    catch  
        invoke type MessageBox::Show("Failed to open Student Admin Master file")
        goback
    end-try
end method.

method-id label6_Click final private.
procedure division using by value sender as object e as type System.EventArgs.
end method.

method-id dateTimePicker1_ValueChanged final private.
procedure division using by value sender as object e as type System.EventArgs.
end method.

method-id button2_Click final private.
procedure division using by value sender as object e as type System.EventArgs.
    set self::DialogResult to type DialogResult::OK.
    close StudentAdminMasterFile.
    invoke self::Close().
end method.

method-id clearBtn_Click final private.
procedure division using by value sender as object e as type System.EventArgs.
*    clear all fields
    move spaces to studentidinp::Text.
    move spaces to studentlastnameinp::Text.
    move spaces to studentfirstnameinp::Text.
    move spaces to studentmiddlenameinp::Text.
    move spaces to studentssninp::Text.
    move spaces to studentaddressinp::Text.
    move spaces to studentcityinp::Text.
    move spaces to studentstateinp::Text.
    move spaces to studentZipCodeInp::Text.
    move true   to studentGenderFemaleInp::Checked.
    move false  to studentGenderMaleInp::Checked.
end method.

method-id queryBtn_Click final private.
procedure division using by value sender as object e as type System.EventArgs.
    try
        set studentId to type System.Convert::ToInt16(studentIdInp::Text)

        read StudentAdminMasterFile
            key is studentId
        end-read

        if RecordFound
*           Copy data from the record to the GUI form
            invoke copyDataFromRecordToForm
            
*>             move Lastname to studentLastNameInp::Text
*>             move Firstname to studentFirstNameInp::Text
*>             move Middlename to studentMiddleNameInp::Text
*>             move StudentSSN to studentSsnInp::Text
*>             
*>             if Gender = 'M'
*>                 move true to studentGenderMaleInp::Checked
*>                 move false to studentGenderFemaleInp::Checked
*>             else
*>                 move false to studentGenderMaleInp::Checked
*>                 move true to studentGenderFemaleInp::Checked
*>             end-if
*> 
*>             move StudentAddress to studentAddressInp::Text
*>             move StudentCity to studentCityInp::Text
*>             move StudentState to studentStateInp::Text
*>             move StudentZipCode to studentZipCodeInp::Text
*>             
        else
            invoke type MessageBox::Show("Student ID: '" & studentId & "' Not found in Database!'")
        end-if

    catch 
        invoke type MessageBox::Show(exception-object::Message)

    finally

    end-try

end method.

method-id addBtn_Click final private.
local-storage section.
01 ls-date  type DateTime.

procedure division using by value sender as object e as type System.EventArgs.
    try
*>      copy the data from the GUI Form to the Record
        invoke copyDataFromFormToRecord
*> * Populate the record to add
*>         set studentId to type System.Convert::ToInt16(studentIdInp::Text)
*> 
*>         set Lastname to studentLastNameInp::Text
*>         set Firstname to studentFirstNameInp::Text
*>         set Middlename to studentMiddleNameInp::Text
*>         set studentSSN to type System.Convert::ToInt64(studentSsnInp::Text)
*>             
*>         if studentGenderMaleInp::Checked = true
*>             set Gender to Male
*>         else
*>             set Gender to Female
*>         end-if
*> 
*> * Set date of birth
*>         set ls-date to studentDateOfBirthInp::Value
*>         set BirthYear to ls-date::Year
*>         set BirthMonth to ls-date::Month
*>         set BirthDay to ls-date::Day
*> 
*>         set StudentAddress to studentAddressInp::Text
*>         set StudentCity to studentCityInp::Text
*>         set StudentState to studentStateInp::Text
*>         set StudentZipCode to type System.Convert::ToInt32(studentZipCodeInp::Text)
            
*   write the record to the database
        write studentAdmRec
            invalid key display "RecordStatus:- ", RecordStatus
        end-write

        if RecordDupKey
            invoke type MessageBox::Show("Student ID: " & studentId & " exists.  Enter a unique Id")
        end-if

    catch
        invoke type MessageBox::Show(exception-object::Message)
        
    finally
        if RecordFound
            invoke type MessageBox::Show("Student ID: " & studentId & " successfully added!")
        end-if

end method.

end class.
