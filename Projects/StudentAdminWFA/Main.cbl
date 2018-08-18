       class-id StudentAdminWFA.Main.
       
       method-id Main static
           attribute System.STAThread.
       local-storage section.
       01 mainForm type StudentAdminWFA.StudentAdminForm.
       procedure division.
       
           set mainForm to new StudentAdminWFA.StudentAdminForm()
           invoke type System.Windows.Forms.Application::EnableVisualStyles()
           invoke type System.Windows.Forms.Application::Run(mainForm)
           goback.
       
       end method.
       
       end class.
