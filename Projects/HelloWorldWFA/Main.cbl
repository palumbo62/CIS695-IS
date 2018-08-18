       class-id StudentAdmin.Main.
       
       method-id Main static
           attribute System.STAThread.
       local-storage section.
       01 mainForm type StudentAdmin.mainFormControl.
       procedure division.
       
           set mainForm to new StudentAdmin.mainFormControl()
           invoke type System.Windows.Forms.Application::EnableVisualStyles()
           invoke type System.Windows.Forms.Application::Run(mainForm)
           goback.
       
       end method.
       
       end class.
