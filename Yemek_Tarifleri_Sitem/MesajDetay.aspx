<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 203px;
            text-align: right;
        }
        .auto-style26 {
            width: 203px;
            text-align: right;
            height: 23px;
        }
        .auto-style27 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Mesaj Gönderen:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox1" runat="server" Width="349px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Başlık:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="349px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="349px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Mesaj İçerek:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="73px" TextMode="MultiLine" Width="349px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

