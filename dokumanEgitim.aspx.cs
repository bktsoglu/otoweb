using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.HtmlControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Text.RegularExpressions;


public partial class dokumanEgitim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        #region labelandtext
        labelEgitmenAdSoyad.Text = textEgitmenAdSoyad.Text;
        textEgitmenAdSoyad.Visible = false;
        labelEgitmenAdSoyad.Visible = true;
        
        labelEgitim.Text = textEgitim.Text;
        textEgitim.Visible = false;
        labelEgitim.Visible = true;

        labelEgitimTarih.Text = textEgitimTarih.Text;
        textEgitimTarih.Visible = false;
        labelEgitimTarih.Visible = true;
        
        labelEgitimSuresi.Text = textEgitimSuresi.Text;
        textEgitimSuresi.Visible = false;
        labelEgitimSuresi.Visible = true;

        labelKatilim1.Text = katilim1.Text;
        katilim1.Visible = false;
        labelKatilim1.Visible = true;

        labelKatilim2.Text = katilim2.Text;
        katilim2.Visible = false;
        labelKatilim2.Visible = true;

        labelKatilim3.Text = katilim3.Text;
        katilim3.Visible = false;
        labelKatilim3.Visible = true;

        labelKatilim4.Text = katilim4.Text;
        katilim4.Visible = false;
        labelKatilim4.Visible = true;

        labelKatilim5.Text = katilim5.Text;
        katilim5.Visible = false;
        labelKatilim5.Visible = true;

        labelKatilim6.Text = katilim6.Text;
        katilim6.Visible = false;
        labelKatilim6.Visible = true;

        labelKatilim7.Text = katilim7.Text;
        katilim7.Visible = false;
        labelKatilim7.Visible = true;

        labelKatilim8.Text = katilim8.Text;
        katilim8.Visible = false;
        labelKatilim8.Visible = true;

        labelKatilim9.Text = katilim9.Text;
        katilim9.Visible = false;
        labelKatilim9.Visible = true;

        labelKatilim10.Text = katilim10.Text;
        katilim10.Visible = false;
        labelKatilim10.Visible = true;

        labelKatilim11.Text = katilim11.Text;
        katilim11.Visible = false;
        labelKatilim11.Visible = true;

        labelKatilim12.Text = katilim12.Text;
        katilim12.Visible = false;
        labelKatilim12.Visible = true;

        labelKatilim13.Text = katilim13.Text;
        katilim13.Visible = false;
        labelKatilim13.Visible = true;

        labelKatilim14.Text = katilim14.Text;
        katilim14.Visible = false;
        labelKatilim14.Visible = true;

        labelKatilim15.Text = katilim15.Text;
        katilim15.Visible = false;
        labelKatilim15.Visible = true;

        labelKatilim16.Text = katilim16.Text;
        katilim16.Visible = false;
        labelKatilim16.Visible = true;

        labelKatilim17.Text = katilim17.Text;
        katilim17.Visible = false;
        labelKatilim17.Visible = true;

        labelKatilim18.Text = katilim18.Text;
        katilim18.Visible = false;
        labelKatilim18.Visible = true;

        labelKatilim19.Text = katilim19.Text;
        katilim19.Visible = false;
        labelKatilim19.Visible = true;

        labelKatilim20.Text = katilim20.Text;
        katilim20.Visible = false;
        labelKatilim20.Visible = true;
        #endregion

        Page p = new Page();
        HtmlForm f = new HtmlForm();
        f.Controls.Add(PanelPDF);
        p.Controls.Add(f);
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        f.Controls[0].RenderControl(htw);
        
        string content = sw.ToString();
        
        Document doc = new Document(iTextSharp.text.PageSize.A4);
        MemoryStream output = new MemoryStream();
        PdfWriter.GetInstance(doc, output);
        doc.Open();



        /*

        //List<Anchor> anc2;

        iTextSharp.text.pdf.BaseFont STF_Helvetica_Turkish = iTextSharp.text.pdf.BaseFont.CreateFont("Helvetica", "Cp1254", iTextSharp.text.pdf.BaseFont.NOT_EMBEDDED);

 

        iTextSharp.text.Font fontNormal = new iTextSharp.text.Font(STF_Helvetica_Turkish, 12, iTextSharp.text.Font.NORMAL);

 

        StringReader sr = new StringReader(sw.ToString());

        HTMLWorker htmlParser = new HTMLWorker(doc);

        htmlParser.Parse(sr);*/


        List<IElement> dizi = HTMLWorker.ParseToList(new StringReader(content), null);
        foreach (var item in dizi)
        { 
            doc.Add(item);
        }
        Font font = new Font(Font.FontFamily.HELVETICA, 14f, 1, BaseColor.BLACK);
        font.SetFamily("Arial");
        //Anchor anc = new Anchor(content, font);
        //anc.Reference = "http://www.daltinkurt.com";
        //doc.Add(anc);
        doc.Close();
        Response.Clear();
        // tarayıcıda göstermek için:
        Response.AddHeader("content-disposition", "inline;");
        // download ettirmek için:
        //Response.AddHeader("content-disposition", "attachment;filename=dosyaadi.pdf;");
        Response.ContentType = "application/pdf";
        Response.BinaryWrite(output.ToArray());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {

    }

}