using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kullaniciguncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
            Response.Redirect("uyegiris.aspx");
        setVisible(false);
        
    }

    private void setVisible(bool v)
    {
        TextBox1.Enabled = v;
        TextBox2.Enabled = v;
        TextBox3.Enabled = v;
        TextBox5.Enabled = v;
        TextBox6.Enabled = v;
        TextBox7.Enabled = v;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        setVisible(true);
    }
    string kadi, sifre, adi, soyadi, sor, up, yol, mail, telefon;
    protected void Button1_Click(object sender, EventArgs e)
    {
        kadi = TextBox7.Text;
        sifre = TextBox1.Text;
        adi = TextBox2.Text;
        soyadi = TextBox3.Text;
        mail = TextBox5.Text;
        telefon = TextBox6.Text;
        up = "update kullanicilar set sifre='" + sifre + "',adi='" + adi + "',soyadi='" + soyadi + "',mail='" + mail + "',telefon='" + telefon + "' where kadi='" + kadi + "'";
        string msg5 = verim.komut(up);
        if (msg5 == "")
            Label2.Text = "güncellendi";
        else
            Label2.Text = msg5;
    }
}