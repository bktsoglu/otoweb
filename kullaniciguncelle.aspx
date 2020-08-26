<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="kullaniciguncelle.aspx.cs" Inherits="kullaniciguncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style4">
        <tr>
            <td>
                Kulanıcı Adı:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Ara" CssClass="butonumGenel" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <br />
    <table class="style4">
        <tr>
            <td class="auto-style1">
                Kulanıcı Adı:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Şifre:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Adı:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Soyadı:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Mail:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                Telefon:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Numaranızı Başında &quot;0&quot; Olacak Şekilde Boşluksuz Yazınız" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" CssClass="butonumGenel" />
            </td>
        </tr>
    </table>
</asp:Content>

