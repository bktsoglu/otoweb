<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="guncelle.aspx.cs" Inherits="guncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table>
        <tr>
            <td>
                Kulanıcı Adı:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Şifre:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Şifre Tekrar:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox4" ErrorMessage="Şifreler Uyuşmuyor"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                Adı:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Soyadı:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Mail:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Telefon:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Numaranızı Başında &quot;0&quot; Olacak Şekilde Boşluksuz Yazınız" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" CssClass="butonumGenel" />
            </td>
        </tr>
    </table>
</asp:Content>

