       class-id StudentAdminWFA.StudentAdminForm is partial
                 inherits type System.Windows.Forms.Form.
       
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 label6 type System.Windows.Forms.Label.
       01 label5 type System.Windows.Forms.Label.
       01 label4 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 label1 type System.Windows.Forms.Label.
       01 stateLabel type System.Windows.Forms.Label.
       01 cityLabel type System.Windows.Forms.Label.
       01 addressLabel type System.Windows.Forms.Label.
       01 label7 type System.Windows.Forms.Label.
       01 groupBox2 type System.Windows.Forms.GroupBox.
       01 queryBtn type System.Windows.Forms.Button.
       01 exitBtn type System.Windows.Forms.Button.
       01 clearBtn type System.Windows.Forms.Button.
       01 deleteBtn type System.Windows.Forms.Button.
       01 addBtn type System.Windows.Forms.Button.
       01 studentStateInp type System.Windows.Forms.TextBox.
       01 studentAddressInp type System.Windows.Forms.TextBox.
       01 studentCityInp type System.Windows.Forms.TextBox.
       01 studentGenderFemaleInp type System.Windows.Forms.RadioButton.
       01 studentGenderMaleInp type System.Windows.Forms.RadioButton.
       01 studentSsnInp type System.Windows.Forms.TextBox.
       01 studentMiddleNameInp type System.Windows.Forms.TextBox.
       01 studentFirstNameInp type System.Windows.Forms.TextBox.
       01 studentLastNameInp type System.Windows.Forms.TextBox.
       01 studentIdInp type System.Windows.Forms.TextBox.
       01 studentDateOfBirthInp type System.Windows.Forms.DateTimePicker.
       01 button1 type System.Windows.Forms.Button.
       01 label8 type System.Windows.Forms.Label.
       01 groupBox3 type System.Windows.Forms.GroupBox.
       01 groupBox4 type System.Windows.Forms.GroupBox.
       01 studentZipCodeInp type System.Windows.Forms.TextBox.
       01 components type System.ComponentModel.IContainer.
      
      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set queryBtn to new System.Windows.Forms.Button
       set exitBtn to new System.Windows.Forms.Button
       set clearBtn to new System.Windows.Forms.Button
       set deleteBtn to new System.Windows.Forms.Button
       set addBtn to new System.Windows.Forms.Button
       set groupBox1 to new System.Windows.Forms.GroupBox
       set label8 to new System.Windows.Forms.Label
       set studentZipCodeInp to new System.Windows.Forms.TextBox
       set studentGenderFemaleInp to new System.Windows.Forms.RadioButton
       set studentGenderMaleInp to new System.Windows.Forms.RadioButton
       set label7 to new System.Windows.Forms.Label
       set studentStateInp to new System.Windows.Forms.TextBox
       set stateLabel to new System.Windows.Forms.Label
       set cityLabel to new System.Windows.Forms.Label
       set studentAddressInp to new System.Windows.Forms.TextBox
       set studentCityInp to new System.Windows.Forms.TextBox
       set studentDateOfBirthInp to new System.Windows.Forms.DateTimePicker
       set studentSsnInp to new System.Windows.Forms.TextBox
       set studentMiddleNameInp to new System.Windows.Forms.TextBox
       set studentFirstNameInp to new System.Windows.Forms.TextBox
       set studentLastNameInp to new System.Windows.Forms.TextBox
       set studentIdInp to new System.Windows.Forms.TextBox
       set addressLabel to new System.Windows.Forms.Label
       set label6 to new System.Windows.Forms.Label
       set label5 to new System.Windows.Forms.Label
       set label4 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set label1 to new System.Windows.Forms.Label
       set groupBox3 to new System.Windows.Forms.GroupBox
       set groupBox4 to new System.Windows.Forms.GroupBox
       set groupBox2 to new System.Windows.Forms.GroupBox
       set button1 to new System.Windows.Forms.Button
       invoke groupBox1::SuspendLayout
       invoke groupBox2::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> queryBtn
      *> 
       set queryBtn::Location to new System.Drawing.Point(47 32)
       set queryBtn::Name to "queryBtn"
       set queryBtn::Size to new System.Drawing.Size(75 23)
       set queryBtn::TabIndex to 0
       set queryBtn::Text to "Query"
       set queryBtn::UseVisualStyleBackColor to True
       invoke queryBtn::add_Click(new System.EventHandler(self::queryBtn_Click))
      *> 
      *> exitBtn
      *> 
       set exitBtn::Location to new System.Drawing.Point(47 277)
       set exitBtn::Name to "exitBtn"
       set exitBtn::Size to new System.Drawing.Size(75 23)
       set exitBtn::TabIndex to 5
       set exitBtn::Text to "Exit"
       set exitBtn::UseVisualStyleBackColor to True
       invoke exitBtn::add_Click(new System.EventHandler(self::button2_Click))
      *> 
      *> clearBtn
      *> 
       set clearBtn::Location to new System.Drawing.Point(47 214)
       set clearBtn::Name to "clearBtn"
       set clearBtn::Size to new System.Drawing.Size(75 23)
       set clearBtn::TabIndex to 4
       set clearBtn::Text to "Clear"
       set clearBtn::UseVisualStyleBackColor to True
       invoke clearBtn::add_Click(new System.EventHandler(self::clearBtn_Click))
      *> 
      *> deleteBtn
      *> 
       set deleteBtn::Location to new System.Drawing.Point(47 170)
       set deleteBtn::Name to "deleteBtn"
       set deleteBtn::Size to new System.Drawing.Size(75 23)
       set deleteBtn::TabIndex to 3
       set deleteBtn::Text to "Delete"
       set deleteBtn::UseVisualStyleBackColor to True
      *> 
      *> addBtn
      *> 
       set addBtn::Location to new System.Drawing.Point(47 80)
       set addBtn::Name to "addBtn"
       set addBtn::Size to new System.Drawing.Size(75 23)
       set addBtn::TabIndex to 1
       set addBtn::Text to "Add"
       set addBtn::UseVisualStyleBackColor to True
       invoke addBtn::add_Click(new System.EventHandler(self::addBtn_Click))
      *> 
      *> groupBox1
      *> 
       invoke groupBox1::Controls::Add(label8)
       invoke groupBox1::Controls::Add(studentZipCodeInp)
       invoke groupBox1::Controls::Add(studentGenderFemaleInp)
       invoke groupBox1::Controls::Add(studentGenderMaleInp)
       invoke groupBox1::Controls::Add(label7)
       invoke groupBox1::Controls::Add(studentStateInp)
       invoke groupBox1::Controls::Add(stateLabel)
       invoke groupBox1::Controls::Add(cityLabel)
       invoke groupBox1::Controls::Add(studentAddressInp)
       invoke groupBox1::Controls::Add(studentCityInp)
       invoke groupBox1::Controls::Add(studentDateOfBirthInp)
       invoke groupBox1::Controls::Add(studentSsnInp)
       invoke groupBox1::Controls::Add(studentMiddleNameInp)
       invoke groupBox1::Controls::Add(studentFirstNameInp)
       invoke groupBox1::Controls::Add(studentLastNameInp)
       invoke groupBox1::Controls::Add(studentIdInp)
       invoke groupBox1::Controls::Add(addressLabel)
       invoke groupBox1::Controls::Add(label6)
       invoke groupBox1::Controls::Add(label5)
       invoke groupBox1::Controls::Add(label4)
       invoke groupBox1::Controls::Add(label3)
       invoke groupBox1::Controls::Add(label2)
       invoke groupBox1::Controls::Add(label1)
       invoke groupBox1::Controls::Add(groupBox3)
       invoke groupBox1::Controls::Add(groupBox4)
       set groupBox1::Location to new System.Drawing.Point(36 46)
       set groupBox1::Name to "groupBox1"
       set groupBox1::Size to new System.Drawing.Size(411 477)
       set groupBox1::TabIndex to 0
       set groupBox1::TabStop to False
       set groupBox1::Text to "Student Info"
      *> 
      *> label8
      *> 
       set label8::AutoSize to True
       set label8::Location to new System.Drawing.Point(88 425)
       set label8::Name to "label8"
       set label8::Size to new System.Drawing.Size(50 13)
       set label8::TabIndex to 20
       set label8::Text to "ZipCode:"
      *> 
      *> studentZipCodeInp
      *> 
       set studentZipCodeInp::Location to new System.Drawing.Point(144 418)
       set studentZipCodeInp::MaxLength to 5
       set studentZipCodeInp::Name to "studentZipCodeInp"
       set studentZipCodeInp::Size to new System.Drawing.Size(48 20)
       set studentZipCodeInp::TabIndex to 24
       set studentZipCodeInp::WordWrap to False
      *> 
      *> studentGenderFemaleInp
      *> 
       set studentGenderFemaleInp::AutoSize to True
       set studentGenderFemaleInp::Location to new System.Drawing.Point(208 258)
       set studentGenderFemaleInp::Name to "studentGenderFemaleInp"
       set studentGenderFemaleInp::Size to new System.Drawing.Size(59 17)
       set studentGenderFemaleInp::TabIndex to 15
       set studentGenderFemaleInp::Text to "Female"
       set studentGenderFemaleInp::UseVisualStyleBackColor to True
      *> 
      *> studentGenderMaleInp
      *> 
       set studentGenderMaleInp::AutoSize to True
       set studentGenderMaleInp::Checked to True
       set studentGenderMaleInp::Location to new System.Drawing.Point(144 258)
       set studentGenderMaleInp::Name to "studentGenderMaleInp"
       set studentGenderMaleInp::Size to new System.Drawing.Size(48 17)
       set studentGenderMaleInp::TabIndex to 14
       set studentGenderMaleInp::TabStop to True
       set studentGenderMaleInp::Text to "Male"
       set studentGenderMaleInp::UseVisualStyleBackColor to True
      *> 
      *> label7
      *> 
       set label7::AutoSize to True
       set label7::Location to new System.Drawing.Point(93 258)
       set label7::Name to "label7"
       set label7::Size to new System.Drawing.Size(45 13)
       set label7::TabIndex to 7
       set label7::Text to "Gender:"
      *> 
      *> studentStateInp
      *> 
       set studentStateInp::Location to new System.Drawing.Point(144 389)
       set studentStateInp::MaxLength to 2
       set studentStateInp::Name to "studentStateInp"
       set studentStateInp::Size to new System.Drawing.Size(28 20)
       set studentStateInp::TabIndex to 23
       set studentStateInp::WordWrap to False
      *> 
      *> stateLabel
      *> 
       set stateLabel::AutoSize to True
       set stateLabel::Location to new System.Drawing.Point(103 396)
       set stateLabel::Name to "stateLabel"
       set stateLabel::Size to new System.Drawing.Size(35 13)
       set stateLabel::TabIndex to 9
       set stateLabel::Text to "State:"
      *> 
      *> cityLabel
      *> 
       set cityLabel::AutoSize to True
       set cityLabel::Location to new System.Drawing.Point(111 364)
       set cityLabel::Name to "cityLabel"
       set cityLabel::Size to new System.Drawing.Size(27 13)
       set cityLabel::TabIndex to 18
       set cityLabel::Text to "City:"
      *> 
      *> studentAddressInp
      *> 
       set studentAddressInp::Location to new System.Drawing.Point(144 331)
       set studentAddressInp::MaxLength to 30
       set studentAddressInp::Name to "studentAddressInp"
       set studentAddressInp::Size to new System.Drawing.Size(192 20)
       set studentAddressInp::TabIndex to 21
       set studentAddressInp::WordWrap to False
      *> 
      *> studentCityInp
      *> 
       set studentCityInp::Location to new System.Drawing.Point(144 359)
       set studentCityInp::MaxLength to 20
       set studentCityInp::Name to "studentCityInp"
       set studentCityInp::Size to new System.Drawing.Size(132 20)
       set studentCityInp::TabIndex to 22
       set studentCityInp::WordWrap to False
      *> 
      *> studentDateOfBirthInp
      *> 
       set studentDateOfBirthInp::Location to new System.Drawing.Point(144 185)
       set studentDateOfBirthInp::MinDate to new System.DateTime(1900 1 1 0 0 0 0)
       set studentDateOfBirthInp::Name to "studentDateOfBirthInp"
       set studentDateOfBirthInp::Size to new System.Drawing.Size(200 20)
       set studentDateOfBirthInp::TabIndex to 12
       set studentDateOfBirthInp::Value to new System.DateTime(2018 8 17 18 1 12 0)
       invoke studentDateOfBirthInp::add_ValueChanged(new System.EventHandler(self::dateTimePicker1_ValueChanged))
      *> 
      *> studentSsnInp
      *> 
       set studentSsnInp::Location to new System.Drawing.Point(144 221)
       set studentSsnInp::MaxLength to 9
       set studentSsnInp::Name to "studentSsnInp"
       set studentSsnInp::Size to new System.Drawing.Size(62 20)
       set studentSsnInp::TabIndex to 13
       set studentSsnInp::WordWrap to False
      *> 
      *> studentMiddleNameInp
      *> 
       set studentMiddleNameInp::Location to new System.Drawing.Point(144 153)
       set studentMiddleNameInp::MaxLength to 15
       set studentMiddleNameInp::Name to "studentMiddleNameInp"
       set studentMiddleNameInp::Size to new System.Drawing.Size(100 20)
       set studentMiddleNameInp::TabIndex to 11
       set studentMiddleNameInp::WordWrap to False
      *> 
      *> studentFirstNameInp
      *> 
       set studentFirstNameInp::Location to new System.Drawing.Point(144 117)
       set studentFirstNameInp::MaxLength to 15
       set studentFirstNameInp::Name to "studentFirstNameInp"
       set studentFirstNameInp::Size to new System.Drawing.Size(100 20)
       set studentFirstNameInp::TabIndex to 10
       set studentFirstNameInp::WordWrap to False
      *> 
      *> studentLastNameInp
      *> 
       set studentLastNameInp::Location to new System.Drawing.Point(144 83)
       set studentLastNameInp::MaxLength to 20
       set studentLastNameInp::Name to "studentLastNameInp"
       set studentLastNameInp::Size to new System.Drawing.Size(123 20)
       set studentLastNameInp::TabIndex to 9
       set studentLastNameInp::WordWrap to False
      *> 
      *> studentIdInp
      *> 
       set studentIdInp::Location to new System.Drawing.Point(144 48)
       set studentIdInp::MaxLength to 5
       set studentIdInp::Name to "studentIdInp"
       set studentIdInp::Size to new System.Drawing.Size(48 20)
       set studentIdInp::TabIndex to 8
       set studentIdInp::WordWrap to False
      *> 
      *> addressLabel
      *> 
       set addressLabel::AutoSize to True
       set addressLabel::Location to new System.Drawing.Point(90 338)
       set addressLabel::Name to "addressLabel"
       set addressLabel::Size to new System.Drawing.Size(48 13)
       set addressLabel::TabIndex to 17
       set addressLabel::Text to "Address:"
      *> 
      *> label6
      *> 
       set label6::AutoSize to True
       set label6::Location to new System.Drawing.Point(106 224)
       set label6::Name to "label6"
       set label6::Size to new System.Drawing.Size(32 13)
       set label6::TabIndex to 6
       set label6::Text to "SSN:"
       invoke label6::add_Click(new System.EventHandler(self::label6_Click))
      *> 
      *> label5
      *> 
       set label5::AutoSize to True
       set label5::Location to new System.Drawing.Point(105 192)
       set label5::Name to "label5"
       set label5::Size to new System.Drawing.Size(33 13)
       set label5::TabIndex to 5
       set label5::Text to "DOB:"
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Location to new System.Drawing.Point(66 160)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(72 13)
       set label4::TabIndex to 4
       set label4::Text to "Middle Name:"
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Location to new System.Drawing.Point(78 124)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(60 13)
       set label3::TabIndex to 3
       set label3::Text to "First Name:"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(77 90)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(61 13)
       set label2::TabIndex to 2
       set label2::Text to "Last Name:"
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(77 55)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(61 13)
       set label1::TabIndex to 1
       set label1::Text to "Student ID:"
      *> 
      *> groupBox3
      *> 
       set groupBox3::Location to new System.Drawing.Point(20 309)
       set groupBox3::Name to "groupBox3"
       set groupBox3::Size to new System.Drawing.Size(365 151)
       set groupBox3::TabIndex to 19
       set groupBox3::TabStop to False
      *> 
      *> groupBox4
      *> 
       set groupBox4::Location to new System.Drawing.Point(20 32)
       set groupBox4::Name to "groupBox4"
       set groupBox4::Size to new System.Drawing.Size(365 268)
       set groupBox4::TabIndex to 0
       set groupBox4::TabStop to False
      *> 
      *> groupBox2
      *> 
       invoke groupBox2::Controls::Add(button1)
       invoke groupBox2::Controls::Add(queryBtn)
       invoke groupBox2::Controls::Add(exitBtn)
       invoke groupBox2::Controls::Add(clearBtn)
       invoke groupBox2::Controls::Add(deleteBtn)
       invoke groupBox2::Controls::Add(addBtn)
       set groupBox2::Location to new System.Drawing.Point(471 46)
       set groupBox2::Name to "groupBox2"
       set groupBox2::Size to new System.Drawing.Size(169 351)
       set groupBox2::TabIndex to 1
       set groupBox2::TabStop to False
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(47 124)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(75 23)
       set button1::TabIndex to 2
       set button1::Text to "Update"
       set button1::UseVisualStyleBackColor to True
      *> 
      *> StudentAdminForm
      *> 
       set self::ClientSize to new System.Drawing.Size(658 549)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(groupBox2)
       set self::Name to "StudentAdminForm"
       set self::Text to "Student Admin Form"
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
       invoke groupBox2::ResumeLayout(False)
       invoke self::ResumeLayout(False)
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
