       class-id StudentAdminWFA.StudentAdminForm is partial
                 inherits type System.Windows.Forms.Form.
       
       working-storage section.
          01 StudentDetails.
           02  StudentId       PIC 9(10).
           02  StudentName.
               03 Lastname     PIC X(20).
               03 Firstname    PIC X(15).
               03 Middlename   PIC X(15).
           02  DateOfBirth.
               03 YOBirth      PIC 9(4).
               03 MOBirth      PIC 9(2).
               03 DOBirth      PIC 9(2).
           02  Gender          PIC X.
           02  StudentAddress  PIC X(30).
           02  StudentCity     PIC X(20).
           02  StudentState    PIC X(2).


       method-id NEW.
       procedure division.
           invoke self::InitializeComponent
           goback.
       end method.

       method-id label6_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id dateTimePicker1_ValueChanged final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id button2_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set self::DialogResult to type DialogResult::OK
           invoke self::Close()
       end method.

       method-id queryBtn_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke type MessageBox::Show("QueryButton").
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
           move false to studentGenderFemaleInp::Checked.
           move false to studentGenderMaleInp::Checked.
       end method.
             
       end class.
