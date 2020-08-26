<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="kullaniciekle.aspx.cs" Inherits="kullaniciekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> 
    <table>
    <tr>
        <td >Kullanıcı Adı:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >Şifre:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Şifre Tekrar:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Şifre uyuşmuyor"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Ad:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
        <tr>
        <td>Mail:</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Mail Adresiniz yanlış" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
        <tr>
        <td>Telefon:</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Numaranızı Başında &quot;0&quot; Olacak Şekilde Boşluksuz Yazınız" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" CssClass="butonumGenel" />
        </td>
        <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

