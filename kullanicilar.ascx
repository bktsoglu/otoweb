<%@ Control Language="C#" AutoEventWireup="true" CodeFile="kullanicilar.ascx.cs" Inherits="kullanicilar" %>
<link rel="stylesheet" type="text/css" href="css/ben.css"  />
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <div align="center">
        <table >
            <tr>
                <td>Kullanıcı Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Şifre:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" CssClass="butonumGenel" />
                </td>
            </tr>
            
        </table>
         <table class="auto-style1">
             <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                
            </tr>
             </table>
            </div>
    </asp:View>

    <asp:View ID="View2" runat="server">
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/guncelle.aspx">Bilgilerimi Güncelle</asp:LinkButton>

        </asp:View>
</asp:MultiView>

