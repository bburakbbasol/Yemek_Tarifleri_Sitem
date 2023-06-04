<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDüzenle.aspx.cs" Inherits="YemekDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
    .auto-style24 {
        width: 100%;
    }
    .auto-style26 {
        width: 117px;
    }
    .auto-style27 {
        margin-left: 4px;
    }
    .auto-style28 {
        width: 117px;
        text-align: right;
    }
    .auto-style29 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FF0066;
        }
    .auto-style30 {
        text-align: left;
    }
        .auto-style31 {
            width: 117px;
            text-align: right;
            height: 26px;
        }
        .auto-style32 {
            height: 26px;
        }
        .auto-style33 {
            width: 117px;
            height: 61px;
        }
        .auto-style34 {
            text-align: left;
            height: 61px;
        }
        .auto-style35 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
    <tr>
        <td class="auto-style26">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Yemek Ad:</strong></td>
        <td class="auto-style30">
            <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="404px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="131px" TextMode="MultiLine" Width="406px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Tarif:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="162px" TextMode="MultiLine" Width="404px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Resim:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="407px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style31"><strong>Kategori:</strong></td>
        <td class="auto-style32">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style27" Height="34px" Width="401px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style33"></td>
        <td class="auto-style34"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style29" Height="38px" Text="Güncelle" Width="202px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style35" Height="38px" Text="Günün Yemeği Seç" Width="206px" OnClick="Button2_Click" />
            <br />
            </strong></td>
    </tr>
</table>
</asp:Content>

