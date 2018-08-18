       class-id StudentAdmin.mainFormControl is partial
                 inherits type System.Windows.Forms.Form.
       
       working-storage section.
       
       method-id NEW.
       procedure division.
           invoke self::InitializeComponent
           goback.
       end method.

       method-id Form1_Load final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id button1_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           Invoke type MessageBox::Show("Hello World!").
       end method.

       method-id textBox1_TextChanged final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id groupBox1_Enter final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id label1_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id label5_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id radioButton1_CheckedChanged final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id button2_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id button2_Click_1 final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.

       method-id label8_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.
      
       end class.
