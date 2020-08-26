using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["kadi"] == null)
            Response.Redirect("uyegiris.aspx");

        FrameLiteral.Text = GetFrameContent(2);
        /*
        string path = @"C:\Users\İBRAHİM\Desktop\";
        string[] files = Directory.GetFiles(path);
        foreach (string file in files)
        {
            denemeLabel.Text += " "+Path.GetFileName(file);
        }*/

    }
    private string GetFrameContent(int arg)
    {
        string filename = (arg == 1) ? "deneme123.html" : "kalan dersler 27.01.2020.txt";
        //string path = Server.MapPath("./"+filename);
        string path = @"C:\Users\İBRAHİM\Desktop\"+filename;
        string content = System.IO.File.ReadAllText(path);

        return content;
    }
}