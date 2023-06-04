<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 131px;
        }
        .auto-style26 {
            width: 131px;
            height: 26px;
            text-align: right;
        }
        .auto-style27 {
            height: 26px;
        }
        .auto-style28 {
            width: 131px;
            text-align: right;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style30 {
            color: #FFFFFF;
            font-weight: bold;
            margin-left: 0px;
            background-color: #003399;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="418px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Mail Adresi:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="419px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="95px" TextMode="MultiLine" Width="419px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="416px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style29"><strong>
               <a href="Yorumlar.aspx?"> <asp:Button ID="Button1" runat="server" CssClass="auto-style30" Height="41px" OnClick="Button1_Click" Text="Onayla" Width="138px" /></a>
                </strong></td>
        </tr>
    </table>
</asp:Content>

