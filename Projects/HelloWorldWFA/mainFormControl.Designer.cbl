       class-id HelloWorldWFA.mainFormControl is partial
                 inherits type System.Windows.Forms.Form.
       
       01 button1 type System.Windows.Forms.Button.
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 label5 type System.Windows.Forms.Label.
       01 label4 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 eventLog1 type System.Diagnostics.EventLog.
       01 label6 type System.Windows.Forms.Label.
       01 label7 type System.Windows.Forms.Label.
       01 label8 type System.Windows.Forms.Label.
       01 label1 type System.Windows.Forms.Label.
       01 clearButton type System.Windows.Forms.Button.
       01 addButton type System.Windows.Forms.Button.
       01 studentId type System.Windows.Forms.TextBox.
       01 courseId type System.Windows.Forms.TextBox.
       01 studentMiddleName type System.Windows.Forms.TextBox.
       01 studentGenderFemale type System.Windows.Forms.RadioButton.
       01 studentGenderMale type System.Windows.Forms.RadioButton.
       01 studentDOB type System.Windows.Forms.DateTimePicker.
       01 studentFirstName type System.Windows.Forms.TextBox.
       01 studentLastName type System.Windows.Forms.TextBox.
       01 exitButton type System.Windows.Forms.Button.
       01 findButton type System.Windows.Forms.Button.
       01 deleteButton type System.Windows.Forms.Button.
       01 components type System.ComponentModel.IContainer.
      
      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set button1 to new System.Windows.Forms.Button
       set studentId to new System.Windows.Forms.TextBox
       set groupBox1 to new System.Windows.Forms.GroupBox
       set label8 to new System.Windows.Forms.Label
       set label1 to new System.Windows.Forms.Label
       set courseId to new System.Windows.Forms.TextBox
       set clearButton to new System.Windows.Forms.Button
       set addButton to new System.Windows.Forms.Button
       set label7 to new System.Windows.Forms.Label
       set studentMiddleName to new System.Windows.Forms.TextBox
       set label6 to new System.Windows.Forms.Label
       set studentGenderFemale to new System.Windows.Forms.RadioButton
       set studentGenderMale to new System.Windows.Forms.RadioButton
       set studentDOB to new System.Windows.Forms.DateTimePicker
       set studentFirstName to new System.Windows.Forms.TextBox
       set studentLastName to new System.Windows.Forms.TextBox
       set label5 to new System.Windows.Forms.Label
       set label4 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set eventLog1 to new System.Diagnostics.EventLog
       set deleteButton to new System.Windows.Forms.Button
       set findButton to new System.Windows.Forms.Button
       set exitButton to new System.Windows.Forms.Button
       invoke groupBox1::SuspendLayout
       invoke eventLog1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> button1
      *> 
       set button1::FlatStyle to type System.Windows.Forms.FlatStyle::System
       set button1::Location to new System.Drawing.Point(573 31)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(79 25)
       set button1::TabIndex to 0
       set button1::Text to "SayHello"
       set button1::UseVisualStyleBackColor to True
      *> 
      *> studentId
      *> 
       set studentId::Location to new System.Drawing.Point(138 19)
       set studentId::MaxLength to 6
       set studentId::Name to "studentId"
       set studentId::Size to new System.Drawing.Size(48 20)
       set studentId::TabIndex to 1
      *> 
      *> groupBox1
      *> 
       invoke groupBox1::Controls::Add(label8)
       invoke groupBox1::Controls::Add(label1)
       invoke groupBox1::Controls::Add(courseId)
       invoke groupBox1::Controls::Add(label7)
       invoke groupBox1::Controls::Add(studentMiddleName)
       invoke groupBox1::Controls::Add(label6)
       invoke groupBox1::Controls::Add(studentGenderFemale)
       invoke groupBox1::Controls::Add(studentGenderMale)
       invoke groupBox1::Controls::Add(studentDOB)
       invoke groupBox1::Controls::Add(studentFirstName)
       invoke groupBox1::Controls::Add(studentLastName)
       invoke groupBox1::Controls::Add(label5)
       invoke groupBox1::Controls::Add(label4)
       invoke groupBox1::Controls::Add(label3)
       invoke groupBox1::Controls::Add(studentId)
       set groupBox1::Location to new System.Drawing.Point(12 17)
       set groupBox1::Name to "groupBox1"
       set groupBox1::Size to new System.Drawing.Size(516 241)
       set groupBox1::TabIndex to 2
       set groupBox1::TabStop to False
       set groupBox1::Text to "Student Info"
      *> 
      *> label8
      *> 
       set label8::AutoSize to True
       set label8::Location to new System.Drawing.Point(42 22)
       set label8::Name to "label8"
       set label8::Size to new System.Drawing.Size(58 13)
       set label8::TabIndex to 19
       set label8::Text to "Student ID"
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(321 22)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(54 13)
       set label1::TabIndex to 18
       set label1::Text to "Course ID"
      *> 
      *> courseId
      *> 
       set courseId::Location to new System.Drawing.Point(381 19)
       set courseId::MaxLength to 4
       set courseId::Name to "courseId"
       set courseId::Size to new System.Drawing.Size(33 20)
       set courseId::TabIndex to 17
      *> 
      *> clearButton
      *> 
       set clearButton::FlatStyle to type System.Windows.Forms.FlatStyle::System
       set clearButton::Location to new System.Drawing.Point(573 190)
       set clearButton::Name to "clearButton"
       set clearButton::Size to new System.Drawing.Size(79 25)
       set clearButton::TabIndex to 16
       set clearButton::Text to "Clear"
       set clearButton::UseVisualStyleBackColor to True
      *> 
      *> addButton
      *> 
       set addButton::FlatStyle to type System.Windows.Forms.FlatStyle::System
       set addButton::Location to new System.Drawing.Point(573 69)
       set addButton::Name to "addButton"
       set addButton::Size to new System.Drawing.Size(79 25)
       set addButton::TabIndex to 4
       set addButton::Text to "Add"
       set addButton::UseVisualStyleBackColor to True
      *> 
      *> label7
      *> 
       set label7::AutoSize to True
       set label7::Location to new System.Drawing.Point(42 113)
       set label7::Name to "label7"
       set label7::Size to new System.Drawing.Size(69 13)
       set label7::TabIndex to 15
       set label7::Text to "Middle Name"
      *> 
      *> studentMiddleName
      *> 
       set studentMiddleName::Location to new System.Drawing.Point(138 110)
       set studentMiddleName::MaxLength to 10
       set studentMiddleName::Name to "studentMiddleName"
       set studentMiddleName::Size to new System.Drawing.Size(69 20)
       set studentMiddleName::TabIndex to 14
       set studentMiddleName::WordWrap to False
      *> 
      *> label6
      *> 
       set label6::AutoSize to True
       set label6::Location to new System.Drawing.Point(42 195)
       set label6::Name to "label6"
       set label6::Size to new System.Drawing.Size(42 13)
       set label6::TabIndex to 13
       set label6::Text to "Gender"
      *> 
      *> studentGenderFemale
      *> 
       set studentGenderFemale::AutoSize to True
       set studentGenderFemale::Location to new System.Drawing.Point(192 193)
       set studentGenderFemale::Name to "studentGenderFemale"
       set studentGenderFemale::Size to new System.Drawing.Size(59 17)
       set studentGenderFemale::TabIndex to 12
       set studentGenderFemale::TabStop to True
       set studentGenderFemale::Text to "Female"
       set studentGenderFemale::UseVisualStyleBackColor to True
      *> 
      *> studentGenderMale
      *> 
       set studentGenderMale::AutoSize to True
       set studentGenderMale::Location to new System.Drawing.Point(138 193)
       set studentGenderMale::Name to "studentGenderMale"
       set studentGenderMale::Size to new System.Drawing.Size(48 17)
       set studentGenderMale::TabIndex to 11
       set studentGenderMale::TabStop to True
       set studentGenderMale::Text to "Male"
       set studentGenderMale::UseVisualStyleBackColor to True
      *> 
      *> studentDOB
      *> 
       set studentDOB::Location to new System.Drawing.Point(138 151)
       set studentDOB::Name to "studentDOB"
       set studentDOB::Size to new System.Drawing.Size(200 20)
       set studentDOB::TabIndex to 10
      *> 
      *> studentFirstName
      *> 
       set studentFirstName::Location to new System.Drawing.Point(138 79)
       set studentFirstName::MaxLength to 10
       set studentFirstName::Name to "studentFirstName"
       set studentFirstName::Size to new System.Drawing.Size(69 20)
       set studentFirstName::TabIndex to 9
       set studentFirstName::WordWrap to False
      *> 
      *> studentLastName
      *> 
       set studentLastName::Location to new System.Drawing.Point(138 49)
       set studentLastName::MaxLength to 15
       set studentLastName::Name to "studentLastName"
       set studentLastName::Size to new System.Drawing.Size(100 20)
       set studentLastName::TabIndex to 8
       set studentLastName::WordWrap to False
      *> 
      *> label5
      *> 
       set label5::AutoSize to True
       set label5::Location to new System.Drawing.Point(42 52)
       set label5::Name to "label5"
       set label5::Size to new System.Drawing.Size(58 13)
       set label5::TabIndex to 6
       set label5::Text to "Last Name"
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Location to new System.Drawing.Point(42 82)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(57 13)
       set label4::TabIndex to 5
       set label4::Text to "First Name"
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Location to new System.Drawing.Point(42 157)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(54 13)
       set label3::TabIndex to 4
       set label3::Text to "Birth Date"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(75 235)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(58 13)
       set label2::TabIndex to 3
       set label2::Text to "Student ID"
      *> 
      *> eventLog1
      *> 
       set eventLog1::SynchronizingObject to self
      *> 
      *> deleteButton
      *> 
       set deleteButton::FlatStyle to type System.Windows.Forms.FlatStyle::System
       set deleteButton::Location to new System.Drawing.Point(573 109)
       set deleteButton::Name to "deleteButton"
       set deleteButton::Size to new System.Drawing.Size(79 25)
       set deleteButton::TabIndex to 17
       set deleteButton::Text to "Delete"
       set deleteButton::UseVisualStyleBackColor to True
      *> 
      *> findButton
      *> 
       set findButton::FlatStyle to type System.Windows.Forms.FlatStyle::System
       set findButton::Location to new System.Drawing.Point(573 149)
       set findButton::Name to "findButton"
       set findButton::Size to new System.Drawing.Size(79 25)
       set findButton::TabIndex to 18
       set findButton::Text to "Find"
       set findButton::UseVisualStyleBackColor to True
      *> 
      *> exitButton
      *> 
       set exitButton::FlatStyle to type System.Windows.Forms.FlatStyle::System
       set exitButton::Location to new System.Drawing.Point(573 229)
       set exitButton::Name to "exitButton"
       set exitButton::Size to new System.Drawing.Size(79 25)
       set exitButton::TabIndex to 19
       set exitButton::Text to "Exit"
       set exitButton::UseVisualStyleBackColor to True
      *> 
      *> Form1
      *> 
       set self::ClientSize to new System.Drawing.Size(736 310)
       invoke self::Controls::Add(exitButton)
       invoke self::Controls::Add(findButton)
       invoke self::Controls::Add(deleteButton)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(label2)
       invoke self::Controls::Add(addButton)
       invoke self::Controls::Add(clearButton)
       set self::Name to "Form1"
       set self::Text to "Hello World"
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
       invoke eventLog1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke self::ResumeLayout(False)
       invoke self::PerformLayout
       end method.

      *> Clean up any resources being used.      
       method-id Dispose override protected.
       procedure division using by value disposing as condition-value.
           if disposing then
             if components not = null then
               invoke components::Dispose()
             end-if
           end-if
           invoke super::Dispose(by value disposing)
           goback.           
       end method.

       end class.
