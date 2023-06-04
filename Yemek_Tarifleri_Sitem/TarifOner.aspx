<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            background-color: #CCFFFF;
            margin-left: 109px;
        }
    .auto-style20 {
        height: 23px;
        text-align: left;
    }
    .auto-style21 {
        height: 41px;
    }
    .auto-style22 {
        text-align: right;
    }
    .auto-style23 {
        height: 23px;
        text-align: right;
    }
        .auto-style25 {
            height: 41px;
            color: #000000;
            text-align: right;
            background-color: #7FFFD4;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style18">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Malzemeler:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="70px" TextMode="MultiLine" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Yapılış:</td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox4" runat="server" Width="400px" Height="160px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Tarif Öneren:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Email" Width="400px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" CssClass="tb5" Text="Tarif Öner" Width="181px" background-color="white" Height="37px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

