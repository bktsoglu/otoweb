<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="firma.aspx.cs" Inherits="firma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="table">
             <thead class="thead-dark" >
                <tr> 
                    <th scope="col">Firma Adı</th>
                    <th scope="col">Firma Kodu</th> 
                    <th scope="col"></th> 
                </tr>
                 
            </thead>
                <tr> 
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td> 
                    <td><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Firma Ekle</asp:LinkButton></td> 
                </tr>
     </table>
 <br/>
 <br/>
    <asp:Repeater ID="Repeater1" runat="server"
        OnItemCommand="Repeater1_ItemCommand">

        <HeaderTemplate>
            <table class="table">
             <thead class="thead-dark">
                <tr> 
                    <th scope="col">Firma Adı</th>
                    <th scope="col">Firma Kodu</th> 
                    <th scope="col">İşlem</th> 
                </tr>
                 
            </thead>

        </HeaderTemplate>
        <ItemTemplate>
            
            <tr>

                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("fAdi") %>'></asp:Label>

                    <asp:TextBox ID="TextBox1" Text='<%#Eval("fAdi") %>' runat="server" Width="60px" Visible="false"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("fKodu") %>'></asp:Label>


                    <asp:TextBox ID="TextBox2" Text='<%#Eval("fKodu") %>' runat="server" Width="60px" Visible="false"></asp:TextBox>

                </td>

                <td>
                    
                    <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" CommandArgument='<%# Eval("fid") %>'> Düzenle</asp:LinkButton>
                    <asp:LinkButton Visible="false" ID="lnkUpdate" runat="server" CommandName="update" CommandArgument='<%# Eval("fid") %>'>GÜNCELLE</asp:LinkButton>
                    <asp:LinkButton Visible="false" ID="lnkCancel" runat="server" CommandName="cancel" CommandArgument='<%# Eval("fid") %>'>İPTAL</asp:LinkButton>
                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" OnClientClick='javascript:return confirm("SİLMEK İSTEDİĞİNİZDEN EMİNMİSİNİZ?")' CommandArgument='<%# Eval("fid") %>'>SİL</asp:LinkButton>


                </td>
            </tr>

        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

