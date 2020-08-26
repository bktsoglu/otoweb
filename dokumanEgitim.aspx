<%@ Page Title="" Language="C#" MasterPageFile="~/ben.master" AutoEventWireup="true" CodeFile="dokumanEgitim.aspx.cs" Inherits="dokumanEgitim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="PanelPDF" runat="server">





        <table style="height: 496px; width: 544px;" border="1" align="center">

            <tbody>

                <tr style="height: 100px;">

                    <td style="width: 795px; height: 100px;" colspan="3">Eğitim Konusu:<asp:TextBox ID="textEgitim" runat="server"></asp:TextBox>

                        <asp:Label ID="labelEgitim" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">Eğitmen Ad Soyad:</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="textEgitmenAdSoyad" runat="server"></asp:TextBox>

                        <asp:Label ID="labelEgitmenAdSoyad" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">Eğitim Tarihi:</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="textEgitimTarih" runat="server"></asp:TextBox>

                        <asp:Label ID="labelEgitimTarih" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">Eğitim Süresi(DK):</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="textEgitimSuresi" runat="server"></asp:TextBox>

                        <asp:Label ID="labelEgitimSuresi" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 795px; height: 13px; text-align: center;" colspan="3">KATILIMCILAR</td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">1</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim1" runat="server"></asp:TextBox>
                        <asp:Label ID="labelKatilim1" runat="server" Visible="False"></asp:Label>
                    </td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">2</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim2" runat="server"></asp:TextBox><asp:Label ID="labelKatilim2" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">3</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim3" runat="server"></asp:TextBox><asp:Label ID="labelKatilim3" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">4</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim4" runat="server"></asp:TextBox><asp:Label ID="labelKatilim4" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">5</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim5" runat="server"></asp:TextBox><asp:Label ID="labelKatilim5" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">6</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim6" runat="server"></asp:TextBox><asp:Label ID="labelKatilim6" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">7</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim7" runat="server"></asp:TextBox><asp:Label ID="labelKatilim7" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">8</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim8" runat="server"></asp:TextBox><asp:Label ID="labelKatilim8" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">9</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim9" runat="server"></asp:TextBox><asp:Label ID="labelKatilim9" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">10</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim10" runat="server"></asp:TextBox><asp:Label ID="labelKatilim10" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">11</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim11" runat="server"></asp:TextBox><asp:Label ID="labelKatilim11" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">12</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim12" runat="server"></asp:TextBox><asp:Label ID="labelKatilim12" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">13</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim13" runat="server"></asp:TextBox><asp:Label ID="labelKatilim13" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">14</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim14" runat="server"></asp:TextBox><asp:Label ID="labelKatilim14" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">15</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim15" runat="server"></asp:TextBox><asp:Label ID="labelKatilim15" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">16</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim16" runat="server"></asp:TextBox><asp:Label ID="labelKatilim16" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">17</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim17" runat="server"></asp:TextBox><asp:Label ID="labelKatilim17" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">18</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim18" runat="server"></asp:TextBox><asp:Label ID="labelKatilim18" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">19</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim19" runat="server"></asp:TextBox><asp:Label ID="labelKatilim19" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 13px;">

                    <td style="width: 265px; height: 13px;">20</td>

                    <td style="width: 530px; height: 13px;" colspan="2">
                        <asp:TextBox ID="katilim20" runat="server"></asp:TextBox><asp:Label ID="labelKatilim20" runat="server" Visible="False"></asp:Label></td>

                </tr>

                <tr style="height: 100px;">

                    <td style="width: 265px; height: 50px;">
                        <br /> 
                        İMZA 1<br />
                    </td>

                    <td style="width: 265px; height: 50px;">
                        <br />
                        İMZA 2<br />
                    </td>

                    <td style="width: 265px; height: 50px;">
                        <br />
                        İMZA 3<br />
                    </td>

                </tr>

            </tbody>

        </table>

    </asp:Panel>

    <asp:Button ID="Button1" runat="server" Text="Print" OnClick="Button1_Click" />
</asp:Content>

