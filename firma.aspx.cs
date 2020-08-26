using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class firma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kadi"] == null)
            Response.Redirect("uyegiris.aspx");

        if (!IsPostBack)
        {
            yukle();
        }
        if (IsPostBack)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "hash", "location.hash = '#" + sira + "';", true);
        }
    }
    void yukle()
    {
        string sql = "select * from  firma";
        DataTable dt = new DataTable();
        dt = verim.slccalis(sql);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();


    }

    static string sira;
    static string sira2;
    

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        LinkButton lnkUpdate = (LinkButton)e.Item.FindControl("lnkUpdate");
        LinkButton lnkCancel = (LinkButton)e.Item.FindControl("lnkCancel");
        LinkButton lnkEdit = (LinkButton)e.Item.FindControl("lnkEdit");
        LinkButton lnkDelete = (LinkButton)e.Item.FindControl("lnkDelete");
        LinkButton lnkInsert = (LinkButton)e.Item.FindControl("lnkInsert");
        LinkButton lnkSave = (LinkButton)e.Item.FindControl("lnkSave");
        LinkButton lnkCancel2 = (LinkButton)e.Item.FindControl("lnkCancel2");

        Label Label1 = (Label)e.Item.FindControl("Label1");
        Label Label2 = (Label)e.Item.FindControl("Label2");

        TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1");
        TextBox TextBox2 = (TextBox)e.Item.FindControl("TextBox2");
        //TextBox TextBox3 = (TextBox)e.Item.FindControl("TextBox3");
        //TextBox TextBox4 = (TextBox)e.Item.FindControl("TextBox4");

        sira = lnkEdit.CommandArgument.ToString();
        sira2 = lnkUpdate.CommandArgument.ToString();
        /*if (e.CommandName == "lnkCancel2")
        {
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            lnkSave.Visible = false;
            lnkCancel2.Visible = false;
        }*/
        
        if (e.CommandName == "edit")
        {
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox1.Visible = true;
            TextBox2.Visible = true;

            lnkCancel.Visible = true;
            lnkUpdate.Visible = true;
            lnkEdit.Visible = false;
        }
        if (e.CommandName == "cancel")
        {
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = false;
            TextBox2.Visible = false;

            lnkCancel.Visible = false;
            lnkUpdate.Visible = false;
            lnkEdit.Visible = true;
        }
        if (e.CommandName == "delete")
        {
            string sql = "DELETE FROM firma WHERE fid=" + sira;
            string msg = verim.komut(sql);
            yukle();
        }
        if (e.CommandName == "update")
        {
            string sql = "update firma set fAdi='" + TextBox1.Text + "', fKodu='" + TextBox2.Text + "' where fid=" + sira2;
            string msg = verim.komut(sql);
            yukle();
        }
        if (e.CommandName == "save")
        {
            //string sql = "insert into firma (fAdi, fKodu) VALUES('"+ TextBox3.Text + "', '"+ TextBox4.Text +"')";
            //string msg = verim.komut(sql);
            //yukle();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string sql = "insert into firma (fAdi, fKodu) VALUES('" + TextBox3.Text + "', '" + TextBox4.Text + "')";
        string msg = verim.komut(sql);
        yukle();
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}