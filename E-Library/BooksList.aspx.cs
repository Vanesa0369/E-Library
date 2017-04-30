using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library
{
    public partial class BooksList : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            string[] fileBreak = FileUpload1.FileName.Split(new char[] { '.' });
            if (!FileUpload1.HasFile)
            {
                Label1.Text = "Изберете файл";
            }
            else if(fileBreak[1].ToUpper() !="JPG")
            {
                Label1.Text = "Файлът трябва да е JPG";}
            else if (FileUpload1.PostedFile.ContentLength > 100000)
            {
                Label1.Text = "Файлът трябва да е под 100KB.";}

            else
            {
                FileUpload1.SaveAs(Server.MapPath("./BookPictures/") + FileUpload1.FileName);
                Label1.Text = "<b>Файлът е добавен</br><br/>";
                Label1.Text += "Име:" +FileUpload1.FileName + "</br>";
                Label1.Text +=  "Размер:" +FileUpload1.FileName + "</br>";
            }


        }
    }
}