using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kullaniciekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
            Response.Redirect("uyegiris.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Random rnd = new Random();
        int sayi = 2;//rnd.Next(3000) + 3000;
        string kadi, sifre, adi, soyadi, sor, ekle, msg;
        DataTable dt = new DataTable();
        kadi = TextBox1.Text;
        sifre = TextBox2.Text;
        adi = TextBox4.Text;
        soyadi = TextBox5.Text;
        String mail2 = TextBox6.Text;
        String telefon = TextBox7.Text;
        sor = "select * from kullanicilar where kadi='" + kadi + "'";
        ekle = "insert into kullanicilar(kadi,sifre,adi,soyadi,mail,telefon,onay,sayi) Values('" + kadi + "','" + sifre + "','" + adi + "','" + soyadi + "','" + mail2 + "','" + telefon + "',1," + sayi + " )";
        dt = verim.slccalis(sor);
        if (dt.Rows.Count == 0)
        {
            msg = verim.komut(ekle);
            if (msg == "")
                Label3.Text = "Kullanıcı Sisteme Eklendi";
        }
        else
            Label3.Text = " Girdiğiniz kriterlerde kullanıcı mevcut! Bilgileri kontrol edin.";
    }
}