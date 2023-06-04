<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            height: 23px;
        }
        .auto-style26 {
            height: 26px;
        }
        .auto-style27 {
            height: 26px;
            text-align: right;
            width: 167px;
        }
        .auto-style28 {
            text-align: right;
            width: 167px;
        }
        .auto-style29 {
            height: 23px;
            width: 167px;
        }
        .auto-style30 {
            width: 167px;
        }
        .auto-style31 {
            text-align: right;
        }
        .auto-style32 {
            margin-left: 0px;
        }
    .auto-style33 {
        height: 23px;
        font-size: x-large;
        text-align: center;
        color: #FF9900;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style33" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style27">Ad Soyad:</td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox1" runat="server" Width="422px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="422px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Konu:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="422px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28">Mesaj:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="107px" TextMode="MultiLine" Width="422px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style31">
                <asp:Button ID="Button1" runat="server" CssClass="tb5" Height="45px" Text="GÖNDER" Width="108px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

