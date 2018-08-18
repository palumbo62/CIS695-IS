       class-id StudentAdmin.Form1 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id button1_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       end class.
