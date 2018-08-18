       class-id StudentAdmin.Form1
                 is partial inherits type System.Windows.Forms.Form.

       01 button1 type System.Windows.Forms.Button.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set button1 to new System.Windows.Forms.Button
       invoke self::SuspendLayout
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(273 109)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(75 23)
       set button1::TabIndex to 0
       set button1::Text to "button1"
       set button1::UseVisualStyleBackColor to True
       invoke button1::add_Click(new System.EventHandler(self::button1_Click))
      *> 
      *> Form1
      *> 
       set self::ClientSize to new System.Drawing.Size(876 523)
       invoke self::Controls::Add(button1)
       set self::Name to "Form1"
       set self::Text to "Form1"
       invoke self::ResumeLayout(False)
       end method.

      *> Clean up any resources being used.
       method-id Dispose override is protected.
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
